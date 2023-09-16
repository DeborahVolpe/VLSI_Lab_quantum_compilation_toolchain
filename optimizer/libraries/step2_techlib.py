import math
import sys
import numpy as np
from scipy.spatial.transform import Rotation

sys.path.append('./')
from NULLOP_purgers import *
from QASM_precomposer import *
from step1_templates import *
from QASM_postcomposer import *
from Ugates_converter import *
from step3_cxtranslate import *

########################################################################################################
#################################### TECHNOLOGIES' LIBRARIES ###########################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "subcircuit" identifier parameter
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates
#####   - "pi", "halfpi", "quarterpi" approximated values calculated with threshold defined in .cfg file

##### Transpile circuit gates in technology's own basic gates, but doesn't touch CXs


### Function to exploit CZ symmetry in order to convert them more efficiently into CX gates

def czreadjust(lines, nq, pi, halfpi, quarterpi):

    # Preemptive translation to ease decomposed H identifying
    translator(lines, pi, halfpi, quarterpi)

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        savedidx4 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 1:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 2) or (j == 3):

                inversion = 0

                element = lines[j]

                # Check if control qubit is adjacent to decomposed H gates and target qubit isn't. If so, invert CZ gate.
                #  If both qubits are adjacent to possible H gates, choose the one with most conveient form X-RY/RY-X, since S-RX-S/Sdg-RX-Sdg form has less critical non-RZ gates.
                #  The point is having the controlled qubit adjacent to H gates to ease conversion to CX.

                closedbracket2 = saved2.find(']')
                c2 = closedbracket2 + 1

                if saved2[:c2] == ("cz "+target):

                    flag11 = checkcxswapdown(lines, saved2, target, N, savedidx2)
                    flag12 = checkcxswapdown(lines, saved2, target, N, flag11)
                    flag21 = checkcxswapup(lines, saved2, target, 3, savedidx2)
                    flag22 = checkcxswapup(lines, saved2, target, 3, flag21)

                    adj_gate11 = lines[flag11]      # Right most adjacent gate
                    adj_gate12 = lines[flag12]      # Right second most adjacent gate
                    adj_gate21 = lines[flag21]      # Left most adjacent gate
                    adj_gate22 = lines[flag22]      # Left second most adjacent gate
                    
                    ende = element.find(')')
                    end1 = saved1.find(')')
                    end3 = saved3.find(')')
                    end4 = saved4.find(')')
                    endj11 = adj_gate11.find(')')
                    endj12 = adj_gate12.find(')')
                    endj21 = adj_gate21.find(')')
                    endj22 = adj_gate22.find(')')

                    comma2 = saved2.find(',')
                    cm2 = comma2+1
                    altqubit = saved2[cm2:-1]

                    # Best case scenario: do nothing

                    if ( ( (adj_gate22[:3] == "rx(") and (adj_gate21[:endj21+1] == ("ry(-"+halfpi+")") ) ) or ( (adj_gate22[:3] == "ry(") and (adj_gate21[:2] == "x ") ) ) and ( ( (adj_gate12[:3] == "rx(") and (adj_gate11[:endj11+1] == ("ry("+halfpi+")") ) ) or ( (adj_gate12[:3] == "ry(") and (adj_gate11[:2] == "x ") ) ):
                
                        pass

                    # Certain inversion scenario

                    elif ( ( (element[:3] == "rx(") and (saved1[:end1+1] == ("ry(-"+halfpi+")") ) ) or ( (element[:3] == "ry(") and (saved1[:2] == "x ") ) ) and ( ( (saved4[:3] == "rx(") and (saved3[:end3+1] == ("ry("+halfpi+")") ) ) or ( (saved4[:3] == "ry(") and (saved3[:2] == "x ") ) ):

                        inversion = 1

                    # Evaluation scenario. Each adjacent H gate in X-RY/RY-X form scores 3 points, each adjacent H gate in S-RX-S/Sdg-RX-Sdg scores 2 points.
                    #  Otherwise, if adjacent gates that allow compaction are present make them score points, but always prioritze H gates (only 0.5 points scored).
                    #  Invert only if it is convenient to do so (controlled score > control score).

                    else:

                        controlpts = 0
                        controlledpts = 0


                        # Left side controlled - 3 pts

                        if ( ( (adj_gate22[:3] == "rx(") or (adj_gate22[:2] == "x ") ) and (adj_gate21[:endj21+1] == ("ry(-"+halfpi+")") ) ) or ( ( (adj_gate22[:2] == "y ") or (adj_gate22[:3] == "ry(") ) and (adj_gate21[:2] == "x ") ):

                            controlledpts += 3

                        # Left side controlled - 2 pts

                        elif ( (adj_gate22[:endj22+1] == ("rx("+halfpi+")") ) and (adj_gate21[:2] == "s ") ) or ( (adj_gate22[:endj22+1] == ("rx(-"+halfpi+")") ) and (adj_gate21[:4] == "sdg ") ):
                            controlledpts += 2

                        # Left side controlled - 0.5 pts

                        elif (adj_gate21[:3] == "rx(") or (adj_gate21[:3] == "ry(") or (adj_gate21[:3] == "rz(") or (adj_gate21[:2] == "x ") or (adj_gate21[:2] == "y ") or (adj_gate21[:2] == "z ") or (adj_gate21[:2] == "s ") or (adj_gate21[:2] == "t ") or (adj_gate21[:4] == "sdg ") or (adj_gate21[:4] == "tdg "):

                            controlledpts += 0.5

                        # Right side controlled - 3 pts

                        if ( ( (adj_gate12[:3] == "rx(") or (adj_gate12[:2] == "x ") ) and (adj_gate11[:endj11+1] == ("ry("+halfpi+")") ) ) or ( ( (adj_gate12[:2] == "y ") or (adj_gate12[:3] == "ry(") ) and (adj_gate11[:2] == "x ") ):

                            controlledpts += 3

                        # Right side controlled - 2 pts 

                        elif ( (adj_gate12[:endj12+1] == ("rx("+halfpi+")") ) and (adj_gate11[:2] == "s ") ) or ( (adj_gate12[:endj12+1] == ("rx(-"+halfpi+")") ) and (adj_gate11[:4] == "sdg ") ):                     
                            controlledpts += 2

                        # Right side controlled - 0.5 pts

                        elif (adj_gate11[:3] == "rx(") or (adj_gate11[:3] == "ry(") or (adj_gate11[:3] == "rz(") or (adj_gate11[:2] == "x ") or (adj_gate11[:2] == "y ") or (adj_gate11[:2] == "z ") or (adj_gate11[:2] == "s ") or (adj_gate11[:2] == "t ") or (adj_gate11[:4] == "sdg ") or (adj_gate11[:4] == "tdg "):

                            controlledpts += 0.5

                        # Left side control - 3 pts

                        if ( ( (element[:3] == "rx(") or (element[:2] == "x ") ) and (saved1[:end1+1] == ("ry(-"+halfpi+")") ) ) or ( ( (element[:3] == "ry(") or (element[:2] == "y ") )and (saved1[:2] == "x ") ):

                            controlpts += 3

                        # Left side control - 2 pts

                        elif ( (element[:ende+1] == ("rx("+halfpi+")") ) and (saved1[:2] == "s ") ) or ( (element[:ende+1] == ("rx(-"+halfpi+")") ) and (saved1[:4] == "sdg ") ):

                            controlpts += 2

                        # Left side control - 0.5 pts

                        elif (saved1[:3] == "rx(") or (saved1[:3] == "ry(") or (saved1[:3] == "rz(") or (saved1[:2] == "x ") or (saved1[:2] == "y ") or (saved1[:2] == "z ") or (saved1[:2] == "s ") or (saved1[:2] == "t ") or (saved1[:4] == "sdg ") or (saved1[:4] == "tdg "):

                            controlpts += 0.5

                        # Right side control - 3 pts

                        if ( ( (saved4[:3] == "rx(") or (saved4[:2] == "x ") ) and (saved3[:end3+1] == ("ry("+halfpi+")") ) ) or ( ( (saved4[:3] == "ry(") or (saved4[:2] == "y ") ) and (saved3[:2] == "x ") ):

                            controlpts += 3

                        # Right side control - 2 pts

                        elif ( (saved4[:end4+1] == ("rx("+halfpi+")") ) and (saved3[:2] == "s ") ) or ( (saved4[:end4+1] == ("rx(-"+halfpi+")") ) and (saved3[:4] == "sdg ") ):

                            controlpts += 2

                        # Right side control - 0.5 pts

                        elif (saved3[:3] == "rx(") or (saved3[:3] == "ry(") or (saved3[:3] == "rz(") or (saved3[:2] == "x ") or (saved3[:2] == "y ") or (saved3[:2] == "z ") or (saved3[:2] == "s ") or (saved3[:2] == "t ") or (saved3[:4] == "sdg ") or (saved3[:4] == "tdg "):

                            controlpts += 0.5


                        # Inversion evaluation

                        if controlpts > controlledpts:
    
                            inversion = 1

                # Inversion

                if inversion == 1:

                    saved2 = "cz "+altqubit+","+target+";"
                    lines[savedidx2] = saved2

                saved4 = saved3
                savedidx4 = savedidx3
                saved3 = saved2
                savedidx3 = savedidx2
                saved2 = saved1
                savedidx2 = savedidx1
                saved1 = element
                savedidx1 = j

            j -= 1


