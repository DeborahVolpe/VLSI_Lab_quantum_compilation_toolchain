import sys
import re
sys.path.append('./')
from QASM_precomposer import *
from NULLOP_purgers import *

########################################################################################################
###################################### SIMPLE OPTIMIZERS ###############################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "subcircuit" identifier parameter
#####   - "aftertemp" parameter: tells if templates are gonna be checked after simple optimizations (useful in "eq_h")

##### Check of simple circuital equivalences and optimization to "compact" the circuit and create possible NULL Operations

### Simple Equivalence 1: X-Y, Y-X to Z

### If templates are called after optimization, don't touch X and Z gates adjacent to CXs/CZs (possible applications of Template 1 or Template 2)

def eq_xy(lines, nq, aftertemp):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1
        savedidx3 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                element = lines[j]

                if ( (saved1[:2] == "x ") and (saved2[:2] == "y ") and ( (aftertemp == 0) or (element[:3] != "cx ") ) ) or ( (saved1[:2] == "y ") and (saved2[:2] == "x ") and ( (aftertemp == 0) or (saved3[:3] != "cx ") ) ):

                    lines.pop(savedidx2)
                    lines[savedidx1] = "z " + saved1[2:]
                    saved1 = lines[savedidx1]
                    saved2 = saved3
                    savedidx2 = savedidx3

                saved3 = saved2
                savedidx3 = savedidx2
                saved2 = saved1
                savedidx2 = savedidx1
                saved1 = element
                savedidx1 = j

            j -= 1


### Simple Equivalence 2: X-Z, Z-X to Y

def eq_xz(lines, nq, aftertemp):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1
        savedidx3 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                element = lines[j]

                if ( (saved1[:2] == "x ") and (saved2[:2] == "z ") and ( (aftertemp == 0) or (element[:3] != "cx ") or (saved3[:3] != "cx ") or (saved3[:3] != "cz ") ) ) or ( (saved1[:2] == "z ") and (saved2[:2] == "x ") and ( (aftertemp == 0) or (saved3[:3] != "cx ") or (element[:3] != "cx ") or (element[:3] != "cz ") ) ):

                    lines.pop(savedidx2)
                    lines[savedidx1] = "y " + saved1[2:]
                    saved1 = lines[savedidx1]
                    saved2 = saved3
                    savedidx2 = savedidx3

                saved3 = saved2
                savedidx3 = savedidx2
                saved2 = saved1
                savedidx2 = savedidx1
                saved1 = element
                savedidx1 = j

            j -= 1


### Simple Equivalence 3: Y-Z, Z-Y to X

def eq_yz(lines, nq, aftertemp):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1
        savedidx3 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                element = lines[j]

                if ( (saved1[:2] == "z ") and (saved2[:2] == "y ") and ( (aftertemp == 0) or (element[:3] != "cx ") or (element[:3] != "cz ") ) ) or ( (saved1[:2] == "y ") and (saved2[:2] == "z ") and ( (aftertemp == 0) or (saved3[:3] != "cx ") or (saved3[:3] != "cz ") ) ):

                    lines.pop(savedidx2)
                    lines[savedidx1] = "x " + saved1[2:]
                    saved1 = lines[savedidx1]
                    saved2 = saved3
                    savedidx2 = savedidx3

                saved3 = saved2
                savedidx3 = savedidx2
                saved2 = saved1
                savedidx2 = savedidx1
                saved1 = element
                savedidx1 = j

            j -= 1


### Simple Equivalence 4: RY(pi/2)-X / X-RY(-pi/2) to H and viceversa

