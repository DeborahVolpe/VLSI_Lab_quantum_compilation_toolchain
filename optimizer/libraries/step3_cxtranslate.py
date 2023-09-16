import sys
import math

sys.path.append('./')
from NULLOP_purgers import *
from step1_templates import *

########################################################################################################
#################################### CX TRANSLATION LIBRARY ############################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "subcircuit" identifier parameter
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates
#####   - "pi", "halfpi", "quarterpi" approximated values calculated with threshold defined in .cfg file


### Function to translate CX gates into CZ gates through CX(i,j) = H(j) - CZ(i,j) - H(j) Template (NMR case)

def cxtocz(lines, nq, nullsum, pi, halfpi, quarterpi, subcircuit):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N
        savedidx2 = N     # Giving these indexes the value N assures that when not overwritten they remain ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                transform = 0

                element = lines[j]

                if saved1[:3] == "cx ":

                    cm1 = saved1.find(',')

                    # Insertion of H gates in the most convenient form to create possible NULL Ops.

                    if saved1[cm1+1:-1] == target:

                        # Right side

                        if saved2[:4] == "rz(-":

                            lines.insert(savedidx2, "rz(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rz(" + halfpi + ") " + target + ";")

                        elif saved2[:3] == "rz(":

                            lines.insert(savedidx2, "rz(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rx(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rz(-" + halfpi + ") " + target + ";")

                        elif saved2[:4] == "rx(-":

                            lines.insert(savedidx2, "rx(" + pi + ") " + target + ";")
                            lines.insert(savedidx2, "ry(" + halfpi + ") " + target + ";")

                        elif saved2[:3] == "rx(":

                            lines.insert(savedidx2, "rx(-" + pi + ") " + target + ";")
                            lines.insert(savedidx2, "ry(" + halfpi + ") " + target + ";")

                        elif saved2[:3] == "ry(":

                            lines.insert(savedidx2, "ry(-" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rx(" + pi + ") " + target + ";")

                        else:       # Generic case, use S-RX-S form

                            lines.insert(savedidx2, "rz(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(savedidx2, "rz(" + halfpi + ") " + target + ";")

                        # CX to CZ

                        cx = lines[savedidx1]
                        cx = "cz " + cx[3:]
                        lines[savedidx1] = cx

                        # Left side

                        if element[:4] == "rz(-":

                            lines.insert(j+1, "rz(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rz(" + halfpi + ") " + target + ";")

                        elif element[:3] == "rz(":

                            lines.insert(j+1, "rz(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rx(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rz(-" + halfpi + ") " + target + ";")

                        elif element[:4] == "rx(-":

                            lines.insert(j+1, "ry(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rx(" + pi + ") " + target + ";")

                        elif element[:3] == "rx(":

                            lines.insert(j+1, "ry(-" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rx(-" + pi + ") " + target + ";")

                        elif element[:3] == "ry(":

                            lines.insert(j+1, "rx(" + pi + ") " + target + ";")
                            lines.insert(j+1, "ry(" + halfpi + ") " + target + ";")

                        else:       # Generic case, use S-RX-S form

                            lines.insert(j+1, "rz(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rx(" + halfpi + ") " + target + ";")
                            lines.insert(j+1, "rz(" + halfpi + ") " + target + ";")


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


### Function to exploit the CZs' symmetry to try to generate NULL Ops between CZ gates that after the translation are perfectly adjacent (NMR case)

def czharmonizer(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        savedidx1 = N-1     # Giving this index the value N-1 assures that when not overwritten it remains ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            didinvert = 0

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]

                if (element[:3] == "cz ") and (saved1[:3] == "cz "):

                    # Extract target qubits involved

                    cme = element.find(',')
                    subele = element[cme+1:]
                    end = subele.find(']')
                    controllede = subele[:end+1]
                    controle = element[3:cme] 

                    cm1 = saved1.find(',')
                    subsav1 = saved1[cm1+1:]
                    end = subsav1.find(']')
                    controlled1 = subsav1[:end+1]
                    control1 = saved1[3:cm1]

                    # Possible NULL Ops cases, all non mirrored adjacent CZs were already purged at this point

                    if (controllede == control1) or (controle == controlled1):

                        flag = checkcxswapdown(lines, element, target, savedidx1, j)

                        ### If flag is 0, the two CZs are perfectly adjacent and inverted.
                        ###  So, we can invert one of the two to generate a NULL Op.

                        if flag == 0:

                            didinvert = 1

                            ### Optimization

                            lines[j] = saved1
                            nullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done

                if didinvert == 0:
                    saved1 = element
                    savedidx1 = j                

                else:
                    N = len(lines)
                    saved1 = "NONE"
                    savedidx1 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k

            j -= 1


### Function to translate CZ gates using technology-specific RZZ gates (NMR case)

def nmrcz(lines, nq, nullsum, halfpi, subcircuit, nmrlayout):

    N = len(lines)

    for j in range(N-1, 3, -1):

        element = lines[j]

        if element[:3] == "cz ":

            # Parsing of involved qubits

            start1 = element.find('[')
            end1 = element.find(']')
            subele = element[end1+1:]
            start2 = subele.find('[')
            end2 = subele.find(']')

            qubit1 = int(element[start1+1:end1])
            qubit2 = int(subele[start2+1:end2])

            # Check for a mismatch of interaction sign in nmrlayout

            s1 = nmrlayout[qubit1]
            s1 = s1[qubit2]

            s2 = nmrlayout[qubit2]
            s2 = s2[qubit1]

            if s1 != s2:

                print("\n Sign mismatch detected between the gate qubits in layout_nmr.cfg. Correct the .cfg file and try again. \n")
                sys.exit(0)

            # If no mismatch, decompose CZ

            else:

                if s1 == 1:
                    s = ''
                    ss = '-'
                elif s1 == -1:
                    s = '-'
                    ss = ''

                lines[j] = "rzz(" + s + halfpi + ") " + element[3:]
                lines.insert(j, "rz(" + ss + halfpi + ") q[" + str(qubit1) + "];")
                lines.insert(j, "rz(" + ss + halfpi + ") q[" + str(qubit2) + "];")

                # Also, try an optimization

                nullpurge(lines, nq, nullsum)
                initialz(lines, nq, subcircuit)     # No finalz because newly inserted RZ gates are on the left of the circuit


###############################################################################################################################################################################################


### Function to revert generic rotation R gates into their RX, RY form for optimization purposes (Trapped Ions case)
###     (Approximation defined by Threshold 1 parameter)

def iontranslator_reverse(lines, halfpi):

    N = len(lines)

    for j in range(N-1, 3, -1):

        element = lines[j]

        if element[:2] == 'r(':

            start = element.find('(')
            cm = element.find(',')
            end = element.find(')')

            # RX Case

            if element[cm+2:end] == '0':

                element = "rx" + element[start:cm] + ") " + element[end+1:]
                lines[j] = element

            # RY Case

            if element[cm+2:end] == halfpi:

                element = "ry" + element[start:cm] + ") " + element[end+1:]
                lines[j] = element


### Function to translate CX gates using technology-specific RXX gates. It also tries to create NULL Ops with the newly-inserted gates (Trapped Ions case)

def ioncx(lines, nq, nullsum, halfpi, quarterpi, ionlayout):

    N = len(lines)

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N
        savedidx2 = N     # Giving these indexes the value N assures that when not overwritten they remain ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 2:

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                opt = 0

                element = lines[j]

                cm1 = saved1.find(',')

                if saved1[:cm1] == "cx " + target:

                    # Parsing of involved qubits

                    start1 = saved1.find('[')
                    end1 = saved1.find(']')
                    subsav1 = saved1[cm1+1:]
                    start2 = subsav1.find('[')
                    end2 = subsav1.find(']')
                    qubit1 = int(saved1[start1+1:end1])
                    qubit2 = int(subsav1[start2+1:end2])

                    ### Check for a mismatch of interaction sign in nmrlayout

                    s1 = ionlayout[qubit1]
                    s1 = s1[qubit2]

                    s2 = ionlayout[qubit2]
                    s2 = s2[qubit1]

                    if s1 != s2:

                        print("\n Sign mismatch detected between the gate qubits in layout_ion.cfg. Correct the .cfg file and try again. \n")
                        sys.exit(0)

                    else:

                        ### If no mismatch, check gates adjacent to CX in order to evaluate the most convenient v parameter

                        opt = 1

                        flag = checkcxswapdown(lines, saved1, target, N, savedidx1)
                        adjgate = lines[flag]

                        ## Best case scenario 1: two combinable gates with same sign on the right with v = 1 and v = -1

                        if (adjgate[:3] == "rx(") and (saved2[:3] == "ry("):

                            if (saved2[3] == "-") and (adjgate[3] == "-"):
                                v = '-'

                            elif (saved2[3] != "-") and (adjgate[3] != "-"):
                                v = ''

                            # If only one combinable gate, prioritize RY gate

                            elif (saved2[3] == "-"):
                                v = '-'
                            elif (saved2[3] != "-"):
                                v = ''

                        ## Best case scenario 2: two combinable gates, one on the left and one on the right

                        elif (element[:3] == "ry(") and (adjgate[:3] == "rx("):

                            if (element[3] == "-") and (adjgate[3] != "-"):
                                v = ''

                            elif (element[3] != "-") and (adjgate[3] == "-"):
                                v = '-'

                            # If only one combinable gate, prioritize RY gate

                            elif (element[3] == "-"):
                                v = ''
                            elif (element[3] != "-"):
                                v = '-'

                        ## Regular scenario: only one combinable gate

                        # Right RY

                        elif (saved2[:3] == "ry("):

                            if (saved2[3] == "-"):
                                v = '-'
                            elif (saved2[3] != "-"):
                                v = ''

                        # Left RY

                        elif (element[:3] == "ry("):

                            if (element[3] == "-"):
                                v = ''
                            elif (element[3] != "-"):
                                v = '-'

                        # Right RX

                        elif (adjgate[:3] == "rx("):

                            if (adjgate[3] == "-"):
                                v = '-'
                            elif (adjgate[3] != "-"):
                                v = ''

                        ## Worst case scenario: no adjacent combinable gates. Settle for v = 1.

                        else:

                            v = ''


                        ### Once v is set, decompose accordingly

                        if s1 == 1:
                            s = ''
                        if s1 == -1:
                            s = '-'

                        # Evaluation of - s * v (mix) and -s (ss)

                        if ( (s == '') and (v == '-') ) or ( (s == '-') and (v == '') ):
                            mix = ''
                        else:
                            mix = '-'

                        if s == '-':
                            ss = ''
                        else:
                            ss = '-'

                        if v == '':

                            lines[savedidx1] = "rxx(" + s + halfpi + ") " + saved1[3:]
                            lines.insert(savedidx2, "ry(-" + halfpi + ") q[" + str(qubit1) + "];")
                            lines.insert(savedidx2, "rx(" + ss + halfpi + ") q[" + str(qubit1) + "];")
                            lines.insert(savedidx1+1, "rx(" + mix + halfpi + ") q[" + str(qubit2) + "];")
                            lines.insert(savedidx1, "ry(" + halfpi + ") q[" + str(qubit1) + "];")

                        elif v == '-':

                            lines[savedidx1] = "rxx(" + s + halfpi + ") " + saved1[3:]
                            lines.insert(savedidx2, "ry(" + halfpi + ") q[" + str(qubit1) + "];")
                            lines.insert(savedidx2, "rx(" + ss + halfpi + ") q[" + str(qubit1) + "];")
                            lines.insert(savedidx1+1, "rx(" + mix + halfpi + ") q[" + str(qubit2) + "];")
                            lines.insert(savedidx1, "ry(-" + halfpi + ") q[" + str(qubit1) + "];")


                ### Try an optimization

                if opt == 1:

                    nullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done

                                  # If general case swap, no assumptions can be made on how many gates were purged: we need
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

                else:       # No application

                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


###############################################################################################################################################################################################

### Function that manages all NULL Ops and combinations generated by couples of RZZs and RXXs

def specialnullpurge(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]

                # Check if couple of RXXs/RZZs acting on same qubits
 
                if ( (element[:4] == "rzz(") or (element[:4] == "rxx(") ) and (element == saved1):

                    # Check to avoid wrong NULL couplings

                    flag = 0

                    # Parsing to obtain other qubit involved in RXX,RZZ

                    cme = element.find(',')
                    subele = element[cme:]
                    end = subele.find(']')
                    alttarget = subele[cme+1:end+1]
                        
                    # If there are gates on the other qubit present in between the two RXX/RZZs, it's not a NULL op. and thus no optimization is permitted
                        
                    for k in range (savedidx1-1, j, -1):

                        if alttarget in lines[k]:
                            flag = 1

                    if flag == 0:

                        ### Generic Case; NULL op. if the absolute value of the sum of the Theta parameters of two subsequent gates of the same type is about 0 (precision set by Threshold 2 parameter).
                        ###  If not, then the two gates can be combined in one that applies an equivalent rotation

                        # Isolate Theta parameters

                        starte = element.find('(')
                        start1 = saved1.find('(')
                        ende = element.find(')')
                        end1 = saved1.find(')')
                        rotation1 = element[starte+1:ende]
                        rotation2 = saved1[start1+1:end1]

                        # Calculate total rotation's absolute value

                        tot = rotation1 + " + " + rotation2
                        tot = eval(tot)
                        abstot = abs(tot)
                        
                        # If abs of total rotation is about zero, it's a NULL op.

                        if abstot <= nullsum:

                            lines.pop(savedidx1)
                            lines.pop(j)
                            saved1 = saved2
                            savedidx1 = savedidx2 - 2
                            j = savedidx2 - 2   # Scan resumes from savedidx2 element (considering the 2 purged gates)
                            saved2 = "NONE"     # Saved2 becomes last target gate before new Saved1, and "NONE" if there aren't any left
                            N = len(lines)                        
                            savedidx2 = N
                            for k in range(N-1,savedidx1,-1):
                                if target in lines[k]:
                                    saved2 = lines[k]
                                    savedidx2 = k

                        # No NULL op., combine the two gates of the same type

                        else:

                            precision = int( abs( math.log10(nullsum) ) )    # Approximation with precision set in .cfg file

                            tot = round(tot, precision)
                            tot = str(tot)

                            lines.pop(savedidx1)
                            lines[j] = element[:4] + tot + element[ende:]
                            element = lines[j]

                            if j != 4:  # If first gate, don't even bother

                                savedidx2 -= 1
                                saved1 = element
                                savedidx1 = j

                ### No NULL op. Case:

                else:

                    if j != 4:  # If first gate, don't even bother

                        saved2 = saved1
                        savedidx2 = savedidx1
                        saved1 = element
                        savedidx1 = j
                    

            j -= 1


##### Special case of Template 1: RZ(i) - RZZ(i,:) to RZZ(i,:) - RZ(i) / RZ(j) - RZZ(:,j) to RZZ(:,j) - RZ(j) and viceversa.
#####  This is used in the NMR technology to account the capability of RZZ gates to commute with RZ gates.

def specialtempl1(lines, nq, subcircuit, nullsum):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1      # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):      # j = 3 covers the initialz optimization case

                null_fwd = 0
                null_bwd = 0
                specialcase1 = 0
                specialcase2 = 0

                element = lines[j]

                flag = 0

                ### Case RZ(i) - RZZ(i,:) / RZ(j) - RZZ(:,j)

                if (saved1[:3] == "rz(") and (saved2[:4] == "rzz("):

                    # Evaluation of controlled qubit involved

                    cm = saved2.find(',')
                    subele = saved2[cm:]
                    end = subele.find(']')
                    alttarget = subele[cm+1:end+1]
                    N = len(lines)

                    if (savedidx2 > N):

                        for k in range (N-1, j, -1):
                            a = lines[k]
                            if (alttarget in a) and (a[:3] != "rz("):
                                flag = 1
                                break
                    else:

                        for k in range (savedidx2-1, j, -1):
                            a = lines[k]
                            if (alttarget in a) and (a[:3] != "rz("):
                                flag = 1
                                break

                    # Special case 1: trying to move a RZ gate as last in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (saved3 == "NONE") and (subcircuit == 0):

                        specialcase1 = 1

                    if specialcase1 == 0:

                        # Swap to create a NULL op. forward in the circuit

                        if saved3[:3] == "rz(":

                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit; don't swap if there are gates on the controlled qubit between the RZZs (no NULL Op.).
                        # If there are gates between the RZZs but are RZ gates, there's no need to check because the swap will be done eventually.
                        #  Try to make RZZs adjacent to combine or purge them through the specialnullpurge function.

                        elif (element[:4] == "rzz(") and (alttarget in element) and (flag == 0):

                            null_bwd = 1
 

                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase1 == 1):

                        lines.insert(savedidx2+1, saved1)
                        lines.pop(savedidx1)


                ### Case RZZ(i,:) - RZ(i) / RZZ(:,j) - RZ(j)

                elif (saved2[:3] == "rz(") and (saved1[:4] == "rzz("):

                    # Evaluation of controlled qubit involved

                    cm = saved1.find(',')
                    subele = saved1[cm:]
                    end = subele.find(']')
                    alttarget = subele[cm+1:end+1]

                    for k in range (savedidx1, savedidx3):
                        a = lines[k]
                        if (alttarget in a) and (a[:3] != "rz("):
                            flag = 1
                            break

                    # Special case 2: trying to move a RZ gate as first in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (j == 3) and (subcircuit == 0):

                        specialcase2 = 1

                    if specialcase2 == 0:

                        # Swap to create a NULL op. forward in the circuit. Try to make RZZs adjacent to combine or purge them through the specialnullpurge function.

                        if (saved3[:4] == "rzz(") and (alttarget in saved3) and (flag == 0):
                    
                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit.

                        elif element[:3] == "rz(":
                            
                            null_bwd = 1


                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase2 == 1):

                        lines.pop(savedidx2)
                        lines.insert(savedidx1, saved2)


                ### Optimization

                # If swap was done, optimize

                if (null_fwd == 1) or (null_bwd == 1):

                    nullpurge(lines, nq, nullsum)
                    specialnullpurge(lines, nq, nullsum)

                if specialcase1 == 1:

                    finalz(lines, nq, subcircuit)

                if specialcase2 == 1:

                    initialz(lines, nq, subcircuit)

                ### Rearrangement of the "saved array" depending on the optimization done

                if specialcase2 == 1:     # If specialcase2 is true, then there is no need to rearrange because "end of the line" was hit

                    pass

                elif (null_fwd == 1) or (null_bwd == 1) or (specialcase1 == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
                                                                                     #  to find  and assign as Saved values the last three target gates before the optimized section
                    N = len(lines)
                    saved1 = "NONE"
                    saved2 = "NONE"
                    saved3 = "NONE"
                    savedidx1 = N-1
                    savedidx2 = N-1
                    savedidx3 = N-1
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

                else:       # No swap performed

                    saved3 = saved2
                    savedidx3 = savedidx2
                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


##### Special case of Template 2: RX(i) - RXX(:,i) to RXX(:,i) - RX(i) and viceversa.
#####  This is used in the Trapped Ions technology to account the capability of RXX gates to commute with RX gates.

def specialtempl2(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1   # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):

                null_fwd = 0
                null_bwd = 0

                element = lines[j]

                flag = 0

                ### Case RX(i) - RXX(i,:) / RX(j) - RXX(:,j)

                if (saved1[:3] == "rx(") and (saved2[:4] == "rxx("):

                    # Evaluation of controlled qubit involved

                    cm = saved2.find(',')
                    subele = saved2[cm:]
                    end = subele.find(']')
                    alttarget = subele[cm+1:end+1]

                    # If there are gates between RXXs, check if they're RX gates. If so, don't raise a flag because of commutability.

                    if (savedidx2 > N):

                        for k in range (N-1, j, -1):
                            a = lines[k]
                            if (alttarget in a) and (a[:3] != "rz("):
                                flag = 1
                                break
                    else:

                        for k in range (savedidx2-1, j, -1):
                            a = lines[k]
                            if (alttarget in a) and (a[:3] != "rz("):
                                flag = 1
                                break
                     
                    # Swap to create a NULL op. forward in the circuit              

                    if saved3[:3] == "rx(":

                        null_fwd = 1

                    # Swap to create a NULL op. backward in the circuit
                    # If there are other gates on the target qubit between the two RXXs, don't swap (no NULL Op.), except if they're RX gates
                    #  Try to make RXXs adjacent to combine or purge them through the specialnullpurge function.

                    elif (element[:4] == "rxx(") and (alttarget in element) and (flag == 0):

                        null_bwd = 1

                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1):

                        lines.insert(savedidx2+1, saved1)
                        lines.pop(savedidx1)


                ### Case RXX(i,:) - RX(i) / RXX(:,j) - RX(j)

                if (saved2[:3] == "rx(") and (saved1[:4] == "rxx("):

                    # Evaluation of controlled qubit involved

                    cm = saved1.find(',')
                    subele = saved1[cm:]
                    end = subele.find(']')
                    alttarget = subele[cm+1:end+1]

                    # If there are gates between RXXs, check if they're RX gates. If so, don't raise a flag because of commutability.

                    for k in range (savedidx1, savedidx3):

                        a = lines[k]
                        if (alttarget in a) and (a[:3] != "rx("):
                            flag = 1
                            break

                    # Swap to create a NULL op. forward in the circuit. Try to make RXXs adjacent to combine or purge them through the specialnullpurge function.

                    if (saved3[:4] == "rxx(") and (alttarget in saved3) and (flag == 0):

                        null_fwd = 1

                    # Swap to create a NULL op. backward in the circuit

                    elif (element[:3] == "rx("):

                        null_bwd = 1

                    flag = 0

                    for k in range (savedidx1, savedidx2):

                        a = lines[k]
                        if (alttarget in a) and (a[:3] != "rx("):
                            flag = 1
                            break

                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1):

                        lines.pop(savedidx2)
                        lines.insert(savedidx1, saved2)


                ### Optimization

                # If swap was done, optimize

                if (null_fwd == 1) or (null_bwd == 1):

                    nullpurge(lines, nq, nullsum)
                    specialnullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done

                if (null_fwd == 1) or (null_bwd == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
                                                              #  to find  and assign as Saved values the last three target gates before the optimized section

                    N = len(lines)
                    saved1 = "NONE"
                    saved2 = "NONE"
                    saved3 = "NONE"
                    savedidx1 = N-1
                    savedidx2 = N-1
                    savedidx3 = N-1
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

                else:       # No swap performed

                    saved3 = saved2
                    savedidx3 = savedidx2
                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