### Function to translate CZ gates into CX basic gates through CZ(i,j) = H(j) - CX(i,j) - H(j) Template

def cztocx(lines, nq, nullsum, pi, halfpi, quarterpi, subcircuit):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                transform = 0

                element = lines[j]

                # At this point each CZ is adjacent to the most convenient gates on the controlled qubit, so simply exploit the template using the most
                #  appropriate H combination to create Null Ops.

                if saved1[:3] == "cz ":

                    comma1 = saved1.find(',')
                    cm1 = comma1+1

                    if saved1[cm1:-1] == target:

                        # Right side

                        if (saved2[:4] == "sdg ") or (saved2[:4] == "rz(-") or (saved2[:4] == "tdg "):

                            lines.insert(savedidx2, "s "+target+";")
                            lines.insert(savedidx2, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "s "+target+";")

                        elif (saved2[:2] == "s ") or (saved2[:3] == "rz(") or (saved2[:2] == "t "):

                            lines.insert(savedidx2, "sdg "+target+";")
                            lines.insert(savedidx2, "rx(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "sdg "+target+";")

                        elif (saved2[:2] == "x ") or (saved2[:3] == "rx("):

                            lines.insert(savedidx2, "x "+target+";")
                            lines.insert(savedidx2, "ry(" + halfpi + ") " + target + ";")

                        elif (saved2[:2] == "y ") or (saved2[:3] == "ry("):

                            lines.insert(savedidx2, "ry(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "x "+target+";")

                        else:       # Generic case, use S-RX-S form

                            lines.insert(savedidx2, "s "+target+";")
                            lines.insert(savedidx2, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "s "+target+";")

                        # CZ to CX

                        cz = lines[savedidx1]
                        cz = "cx " + cz[3:]
                        lines[savedidx1] = cz

                        # Left side

                        if (element[:4] == "sdg ") or (element[:4] == "rz(-") or (element[:4] == "tdg "):

                            lines.insert(j+1, "s "+target+";")
                            lines.insert(j+1, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "s "+target+";")

                        elif (element[:2] == "s ") or (element[:3] == "rz(") or (element[:2] == "t "):

                            lines.insert(j+1, "sdg "+target+";")
                            lines.insert(j+1, "rx(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "sdg "+target+";")

                        elif (element[:2] == "x ") or (element[:3] == "rx("):

                            lines.insert(j+1, "ry(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "x "+target+";")

                        elif (element[:2] == "y ") or (element[:3] == "ry("):

                            lines.insert(j+1, "x "+target+";")
                            lines.insert(j+1, "ry(" + halfpi + ") " + target + ";")

                        else:       # Generic case, use S-RX-S form

                            lines.insert(j+1, "s "+target+";")
                            lines.insert(j+1, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "s "+target+";")


                        transform = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if transform == 1:      

                    nullpurge(lines, nq, nullsum)
                    finalz(lines, nq, subcircuit)
                    initialz(lines, nq, subcircuit)

                                                              # If general case, no assumptions can be made on how many gates were purged: we need
                                                              #  to find  and assign as Saved values the last three target gates before the optimized section
                    N = len(lines)
                    saved1 = "NONE"
                    saved2 = "NONE"
                    savedidx1 = N-1
                    savedidx2 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k

                else:       

                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new circuit end
                j = savedidx1
            j -= 1


### Function to compact a sequence of R gates using Euler tranformations
###     (Approximation defined by scipy library starting from input rotations approximated using Threshold 1 parameter)

def eulercombo(lines, nq, subcircuit, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        savedidx4 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            didcombo = 0

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                element = lines[j]

                # Parameters used to avoid calling ALL template functions each time

                spottedcx = 0
                spottedcz = 0
                spottedrxx = 0
                spottedrzz = 0

                ### If one of the three central gates is a CX, CZ, RXX, RZZ or not a gate, no compaction can be performed

                if (saved1[:3] == "cx ") or (saved2[:3] == "cx ") or (saved3[:3] == "cx ") or (saved1[:3] == "cz ") or (saved2[:3] == "cz ") or (saved3[:3] == "cz ") or (saved1[:4] == "rxx(") or (saved2[:4] == "rxx(") or (saved3[:4] == "rxx(") or (saved1[:4] == "rzz(") or (saved2[:4] == "rzz(") or (saved3[:4] == "rzz(") or (saved1 == "NONE") or (saved2 == "NONE") or (saved3 == "NONE"):

                    pass

                # If both sides are not suitable and no CX+RX or RXX+RX template can be exploited, don't bother (CX+Z templates are not the focus)

                elif ( (element[:4] == "rzz(") or (element[:3] == "cz ") or (j == 3) ) and ( (saved4[:4] == "rzz(") or (saved4[:3] == "cz ") or (saved4 == "NONE") ):

                    pass

                ### If none of the above, check the gates adjacent to the trio and try to manipulate the rotation in order to compact gates on both sides.
                ###   If adjacent gates are CXs, CZs, RXXs, RZZs or not gates try to combine on the suitable side.

                else:

                    start1 = saved1.find('(')
                    start2 = saved2.find('(')
                    start3 = saved3.find('(')
                    end1 = saved1.find(')')
                    end2 = saved2.find(')')
                    end3 = saved3.find(')')

                    ax1 = saved1[1]
                    ax2 = saved2[1]
                    ax3 = saved3[1]

                    r1 = float(saved1[start1+1:end1])
                    r2 = float(saved2[start2+1:end2])
                    r3 = float(saved3[start3+1:end3])

                    xopt = 0
                    yopt = 0
                    zopt = 0
                    zyzopt = 0
                    lxopt = 0
                    lyopt = 0
                    lzopt = 0
                    rxopt = 0
                    ryopt = 0
                    rzopt = 0
                    xzxopt = 0

                    cme = element.find(',')
                    cm4 = saved4.find(',')

                    # Both sides not suitable, but CX+RX and RXX+RX templates can be exploited on both sides

                    if ( ( (element[:3] == "cx ") and (element[cme+1:-1] == target) ) or (element[:4] == "rxx(") ) and ( ( (saved4[:3] == "cx ") and (saved4[cm4+1:-1] == target) ) or (saved4[:4] == "rxx(") ):

                        r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                        r = r.as_euler('xzx')
                        xzxopt = 1

                        if (element[:3] == "cx ") or (saved4[:3] == "cx "):
                            spottedcx = 1
                        if (element[:4] == "rxx(") or (saved4[:4] == "rxx("):
                            spottedrxx = 1

                        didcombo = 1
                    
                    # At least one side is suitable

                    else:

                        # Both sides suitable

                        if (element[:3] != "cx ") and (element[:3] != "cz ") and (element[:4] != "rxx(") and (element[:4] != "rzz(") and (j > 3) and (saved4[:3] != "cx ") and (saved4[:3] != "cz ") and (saved4[:4] != "rxx(") and (saved4[:4] != "rzz(") and (saved4 != "NONE"):

                            axad1 = element[1]
                            axad2 = saved4[1]

                            # Try to maximize RZ Gates by applying a Combogate - RZ - Combogate trio whenever is possible. Prefer RZ - RY - RZ when convenient to ease conversion
                            #   in Superconducting cases. Apply valid triplet otherwise.

                            if (axad1 != 'z') and (axad2 != 'z'):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler(axad1+'z'+axad2)
                                zopt = 1

                            elif (axad1 == 'z') and (axad2 == 'z'):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler('zyz')
                                zyzopt = 1

                            elif ( (axad1 == 'z') and (axad2 == 'x') ) or ( (axad1 == 'x') and (axad2 == 'z') ):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler(axad1+'y'+axad2)
                                yopt = 1

                            elif ( (axad1 == 'z') and (axad2 == 'y') ) or ( (axad1 == 'y') and (axad2 == 'z') ):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler(axad1+'x'+axad2)
                                xopt = 1

                            didcombo = 1

                        # Left side suitable

                        elif (element[:3] != "cx ") and (element[:3] != "cz ") and (element[:3] != "rxx") and (element[:3] != "rzz") and (j > 3):

                            axad1 = element[1]

                            # Try to maximize RZ Gates by applying a Combogate - RZ - RX trio whenever is possible in order to try to exploit some CX+RX template.
                            #  Apply Combogate - RX - RZ when not possible and try to exploit some CX+RZ template.
                            #  RX gates templates are preferred because their compaction affects effective circuit performances, while virtual RZs don't.
                            # If at the end of the circuit and non-subcircuit, try to exploit finalz() to eliminate a RZ.

                            if (saved4 == "NONE") and (subcircuit == 0):

                                if (axad1 == 'z') or (axad1 == 'x'):

                                    r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                    r = r.as_euler(axad1+'yz')
                                    lyopt = 1 

                                elif (axad1 == 'y'):

                                    r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                    r = r.as_euler(axad1+'xz')
                                    lzopt = 1 
                            
                            elif (axad1 != 'z'):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler(axad1+'zx')
                                lxopt = 1

                                if saved4[:4] == "rxx(":
                                    spottedrxx = 1
                                if saved4[:3] == "cx ":
                                    spottedcx = 1

                            else:

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler(axad1+'xz')
                                lzopt = 1

                                if saved4[:3] == "cx ":
                                    spottedcx = 1
                                if saved4[:3] == "cz ":
                                    spottedcz = 1
                                if saved4[:4] == "rzz(":
                                    spottedrzz = 1


                            didcombo = 1

                        # Right side suitable

                        elif (saved4[:3] != "cx ") and (saved4[:3] != "cz ") and (saved4[:3] != "rxx") and (saved4[:3] != "rzz") and (saved4 != "NONE"):

                            axad2 = saved4[1]

                            # Try to maximize RZ Gates by applying a RX - RZ - Combogate trio whenever is possible in order to try to exploit some CX+RX template.
                            #  Apply RZ - RX - Combogate when not possible and try to exploit some CX+RZ template.
                            #  RX gates templates are preferred because their compaction affects effective circuit performances, while virtual RZs don't.
                            # If at the beginning of the circuit and non-subcircuit, try to exploit initialz() to eliminate a RZ.

                            if (j == 3) and (subcircuit == 0):

                                if (axad2 == 'z') or (axad2 == 'x'):

                                    r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                    r = r.as_euler('zy'+axad2)
                                    ryopt = 1 

                                elif (axad2 == 'y'):

                                    r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                    r = r.as_euler('zx'+axad2)
                                    rzopt = 1

                            elif (axad2 != 'z'):

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler('xz'+axad2)
                                rxopt = 1

                                if element[:3] == "cx ":
                                    spottedcx = 1
                                if element[:4] == "rxx(":
                                    spottedrxx = 1

                            else:

                                r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                                r = r.as_euler('zx'+axad2)
                                rzopt = 1

                                if element[:3] == "cx ":
                                    spottedcx = 1
                                if element[:3] == "cz ":
                                    spottedcz = 1
                                if element[:4] == "rzz(":
                                    spottedrzz = 1

                            didcombo = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if didcombo == 1:

                    # Both sides not suitable, but with exploitable templates

                    if xzxopt == 1:

                        saved1 = "rx" + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rz" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "rx" + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    # Both sides suitable

                    elif xopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rx" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif yopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "ry" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif zopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rz" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif zyzopt == 1:

                        saved1 = "rz" + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "ry" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "rz" + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    # Left side suitable

                    elif lxopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rz" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "rx" + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif lyopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "ry" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "rz" + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif lzopt == 1:

                        saved1 = "r" + axad1 + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rx" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "rz" + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    # Right side suitable

                    elif rxopt == 1:

                        saved1 = "rx" + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rz" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif ryopt == 1:

                        saved1 = "rz" + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "ry" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]

                    elif rzopt == 1:

                        saved1 = "rz" + saved1[2:start1+1] + str(r[0]) + ")" + saved1[end1+1:]
                        saved2 = "rx" + saved2[2:start2+1] + str(r[1]) + ")" + saved2[end2+1:]
                        saved3 = "r" + axad2 + saved3[2:start3+1] + str(r[2]) + ")" + saved3[end3+1:]


                    lines[savedidx1] = saved1
                    lines[savedidx2] = saved2
                    lines[savedidx3] = saved3

                    # Purge of gates with a rotation parameter of '0.0' (this is used to cover the case of Gimbal Locks)

                    if str(r[2]) == "0.0":
                        lines.pop(savedidx3)
                    if str(r[1]) == "0.0":
                        lines.pop(savedidx2)                    
                    if str(r[0]) == "0.0":
                        lines.pop(savedidx1)

                    ### Optimization (using spotted parameters, which avoid calling ALL optimization templates each time)

                    nullpurge(lines, nq, nullsum)

                    if (lxopt == 1) or (rxopt == 1) or (xzxopt == 1):
                        if spottedcx == 1:
                            templ2(lines, nq, nullsum, 0)
                        if spottedrxx == 1:
                            specialtempl2(lines, nq, nullsum)

                    if (lzopt == 1) or (rzopt == 1):
                        if (spottedcx == 1) or (spottedcz == 1):
                            templ1(lines, nq, subcircuit, nullsum, 0)
                        if spottedcz == 1:                        
                            templ3(lines, nq, subcircuit, nullsum, 0)
                        if spottedrzz == 1:
                            specialtempl1(lines, nq, subcircuit, nullsum)
                        finalz(lines, nq, subcircuit)
                        initialz(lines, nq, subcircuit)

                    if (lyopt == 1):
                        finalz(lines, nq, subcircuit)

                    if (ryopt == 1): 
                        initialz(lines, nq, subcircuit)

                    ### Array rearrangement

                    # General case: no assumptions on used templates can be made, we need to find and assign as Saved values the last three target gates before the optimized section

                    N = len(lines)
                    saved1 = "NONE"
                    saved2 = "NONE"
                    saved3 = "NONE"
                    saved4 = "NONE"
                    savedidx1 = N-1
                    savedidx2 = N-1
                    savedidx3 = N-1
                    savedidx4 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k
                    for k in range(N-1,savedidx2,-1):
                        if target in lines[k]:
                            saved3 = lines[k]
                            savedidx3 = k
                    for k in range(N-1,savedidx3,-1):
                        if target in lines[k]:
                            saved4 = lines[k]
                            savedidx4 = k                 

                else:       

                    saved4 = saved3
                    savedidx4 = savedidx3
                    saved3 = saved2
                    savedidx3 = savedidx2
                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            j -= 1


### Function to transform all compacted triplets in a more convenient RZ - RY - RZ form once all Eulercombo optimizations have been applied
###     (Approximation defined by scipy library starting from input rotations approximated using Threshold 1 parameter)

def eulerzyz(lines, nq, subcircuit):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            didcombo = 0

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]):

                element = lines[j]

                ### If one of the three scanned gates is a CX, CZ, RXX, RZZ or not a gate, no compaction can be performed

                if (element[:3] == "cx ") or (saved1[:3] == "cx ") or (saved2[:3] == "cx ") or (element[:3] == "cz ") or (saved1[:3] == "cz ") or (saved2[:3] == "cz ") or (element[:4] == "rxx(") or (saved1[:4] == "rxx(") or (saved2[:4] == "rxx(") or (element[:4] == "rzz(") or (saved1[:4] == "rzz(") or (saved2[:4] == "rzz(") or (element == "NONE") or (saved1 == "NONE") or (saved2 == "NONE"):

                    pass

                ### If not, manipulate each triplet into RZ - RY - RZ form

                else:

                    starte = element.find('(')
                    start1 = saved1.find('(')
                    start2 = saved2.find('(')
                    ende = element.find(')')
                    end1 = saved1.find(')')
                    end2 = saved2.find(')')

                    ax1 = element[1]
                    ax2 = saved1[1]
                    ax3 = saved2[1]

                    r1 = float(element[starte+1:ende])
                    r2 = float(saved1[start1+1:end1])
                    r3 = float(saved2[start2+1:end2])

                    r = Rotation.from_euler(ax1+ax2+ax3, np.array([r1,r2,r3]))
                    r = r.as_euler('zyz')

                    didcombo = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if didcombo == 1:

                    element = "rz(" + str(r[0]) + ")" + element[ende+1:]
                    saved1 = "ry(" + str(r[1]) + ")" + saved1[end1+1:]
                    saved2 = "rz(" + str(r[2]) + ")" + saved2[end2+1:]

                    lines[j] = element
                    lines[savedidx1] = saved1
                    lines[savedidx2] = saved2

                    # Purge of gates with a rotation parameter of '0.0' (this is used to cover the case of Gimbal Locks)

                    if str(r[2]) == "0.0":
                        lines.pop(savedidx2)
                    if str(r[1]) == "0.0":
                        lines.pop(savedidx1)                    
                    if str(r[0]) == "0.0":
                        lines.pop(j)

                    # Last optimization effort to cover new RZ gates at beginning/end of the circuit

                    finalz(lines, nq, subcircuit)
                    initialz(lines, nq, subcircuit)

                    ### Array rearrangement

                    # General case: no assumptions on last gates of the triplet can be made, so we need to find and assign as Saved values the last two target gates before the optimized section

                    N = len(lines)
                    saved1 = "NONE"
                    saved2 = "NONE"
                    savedidx1 = N-1
                    savedidx2 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k              

                else:       

                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            j -= 1

### Translate all RX(theta) gates in R(theta,0) gates and all RY(theta) gates in R(theta, pi/2) gates. Doesn't touch RZs.
###     (Approximation defined by Threshold 1 parameter)

def iontranslator(lines, halfpi):

    N = len(lines)

    for j in range(N-1, 3, -1):

        element = lines[j]

        if element[0] == 'r':

            start = element.find('(')
            end = element.find(')')

            # RX Case (and NOT RXX case)

            if (element[1] == 'x') and (element[2] != 'x'):

                element = "r" + element[start:end] + ", 0) " + element[end+1:]
                lines[j] = element

            # RY Case

            if element[1] == 'y':

                element = "r" + element[start:end] + ", " + halfpi + ") " + element[end+1:]
                lines[j] = element


### Merge all adjacent U gates.
###     (Approximation defined by Threshold 1 parameter)

def supercondmerge(lines, nq, halfpi):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        savedidx1 = N-1     # Giving this index the value N-1 assures that when not overwritten it remains ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                didmerge = 0
                element = lines[j]

                ### U1 case

                if element[:3] == "u1(":

                    # U1 + U1 case

                    if saved1[:3] == "u1(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        rote = float(element[starte+1:ende])
                        print(element)
                        print(saved1)
                        rot1 = float(saved1[start1+1:end1])
                        totrot = rote + rot1

                        element = "u1(" + str(totrot) + ") " + element[ende+1:]

                        didmerge = 1

                    # U1 + U2 case

                    if saved1[:3] == "u2(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cm1 = saved1.find(',')
                        rote = float(element[starte+1:ende])
                        phi1 = float(saved1[start1+1:cm1])
                        lambda1 = float(saved1[cm1+1:end1])
                        totrot = rote + lambda1

                        element = saved1[:cm1] + ", " + str(totrot) + ") " + element[ende+1:]

                        didmerge = 1

                    # U1 + U3 case

                    if saved1[:3] == "u3(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cm11 = saved1.find(',')
                        cm12 = saved1.find(',', cm11+1)
                        rote = float(element[starte+1:ende])
                        theta1 = float(saved1[start1+1:cm11])
                        phi1 = float(saved1[cm11+1:cm12])
                        lambda1 = float(saved1[cm12+1:end1])
                        totrot = rote + lambda1

                        element = saved1[:cm11] + ", " + saved1[cm11+1:cm12] + ", " + str(totrot) + ") " + element[ende+1:]

                        didmerge = 1

                ### U2 case

                elif element[:3] == "u2(":

                    # U2 + U1 case

                    if saved1[:3] == "u1(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cme = element.find(',')
                        rot1 = float(saved1[start1+1:end1])
                        phi0 = float(element[starte+1:cme])
                        lambda0 = float(element[cme+1:ende])
                        totrot = rot1 + phi0

                        element = element[:starte+1] + str(totrot) + ", " + element[cme+1:ende] + ") " + element[ende+1:]

                        didmerge = 1

                    # U2 + U2 case

                    if saved1[:3] == "u2(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cme = element.find(',')
                        cm1 = saved1.find(',')
                        phi0 = float(element[starte+1:cme])
                        lambda0 = float(element[cme+1:ende])
                        phi1 = float(saved1[start1+1:cm1])
                        lambda1 = float(saved1[cm1+1:end1])
                        rot = phi0 + lambda1

                        r = Rotation.from_euler('yzy', np.array([float(halfpi),rot,float(halfpi)]))
                        r = r.as_euler('zyz')

                        totrot1 = phi1 + r[2]
                        totrot2 = lambda0 + r[0]

                        element = "u3(" + str(r[1]) + ", " + str(totrot1) + ", " + str(totrot2) + ") " + element[ende+1:]

                        didmerge = 1

                    # U2 + U3 case

                    if saved1[:3] == "u3(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cme = element.find(',')
                        cm11 = saved1.find(',')
                        cm12 = saved1.find(',', cm11+1)
                        phi0 = float(element[starte+1:cme])
                        lambda0 = float(element[cme+1:ende])
                        theta1 = float(saved1[start1+1:cm11])
                        phi1 = float(saved1[cm11+1:cm12])
                        lambda1 = float(saved1[cm12+1:end1])
                        rot = phi0 + lambda1

                        r = Rotation.from_euler('yzy', np.array([float(halfpi),rot,theta1]))
                        r = r.as_euler('zyz')

                        totrot1 = phi1 + r[2]
                        totrot2 = lambda0 + r[0]

                        element = "u3(" + str(r[1]) + ", " + str(totrot1) + ", " + str(totrot2) + ") " + element[ende+1:]

                        didmerge = 1

                ### U3 case

                elif element[:3] == "u3(":

                    # U3 + U1 case

                    if saved1[:3] == "u1(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cm01 = element.find(',')
                        cm02 = element.find(',', cm01+1)
                        theta0 = float(element[starte+1:cm01])
                        phi0 = float(element[cm01+1:cm02])
                        lambda0 = float(element[cm02+1:ende])
                        rot1 = float(saved1[start1+1:end1])
                        totrot = rot1 + phi0

                        element = element[:cm01+1] + " " + str(totrot) + ", " + element[cm02+1:ende] + ") " + element[ende+1:]

                        didmerge = 1

                    # U3 + U2 case

                    if saved1[:3] == "u2(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        saved1 = saved1.replace(' ', '')
                        cm01 = element.find(',')
                        cm02 = element.find(',', cm01+1)
                        cm1 = saved1.find(',')
                        theta0 = float(element[starte+1:cm01])
                        phi0 = float(element[cm01+1:cm02])
                        lambda0 = float(element[cm02+1:ende])
                        phi1 = float(saved1[start1+1:cm1])
                        lambda1 = float(saved1[cm1+1:end1])
                        rot = phi0 + lambda1

                        r = Rotation.from_euler('yzy', np.array([theta0,rot,float(halfpi)]))
                        r = r.as_euler('zyz')

                        totrot1 = phi1 + r[2]
                        totrot2 = lambda0 + r[0]

                        element = "u3(" + str(r[1]) + ", " + str(totrot1) + ", " + str(totrot2) + ") " + element[ende+1:]

                        didmerge = 1

                    # U3 + U3 case

                    if saved1[:3] == "u3(":

                        element = element.replace(' ', '')
                        saved1 = saved1.replace(' ', '')
                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')

                        cm01 = element.find(',')
                        cm02 = element.find(',', cm01+1)
                        cm11 = saved1.find(',')
                        cm12 = saved1.find(',', cm11+1)
                        theta0 = float(element[starte+1:cm01])
                        phi0 = float(element[cm01+1:cm02])
                        lambda0 = float(element[cm02+1:ende])
                        theta1 = float(saved1[start1+1:cm11])
                        phi1 = float(saved1[cm11+1:cm12])
                        lambda1 = float(saved1[cm12+1:end1])
                        rot = phi0 + lambda1

                        r = Rotation.from_euler('yzy', np.array([theta0,rot,theta1]))
                        r = r.as_euler('zyz')

                        totrot1 = phi1 + r[2]
                        totrot2 = lambda0 + r[0]

                        element = "u3(" + str(r[1]) + ", " + str(totrot1) + ", " + str(totrot2) + ") " + element[ende+1:]

                        didmerge = 1


                ### Merging

                if didmerge == 1:

                    lines.pop(savedidx1)
                    lines[j] = element

                saved1 = element
                savedidx1 = j

            j -= 1

                
### Special version of finalz to purge all CZ and RZZ gates right before measurement (negligible), starting from the last and proceeding forward

def specialfinalz(lines, nq, subcircuit):

    # Check for Subcircuit parameter: if true, do nothing and return

    if subcircuit == 1:

        return

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        j = N-1

   
        while j > 3:
               
            if target in lines[j]:

                element = lines[j]

                # Check if last gate is a CZ or RZZ. If it is, check if on it is at the very end of the circuit on both its qubits. If so, purge it and resume scan from new end of circuit

                if (element[:4] == "rzz(") or (element[:3] == "cz "):

                    # CZ case

                    if element[:3] == "cz ":

                        flag = checkcxswapdown(lines, element, target, N, j)

                        if flag == 0:

                            lines.pop(j)
                            N = len(lines)
                            j = N

                    # RZZ case

                    elif element[:4] == "rzz(":

                        flag = 0

                        cm = element.find(',')
                        subele = element[cm:]
                        end = subele.find(']')
                        alttarget = subele[cm+1:end+1]
                        N = len(lines)

                        for k in range (N-1, j, -1):

                                if alttarget in lines[k]:
                                    flag = 1

                        if flag == 0:

                            lines.pop(j)
                            N = len(lines)
                            j = N

                # If not, do nothing and proceed on other qubits
                    
                else:
                    break

            j -= 1    


### Special version of initialz to purge all CZ and RZZ gates right after initialization (negligible), starting from the first and proceeding forward
     
def specialinitialz(lines, nq, subcircuit):

    # Check for Subcircuit parameter: if true, do nothing and return

    if subcircuit == 1:

        return

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        j = 3

   
        while j < N:
               
            if target in lines[j]:

                element = lines[j]

                # Check if last gate is a CZ or RZZ. If it is, check if on it is at the very end of the circuit on both its qubits. If so, purge it and resume scan from new end of circuit

                if (element[:4] == "rzz(") or (element[:3] == "cz "):

                    # CZ case

                    if element[:3] == "cz ":

                        flag = checkcxswapup(lines, element, target, 3, j)

                        if flag == 0:

                            lines.pop(j)
                            N = len(lines)
                            j -= 1

                    # RZZ case

                    elif element[:4] == "rzz(":

                        flag = 0

                        cm = element.find(',')
                        subele = element[cm:]
                        end = subele.find(']')
                        alttarget = subele[cm+1:end+1]
                        N = len(lines)

                        for k in range (j, N):

                                if alttarget in lines[k]:
                                    flag = 1

                        if flag == 0:

                            lines.pop(j)
                            N = len(lines)
                            j -= 1

                # If not, do nothing and proceed on other qubits
                    
                else:
                    break

            j += 1 

 
###############################################################################################################################################################################################

### Function to traspile the circuit using NMR's library

def NMRlib(lines, nq, subcircuit, nullsum):

    eulercombo(lines, nq, subcircuit, nullsum)
    eulerzyz(lines, nq, subcircuit)
    specialfinalz(lines, nq, subcircuit)
    specialinitialz(lines, nq, subcircuit)

### Function to traspile the circuit using Trapped Ions' library

def ionslib(lines, nq, subcircuit, nullsum, pi, halfpi, quarterpi, iontran):

    czreadjust(lines, nq, pi, halfpi, quarterpi)
    cztocx(lines, nq, nullsum, pi, halfpi, quarterpi, subcircuit)
    finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 0)
    eulercombo(lines, nq, subcircuit, nullsum)
    eulerzyz(lines, nq, subcircuit)
    if iontran == 'T':
        iontranslator(lines, halfpi)

### Function to traspile the circuit using Superconducting's library

def supercondlib(lines, nq, subcircuit, nullsum, pi, halfpi, quarterpi):

    czreadjust(lines, nq, pi, halfpi, quarterpi)
    cztocx(lines, nq, nullsum, pi, halfpi, quarterpi, subcircuit)
    h_to_u2(lines, nq, halfpi)
    finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 0)
    eulercombo(lines, nq, subcircuit, nullsum)
    eulerzyz(lines, nq, subcircuit)
    zrz_to_u2(lines, nq, halfpi)
    halfr_to_u2(lines, nq, halfpi)
    zrz_to_u3(lines, nq, halfpi)
    genericconverter(lines, nq, halfpi)
    supercondmerge(lines, nq, halfpi)