def eq_h1(lines, nq, halfpi, nullsum, aftertemp):

    for i in range(0,nq):

        N = len(lines)
        l = len(halfpi)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1   # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        savedidx4 = N-1
        j = N-1

        while j > 1:

            if (target in lines[j]) or (j == 2) or (j == 3):

                optdone = 0

                element = lines[j]

                ##### If templates functions are called after this optimization, always transform RY+X gates if one of their adjacent gates is a CX:
                #####  by doing so, a template-based "stronger" optimization could be achieved.
                ##### Otherwise, if no NULL Op. can be achieved try to compact the circuit as much as possible (but only on very last iteration)
                #####  in order to allow the transformation of the equivalent H in a more convenient form (S-RX(pi/2)-S)

                ### Case RY(pi/2)-X to H

                if (saved1[:l+4] == ("ry("+halfpi+")")) and (saved2[:2] == "x "):

                    if ( (element[:3] == "cx ") or (saved3[:3] == "cx ") ) and (aftertemp == 1):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved2[2:]
                        optdone = 1

                    elif (element[:2] == "h ") or (saved3[:2] == "h "):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved2[2:]
                        optdone = 1

                    elif (aftertemp == 0):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved2[2:]
                        optdone = 1

                ### Case X-RY(-pi/2) to H

                if (saved2[:l+5] == ("ry(-"+halfpi+")")) and (saved1[:2] == "x "):

                    if ( (element[:3] == "cx ") or (saved3[:3] == "cx ") ) and (aftertemp == 1):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (element[:2] == "h ") or (saved3[:2] == "h "):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (aftertemp == 0):

                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                ##### Case H to RY(pi/2)-X / X-RY(-pi/2)

                if (saved2[:2] == "h "):

                ### If templates functions are called after this optimization, don't transform H gates if one of its adjacent gates is a CX or if there's an X adjacent to a CX:
                ###  by doing so, a template-based "stronger" optimization could be missed.
                ### Otherwise, if no NULL Op. can be achieved never try to expand the circuit

                    if ( (saved1[:3] == "cx ") or (saved3[:3] == "cx ") ) and (aftertemp == 1):

                        pass

                    elif (saved1[:2] == "x ") or (saved1[:3] == "rx(") or (saved3[:2] == "y ") or (saved3[:3] == "ry("):

                        if ( (element[:3] == "cx ") and (aftertemp == 1) ):

                            pass

                        else:

                            lines[savedidx2] = "ry(-" + halfpi + ") " + target + ";"
                            lines.insert(savedidx2, "x " + target + ";")
                            optdone = 1

                    elif (saved1[:2] == "y ") or (saved1[:3] == "ry(") or (saved3[:2] == "x ") or (saved3[:3] == "rx("):

                        if ( (saved4[:3] == "cx ") and (aftertemp == 1) ):

                            pass

                        else:

                            lines[savedidx2] = "x " + target + ";"
                            lines.insert(savedidx2, "ry(" + halfpi + ") " + target + ";")
                            optdone = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if optdone == 1:      

                    nullpurge(lines, nq, nullsum)

                                                              # If general case swap, no assumptions can be made on how many gates were purged: we need
                                                              #  to find  and assign as Saved values the last three target gates before the optimized section
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


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new circuit end
                j = savedidx1
            j -= 1


### Simple Equivalence 5: S-RX(pi/2)-S / Sdg-RX(-pi/2)-Sdg to H and viceversa

def eq_h2(lines, nq, halfpi, nullsum, aftertemp):

    for i in range(0,nq):

        N = len(lines)
        l = len(halfpi)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1   # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        savedidx4 = N-1
        j = N-1

        while j > 1:

            if (target in lines[j]) or (j == 2) or (j == 3):

                optdone = 0

                element = lines[j]

                ##### If templates functions are called after this optimization, always transform S-RX-S gates if one of their adjacent gates is a CX:
                #####  by doing so, a template-based "stronger" optimization could be achieved.
                ##### Otherwise, if no NULL Op. can be achieved try to compact the circuit as much as possible (but only on very last iteration) 

                ### Case S-RX(pi/2)-S to H

                if (saved1[:2] == "s ") and (saved2[:l+4] == ("rx("+halfpi+")")) and (saved3[:2] == "s "):

                    if ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (element[:2] == "h ") or (saved4[:2] == "h "):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (aftertemp == 0):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                ### Case Sdg-RX(-pi/2)-Sdg to H

                if (saved1[:4] == "sdg ") and (saved2[:l+5] == ("rx(-"+halfpi+")")) and (saved3[:4] == "sdg "):

                    if ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (element[:2] == "h ") or (saved4[:2] == "h "):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                    elif (aftertemp == 0):

                        lines.pop(savedidx3)
                        lines.pop(savedidx2)
                        lines[savedidx1] = "h " + saved1[2:]
                        optdone = 1

                ##### Case H to S-RX(pi/2)-S / Sdg-RX(-pi/2)-Sdg

                if (saved2[:2] == "h "):

                ### If templates functions are called after this optimization, don't transform H gates if one of its adjacent gates is a CX or if it's a RZ adjacent to a CX:
                ###  by doing so, a template-based "stronger" optimization could be missed. If a RZ recombination can be obtained, use S-RX(pi/2)-S template as preferred.
                ### Otherwise, if no NULL Op. can be achieved never try to expand the circuit

                    if ( (saved1[:3] == "cx ") or (saved3[:3] == "cx ") ) and (aftertemp == 1):

                        pass

                    elif (saved1[:2] == "sdg ") or (saved1[:3] == "rz(") or (saved3[:2] == "sdg ") or (saved3[:3] == "rz("):

                        if ( ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1) ):

                            pass

                        else:

                            lines[savedidx2] = "s " + target + ";"
                            lines.insert(savedidx2, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "s " + target + ";")
                            optdone = 1

                    elif (saved1[:2] == "s ") or (saved3[:2] == "s "):

                        if ( ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1) ):

                            pass

                        else:

                            lines[savedidx2] = "sdg " + target + ";"
                            lines.insert(savedidx2, "rx(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "sdg " + target + ";")
                            optdone = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if optdone == 1:      

                    nullpurge(lines, nq, nullsum)

                                                              # If general case swap, no assumptions can be made on how many gates were purged: we need
                                                              #  to find  and assign as Saved values the last three target gates before the optimized section
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


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new circuit end
                j = savedidx1
            j -= 1


### Simple Equivalece 6: H-RZ-H to RX, H-RX-H to RZ and H-RY-H to -RY

def eq_hrh(lines, nq, pi, halfpi, quarterpi, aftertemp):

    needtranslate = 0

    for i in range(0,nq):

        N = len(lines)
        l = len(pi)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N
        savedidx2 = N
        savedidx3 = N
        savedidx4 = N
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 1:

            didcombo = 0

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 2) or (j == 3):

                element = lines[j]

                ### If templates functions are called after this optimization, don't transform H gates if one of its adjacent gates is a CX:
                ###  by doing so, a template-based "stronger" optimization could be missed.

                ### H-RZ-H Case

                if (saved1[:2] == "h ") and (saved3[:2] == "h ") and ( (saved2[:2] == "z ") or (saved2[:2] == "s ") or (saved2[:4] == "sdg ") or (saved2[:2] == "t ") or (saved2[:4] == "tdg ") or (saved2[:3] == "rz(") ):

                    if ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1):

                        pass

                    else:
                        
                        didcombo = 1

                        # T Case

                        if saved2[:2] == "t ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "rx(" + quarterpi + ") " + saved1[2:]
                            saved1 = lines[savedidx1]                      

                        # Tdg Case

                        if saved2[:4] == "tdg ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "rx(-" + quarterpi + ") " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # S Case

                        if saved2[:2] == "s ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "rx(" + halfpi + ") " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # Sdg Case

                        if saved2[:4] == "sdg ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "rx(-" + halfpi + ") " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # Z Case

                        if saved2[:2] == "z ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "x " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # RZ Case

                        if saved2[:3] == "rz(":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            if saved2[3] == "-":
                                lines[savedidx1] = "rx(" + saved2[3:l+5] + target + ";"
                            else:
                                lines[savedidx1] = "rx(" + saved2[3:l+4] + target + ";"
                            saved1 = lines[savedidx1]

            
                ### H-RX-H Case

                if (saved1[:2] == "h ") and (saved3[:2] == "h ") and ( (saved2[:2] == "x ") or (saved2[:3] == "rx(") ):

                    if ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1):

                        pass

                    else:

                        didcombo = 1

                        # X Case

                        if saved2[:2] == "x ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "z " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # RX Case

                        if saved2[:3] == "rx(":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            if saved2[3] == "-":
                                lines[savedidx1] = "rz(" + saved2[3:l+5] + target + ";"
                            else:
                                lines[savedidx1] = "rz(" + saved2[3:l+4] + target + ";"
                            saved1 = lines[savedidx1]

                            needtranslate = 1

                ### H-RY-H Case

                if (saved1[:2] == "h ") and (saved3[:2] == "h ") and ( (saved2[:2] == "y ") or (saved2[:3] == "ry(") ):

                    if ( (element[:3] == "cx ") or (saved4[:3] == "cx ") ) and (aftertemp == 1):

                        pass

                    else:

                        didcombo = 1

                        # Y Case

                        if saved2[:2] == "y ":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            lines[savedidx1] = "y " + saved1[2:]
                            saved1 = lines[savedidx1]

                        # RY Case

                        if saved2[:3] == "ry(":

                            lines.pop(savedidx3)
                            lines.pop(savedidx2)
                            if saved2[3] == "-":
                                lines[savedidx1] = "ry(" + saved2[4:l+5] + target + ";"
                            else:
                                lines[savedidx1] = "ry(-" + saved2[3:l+4] + target + ";"
                            saved1 = lines[savedidx1]

                ### Rearrangement of the "saved array" depending on the optimization done

                if didcombo == 0:
                    saved4 = saved3
                    savedidx4 = savedidx3
                    saved3 = saved2
                    savedidx3 = savedidx2                   

                else:
                    N = len(lines)
                    saved3 = "NONE"
                    saved4 = "NONE"                       
                    savedidx3 = N-1
                    savedidx4 = N-1
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved3 = lines[k]
                            savedidx3 = k
                    for k in range(N-1,savedidx3,-1):
                        if target in lines[k]:
                            saved4 = lines[k]
                            savedidx4 = k

                saved2 = saved1
                savedidx2 = savedidx1
                saved1 = element
                savedidx1 = j

            j -= 1   

    if needtranslate == 1:       # Used to translate to S,Sdg,T,Tdg gates if H-RX-H equivalnces were exploited
        translator(lines, pi, halfpi, quarterpi)


### Simple Equivalece 7: X-RZ-X to -RZ and X-RY-X to -RY

def eq_xrx(lines, nq, pi, halfpi, quarterpi):

    # No need for aftertemp: gain is such that applying the template is always worth it

    for i in range(0,nq):

        N = len(lines)
        l = len(pi)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N
        savedidx2 = N
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            didcombo = 0

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]

                ### X-RZ-X Case

                if (element[:2] == "x ") and (saved2[:2] == "x ") and ( (saved1[:2] == "z ") or (saved1[:2] == "s ") or (saved1[:4] == "sdg ") or (saved1[:2] == "t ") or (saved1[:4] == "tdg ") or (saved1[:3] == "rz(") ):
                        
                    didcombo = 1

                    # T Case

                    if saved1[:2] == "t ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "tdg " + element[2:]
                        element = lines[j]                      

                    # Tdg Case

                    if saved1[:4] == "tdg ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "t " + element[2:]
                        element = lines[j]  

                    # S Case

                    if saved1[:2] == "s ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "sdg " + element[2:]
                        element = lines[j]  

                    # Sdg Case

                    if saved1[:4] == "sdg ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "s " + element[2:]
                        element = lines[j]  

                    # Z Case

                    if saved1[:2] == "z ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "z " + element[2:]
                        element = lines[j]  

                    # RZ Case

                    if saved1[:3] == "rz(":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        if saved1[3] == "-":
                            lines[j] = "rz(" + saved1[4:l+5] + target + ";"
                        else:
                            lines[j] = "rz(-" + saved1[3:l+4] + target + ";"
                        element = lines[j] 

                ### X-RY-X Case

                if (element[:2] == "x ") and (saved2[:2] == "x ") and ( (saved1[:2] == "y ") or (saved1[:3] == "ry(") ):

                    didcombo = 1

                    # Y Case

                    if saved1[:2] == "y ":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        lines[j] = "y " + element[2:]
                        element = lines[j]   

                    # RY Case

                    if saved2[:3] == "ry(":

                        lines.pop(savedidx2)
                        lines.pop(savedidx1)
                        if saved1[3] == "-":
                            lines[j] = "ry(" + saved1[4:l+5] + target + ";"
                        else:
                            lines[j] = "ry(-" + saved1[3:l+4] + target + ";"
                        element = lines[j] 


                ### Rearrangement of the "saved array" depending on the optimization done

                if didcombo == 0:
                    saved2 = saved1
                    savedidx2 = savedidx1                   

                else:
                    N = len(lines)
                    saved2 = "NONE"
                    savedidx2 = N-1
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k

                saved1 = element
                savedidx1 = j

            j -= 1


