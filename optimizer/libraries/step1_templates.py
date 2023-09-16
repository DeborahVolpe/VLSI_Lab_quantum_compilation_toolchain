import sys
sys.path.append('./')
from NULLOP_purgers import *

########################################################################################################
################################## EQUIVALENCE-BASED OPTIMIZER #########################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "subcircuit" identifier parameter
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates
#####   - "rcombo" rotation gates combination parameter. In second recursive iteration tells the function to try to make R gates of the same type adjacent, in order to 
#####       create some "lucky" NULL Ops and to ease future combination 

##### Check of circuital equivalence templates, and optimization of circuit list where possible

###############################################################################################################################################################################################


####################################### HELPER FUNCTIONS ###############################################


def checkcxswapdown(lines, cx, target, idxcx, idx):

    # Search for adjacent gate to CX/CZ on Target qubit starting from the end of the circuit
    # cx = string of the CX/CZ gate
    # target = qubit under analysis
    # idxcx = index of the first swappable gate (CX, forward in circuit)
    # idx = index of the second swappable gate (backward in circuit)

    flag = 0

    # Parsing to obtain other qubit involved in CX

    alttarget = cx.replace(' ', '').replace('cx', '').replace('cz', '').replace(target, '').replace(';','').replace(',', '')
                        
    # Check if simple swap is correct (doesn't affect other gates on controlled qubit) by returning a flag whose value is the index
    # of the first gate on the controlled qubit adjacent to the CX/CZ between the indexes of the gates involved in the swap.
    # If there are none, returned flag is 0 and simple swaps are allowed.
                    
    for k in range (idxcx-1, idx, -1):
        if alttarget in lines[k]:
            flag = k

    return flag

def checkcxswapup(lines, cx, target, idxcx, idx):

    # Search for adjacent gate to CX/CZ on Target qubit from the start of the circuit

    flag = 0

    # Parsing to obtain other qubit involved in CX

    alttarget = cx.replace(' ', '').replace('cx', '').replace('cz', '').replace(target, '').replace(';','').replace(',', '')
                        
    # Check if simple swap is correct (doesn't affect other gates on controlled qubit)
                    
    for k in range (idxcx+1, idx):
        if alttarget in lines[k]:
            flag = k

    return flag


###############################################################################################################################################################################################


##################################### TEMPLATES FUNCTIONS ##############################################


##### Template 1: RZ(i) - CX(i,:) to CX(i,:) - RZ(i) and viceversa / RZ(i) - CZ(i,:) to CZ(i,:) - RZ(i) and viceversa

def templ1(lines, nq, subcircuit, nullsum, rcombo):

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

            if (target in lines[j]) or (j == 3):      # (j = 3 covers the initialz optimization case)

                null_fwd = 0
                null_bwd = 0
                specialcase1 = 0
                specialcase2 = 0

                element = lines[j]
                closedbracket1 = saved1.find(']')
                closedbracket2 = saved2.find(']')
                c1 = closedbracket1 + 1
                c2 = closedbracket2 + 1

                ### Case RZ(i) - CX(i,:) / RZ(i) - CZ(i,:)

                if ( (saved1[:2] == "z ") or (saved1[:2] == "s ") or (saved1[:2] == "t ") or (saved1[:4] == "sdg ") or (saved1[:4] == "tdg ") or (saved1[:3] == "rz(") ) and ( (saved2[:c2] == ("cx "+target) ) or (saved2[:c2] == ("cz "+target) ) ):

                    flag = checkcxswapdown(lines, saved2, target, savedidx2, j)

                    # Special case 1: trying to move a RZ gate as last in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (saved3 == "NONE") and (subcircuit == 0) and (rcombo == 1):

                        specialcase1 = 1

                    if specialcase1 == 0:

                        # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases Z-CX-Z-CX or CX-Z-CX-Z).
                        # Try to create a NULL op. Z-Z, S-Sdg, Sdg-S, T-Tdg, Tdg-T. In second iteration, try also to make all RZ gates adjacent when possible:
                        # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                        if ( (saved1[:2] == "z ") and (saved3[:2] == "z ") )  or ( (saved1[:2] == "s ") and (saved3[:4] == "sdg ") ) or ( (saved1[:2] == "t ") and (saved3[:4] == "tdg ") ) or ( (saved1[:4] == "sdg ") and (saved3[:2] == "s ") ) or ( (saved1[:4] == "tdg ") and (saved3[:2] == "t ") ) or ( (saved1[:3] == "rz(" or saved1[:2] == "z " or saved1[:2] == "s " or saved1[:2] == "t " or saved1[:4] == "sdg " or saved1[:4] == "tdg ") and (saved3[:3] == "rz(" or saved3[:2] == "z " or saved3[:2] == "s " or saved3[:2] == "t " or saved3[:4] == "sdg " or saved3[:4] == "tdg ") and rcombo == 1):

                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit; don't swap if there are gates on the controlled qubit between the CX/CZs (no NULL Op.)

                        if (element == saved2) and (null_fwd == 0) and (flag == 0):

                            null_bwd = 1
 

                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase1 == 1):

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the controlled qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)
                            lines.pop(savedidx1)


                ### Case CX(i,:) - RZ(i) / CZ(i,:) - RZ(i)

                if ( (saved2[:2] == "z ") or (saved2[:2] == "s ") or (saved2[:2] == "t ") or (saved2[:4] == "sdg ") or (saved2[:4] == "tdg ") or (saved2[:3] == "rz(") ) and ( (saved1[:c1] == ("cx "+target) ) or (saved1[:c1] == ("cz "+target) ) ):

                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                    # Special case 2: trying to move a RZ gate as first in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (j == 3) and (subcircuit == 0) and (rcombo == 1):

                        specialcase2 = 1

                    if specialcase2 == 0:

                        # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases Z-CX-Z-CX or CX-Z-CX-Z); don't swap if there are gates on the controlled qubit between the CX/CZs (no NULL Op.)

                        if (saved1 == saved3) and (flag == 0):
                    
                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit. Try to create a NULL op. Z-Z, S-Sdg, Sdg-S, T-Tdg, Tdg-T. In second iteration, try also to make RZ gates adjacent when possible:
                        # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                        if ( ( (element[:2] == "z ") and (saved2[:2] == "z ") )  or ( (element[:2] == "s ") and (saved2[:4] == "sdg ") ) or ( (element[:2] == "t ") and (saved2[:4] == "tdg ") ) or ( (element[:4] == "sdg ") and (saved2[:2] == "s ") ) or ( (element[:4] == "tdg ") and (saved2[:2] == "t ") ) or ( (element[:3] == "rz(" or element[:2] == "z " or element[:2] == "s " or element[:2] == "t " or element[:4] == "sdg " or element[:4] == "tdg ") and (saved2[:3] == "rz(" or saved2[:2] == "z " or saved2[:2] == "s " or saved2[:2] == "t " or saved2[:4] == "sdg " or saved2[:4] == "tdg ") and (rcombo == 1) ) ) and (null_fwd == 0):
                            
                            null_bwd = 1


                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase2 == 1):

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the controlled qubit are present between the two template gates.

                        else:

                            lines.pop(savedidx2)
                            lines.insert(savedidx1, saved2)

                ### Optimization

                # If swap was done, optimize

                if (null_fwd == 1) or (null_bwd == 1):

                    nullpurge(lines, nq, nullsum)

                if specialcase1 == 1:

                    finalz(lines, nq, subcircuit)

                if specialcase2 == 1:

                    initialz(lines, nq, subcircuit)

                ### Rearrangement of the "saved array" depending on the optimization done

                if specialcase1 == 1:

                    N = len(lines)
                    saved1 = saved2
                    savedidx1 = savedidx2
                    saved2 = "NONE"
                    savedidx2 = N-1

                elif specialcase2 == 1:     # If specialcase2 is true, then there is no need to rearrange because "end of the line" was hit

                    pass

                elif (null_fwd == 1) or (null_bwd == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
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

    # Second iteration: try to make adjacent all R gates of same kind by exploiting the template

    if rcombo != 1:
        templ1(lines, nq, subcircuit, nullsum, 1)        

###############################################################################################################################################################################################


##### Template 2: RX(i) - CX(:,i) to CX(:,i) - RX(i) and viceversa

def templ2(lines, nq, nullsum, rcombo):

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
                comma1 = saved1.find(',')
                comma2 = saved2.find(',')
                c1 = comma1+1
                c2 = comma2+1

                ### Case RX(i) - CX(:,i)

                if ( (saved1[:2] == "x ") or (saved1[:3] == "rx(") ) and ( (saved2[:3] == "cx ") and (saved2[c2:-1] == target) ):

                    flag = checkcxswapdown(lines, saved2, target, savedidx2, j)

                    # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases X-CX-X-CX or CX-X-CX-X).
                    # Try to create a NULL op. X-X. In second iteration, try also to make all RX gates adjacent when possible:
                    # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                    if ( (saved1[:2] == "x ") and (saved3[:2] == "x ") ) or ( (saved1[:3] == "rx(" or saved1[:2] == "x ") and (saved3[:3] == "rx(" or saved3[:2] == "x ") and rcombo == 1):

                        null_fwd = 1

                    # Swap to create a NULL op. backward in the circuit
                    # If there are other gates on the target qubit between the two CXs, don't swap (no NULL Op.)

                    if (element == saved2) and (null_fwd == 0) and (flag == 0):

                        null_bwd = 1


                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1):

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)
                            lines.pop(savedidx1)


                ### Case CX(:,i) - RX(i)

                if ( (saved2[:2] == "x ") or (saved2[:3] == "rx(") ) and ( (saved1[c1:-1] == target) and (saved1[:3] == "cx ") ):

                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                    # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases X-CX-X-CX or CX-X-CX-X)
                    # If there are other gates on the target qubit between the two CXs, don't swap (no NULL Op.)

                    if (saved1 == saved3) and (flag == 0):

                        null_fwd = 1

                    # Swap to create a NULL op. backward in the circuit. Try to create a NULL op. X-X. In second iteration, try also to make all RX gates adjacent when possible:
                    # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                    if ( ( (element[:2] == "x ") and (saved2[:2] == "x ") ) or ( (element[:3] == "rx(" or element[:2] == "x ") and (saved2[:3] == "rx(" or saved2[:2] == "x ") and (rcombo == 1) ) ) and (null_fwd == 0):

                        null_bwd = 1


                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1):

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
                              
                            lines.pop(savedidx2)
                            lines.insert(savedidx1, saved2)


                ### Optimization

                # If swap was done, optimize

                if (null_fwd == 1) or (null_bwd == 1):

                    nullpurge(lines, nq, nullsum)

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

    # Second iteration: try to make adjacent all R gates of same kind by exploiting the template

    if rcombo != 1:
        templ2(lines, nq, nullsum, 1)


###############################################################################################################################################################################################


##### Template 3: RZ(i) - CZ(:,i) to CZ(:,i) - RZ(i) and viceversa

def templ3(lines, nq, subcircuit, nullsum, rcombo):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):      # (j = 3 covers the initialz optimization case)

                null_fwd = 0
                null_bwd = 0
                specialcase1 = 0
                specialcase2 = 0

                element = lines[j]
                comma1 = saved1.find(',')
                comma2 = saved2.find(',')
                c1 = comma1+1
                c2 = comma2+1

                ### Case RZ(i) - CZ(:,i)

                if ( (saved1[:2] == "z ") or (saved1[:2] == "s ") or (saved1[:2] == "t ") or (saved1[:4] == "sdg ") or (saved1[:4] == "tdg ") or (saved1[:3] == "rz(") ) and ( (saved2[:3] == "cz ") and (saved2[c2:-1] == target) ):

                    flag = checkcxswapdown(lines, saved2, target, savedidx2, j)

                    # Special case 1: trying to move a RZ gate as last in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (saved3 == "NONE") and (subcircuit == 0) and (rcombo == 1):

                        specialcase1 = 1

                    if specialcase1 == 0:

                        # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases Z-CZ-Z-CZ or CZ-Z-CZ-Z).
                        # Try to create a NULL op. Z-Z, T-Tdg, S-Sdg. In second iteration, try also to make all RZ gates adjacent when possible:
                        # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                        if ( (saved1[:2] == "z ") and (saved3[:2] == "z ") ) or ( (saved1[:2] == "t ") and (saved3[:4] == "tdg ") ) or ( (saved1[:2] == "s ") and (saved3[:4] == "sdg ") ) or ( (saved1[:4] == "tdg ") and (saved3[:2] == "t ") ) or ( (saved1[:4] == "sdg ") and (saved3[:2] == "s ") ) or ( (saved1[:3] == "rz(" or saved1[:2] == "z " or saved1[:2] == "s " or saved1[:2] == "t " or saved1[:4] == "sdg " or saved1[:4] == "tdg ") and (saved3[:3] == "rz(" or saved3[:2] == "z " or saved3[:2] == "s " or saved3[:2] == "t " or saved3[:4] == "sdg " or saved3[:4] == "tdg ") and rcombo == 1):

                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit

                        if (element == saved2) and (null_fwd == 0):

                            null_bwd = 1


                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase1 == 1):

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)
                            lines.pop(savedidx1)


                ### Case CZ(:,i) - RZ(i)

                if ( (saved2[:2] == "z ") or (saved2[:2] == "s ") or (saved2[:2] == "t ") or (saved2[:4] == "sdg ") or (saved2[:4] == "tdg ") or (saved2[:3] == "rz(") ) and ( (saved1[c1:-1] == target) and (saved1[:3] == "cz ") ):

                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                    # Special case 2: trying to move a RZ gate as first in the circuit and purging it (done on second iteration to exploit eventual more advantageous templates first)

                    if (j == 3) and (subcircuit == 0) and (rcombo == 1):

                        specialcase2 = 1

                    if specialcase2 == 0:

                        # Swap to create a NULL op. forward in the circuit (this also cover the double combo cases Z-CX-Z-CX or CX-Z-CX-Z)

                        if (saved3[:3] == "cz ") and (saved3[-5:-1] == target):
                    
                            null_fwd = 1

                        # Swap to create a NULL op. backward in the circuit. Try to create a NULL op. Z-Z, S-Sdg, Sdg-S, T-Tdg, Tdg-T. In second iteration, try also to make all RZ gates adjacent when possible:
                        # if you're lucky, you got a NULL op. ; if not, you paid no cost and the gates can now be combined in a future transpiling

                        if ( ( (element[:2] == "z ") and (saved2[:2] == "z ") ) or ( (element[:2] == "t ") and (saved2[:4] == "tdg ") ) or ( (element[:2] == "s ") and (saved2[:4] == "sdg ") ) or ( (element[:4] == "tdg ") and (saved2[:2] == "t ") ) or ( (element[:4] == "sdg ") and (saved2[:2] == "s ") ) or ( (element[:3] == "rz(" or element[:2] == "z " or element[:2] == "s " or element[:2] == "t " or element[:4] == "sdg " or element[:4] == "tdg ") and (saved2[:3] == "rz(" or saved2[:2] == "z " or saved2[:2] == "s " or saved2[:2] == "t " or saved2[:4] == "sdg " or saved2[:4] == "tdg ") and rcombo == 1) ) and (null_fwd == 0):

                            null_bwd = 1


                    # If swap is required, perform it.

                    if (null_fwd == 1) or (null_bwd == 1) or (specialcase2 == 1):

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                        # Simple swap allowed

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1

                        # Complex swap is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
                              
                            lines.pop(savedidx2)
                            lines.insert(savedidx1, saved2)


                ### Optimization

                # If swap was done, optimize

                if (null_fwd == 1) or (null_bwd == 1):

                    nullpurge(lines, nq, nullsum)

                if specialcase1 == 1:

                    finalz(lines, nq, subcircuit)

                if specialcase2 == 1:

                    initialz(lines, nq, subcircuit)


                ### Rearrangement of the "saved array" depending on the optimization done

                if specialcase1 == 1:

                    N = len(lines)
                    saved1 = saved2
                    savedidx1 = savedidx2
                    saved2 = "NONE"
                    savedidx2 = N-1

                elif specialcase2 == 1:     # If specialcase2 is true, then there is no need to rearrange because "end of the line" was hit

                    pass

                elif (null_fwd == 1) or (null_bwd == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
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

    # Second iteration: try to make adjacent all R gates of same kind by exploiting the template

    if rcombo != 1:
        templ3(lines, nq, subcircuit, nullsum, 1)


###############################################################################################################################################################################################


##### Template 4: X(i) - CX(i,j) to CX(i,j) - X(i) - X(j) and viceversa

def templ4(lines, nq, nullsum, pi):

    for i in range(0,nq):

        N = len(lines)
        l = len(pi)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):

                opt_1 = 0
                opt_2 = 0
                opt_3 = 0
                opt_4 = 0

                element = lines[j]
                closedbracket1 = saved1.find(']')
                closedbracket2 = saved2.find(']')
                c1 = closedbracket1 + 1
                c2 = closedbracket2 + 1
                comma1 = saved1.find(',')
                comma2 = saved2.find(',')
                cm1 = comma1+1
                cm2 = comma2+1

                ###### In cases X(i) - CX(i,:) / CX(i,:) - X(i) the template is worth the while only if it creates a X NULL Op. on the controlled qubit, on the control qubit
                ######   or on both qubits and if it creates a CX NULL Op. .
                ##### In all the reverse cases the template is always worth it, because it purges an X gate "for free"
                
                ### Case X(i) - CX(i,j)

                if ( (saved1[:2] == "x ") or (saved1[:l+4] == "rx(" + pi + ")") or (saved1[:l+5] == "rx(-" + pi + ")") ) and (saved2[:c2] == ("cx "+target) ):

                    flag = checkcxswapdown(lines, saved2, target, savedidx2, j)

                    # Viceversa case and adjacent gates detection

                    flag1 = checkcxswapdown(lines, saved2, target, N, savedidx2)
                    flag2 = checkcxswapup(lines, saved2, target, 3, savedidx2)

                    adj_gate1 = lines[flag1]
                    adj_gate2 = lines[flag2]

                    ### Case X(i) - X(j) - CX(i,j)

                    if (adj_gate2[:2] == "x ") or (adj_gate2[:l+4] == "rx(" + pi + ")") or (adj_gate2[:l+5] == "rx(-" + pi + ")"):

                        opt_3 = 1

                    if ( ( (saved3[:2] == "x ") or (saved3[:l+4] == "rx(" + pi + ")") or (saved3[:l+5] == "rx(-" + pi + ")") ) or ( (adj_gate1[:2] == "x ") or (adj_gate1[:l+4] == "rx(" + pi + ")") or (adj_gate1[:l+5] == "rx(-" + pi + ")") ) or ( (element == saved2) and (flag == 0) ) ) and (opt_3 != 1): 

                        opt_1 = 1

                    # If template is advantageous, apply it.

                    if opt_1 == 1:

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap + X insertion

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.insert(savedidx2, "x " + saved2[cm2:])

                        # Complex swap + X insertion is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:

                            lines.insert(savedidx2+1, saved1)
                            lines.insert(savedidx2+1, "x " + saved2[cm2:])
                            lines.pop(savedidx1)

                    if opt_3 == 1:

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap + X purge

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.pop(flag2)

                        # Complex swap + X purge is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)

                            if flag2 > savedidx1:
                                lines.pop(flag2)
                                lines.pop(savedidx1)
                            else:
                                lines.pop(savedidx1)
                                lines.pop(flag2)

                ### Case CX(i,j) - X(i)

                if ( (saved2[:2] == "x ") or (saved2[:l+4] == "rx(" + pi + ")") or (saved2[:l+5] == "rx(-" + pi + ")") ) and (saved1[:c1] == ("cx "+target) ):

                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                    # Viceversa case and adjacent gates detection

                    flag1 = checkcxswapdown(lines, saved1, target, N, savedidx1)
                    flag2 = checkcxswapup(lines, saved1, target, 3, savedidx1)

                    adj_gate1 = lines[flag1]
                    adj_gate2 = lines[flag2]

                    ### Case CX(i,j) - X(i) - X(j)

                    if (adj_gate1[:2] == "x ") or (adj_gate1[:l+4] == "rx(" + pi + ")") or (adj_gate1[:l+5] == "rx(-" + pi + ")"):

                        opt_4 = 1


                    if ( ( (element[:2] == "x ") or (element[:l+4] == "rx(" + pi + ")") or (element[:l+5] == "rx(-" + pi + ")") ) or ( (adj_gate2[:2] == "x ") or (adj_gate2[:l+4] == "rx(" + pi + ")") or (adj_gate2[:l+5] == "rx(-" + pi + ")") ) or ( (saved3 == saved1) and (flag == 0) ) ) and (opt_4 != 1): 

                        opt_2 = 1

                    # If template is advantageous, apply it.

                    if opt_2 == 1:

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                        # Simple swap + X insertion

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.insert(savedidx1, "x " + saved1[cm1:])

                        # Complex swap + X insertion is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:

                            lines.pop(savedidx2)
                            lines.insert(savedidx1, saved2)
                            lines.insert(savedidx1, "x " + saved1[cm1:])

                    if opt_4 == 1:

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                        # Simple swap + X purge

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.pop(flag1)

                        # Complex swap + X purge is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            if flag1 > savedidx2:
                                lines.pop(flag1)
                                lines.pop(savedidx2)
                            else:
                                lines.pop(savedidx2)
                                lines.pop(flag1)

                            lines.insert(savedidx1, saved2)


                ### Optimization

                # If template was used, optimize

                if (opt_1 == 1) or (opt_2 == 1) or (opt_3 == 1) or (opt_4 == 1):

                    nullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done

                if (opt_1 == 1) or (opt_2 == 1) or (opt_3 == 1) or (opt_4 == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
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


###############################################################################################################################################################################################


##### Template 5: Z(j) - CX(i,j) to CX(i,j) - Z(i) - Z(j) and viceversa

def templ5(lines, nq, nullsum, subcircuit, pi):

    # Preemptive call of finalz/initialz to ensure circuit "cleanliness"

    if subcircuit == 0:

        finalz(lines, nq, subcircuit)
        initialz(lines, nq, subcircuit)

    for i in range(0,nq):

        N = len(lines)
        l = len(pi)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):      # (j = 3 covers the initialz optimization case)

                opt_1 = 0
                opt_2 = 0
                opt_3 = 0
                opt_4 = 0
                specialcase1 = 0
                specialcase2 = 0

                element = lines[j]
                closedbracket1 = saved1.find(']')
                closedbracket2 = saved2.find(']')
                c1 = closedbracket1 + 1
                c2 = closedbracket2 + 1
                comma1 = saved1.find(',')
                comma2 = saved2.find(',')
                cm1 = comma1+1
                cm2 = comma2+1

                ###### In cases Z(j) - CX(i,j) / CX(i,j) - Z(j) the template is worth the while only if it creates a Z NULL Op. on the controlled qubit, on the control qubit
                ######   or on both qubits and if it creates a CX NULL Op., and also when it moves Z gates at the end/beginning of the circuit.
                ##### In all the reverse cases the template is always worth it, because it purges a Z gate "for free"
                
                ### Case Z(j) - CX(i,j)

                if ( (saved1[:2] == "z ") or (saved1[:l+4] == "rz(" + pi + ")") or (saved1[:l+5] == "rz(-" + pi + ")") ) and ( (saved2[:3] == "cx ") and (saved2[cm2:-1] == target) ):

                    flag = checkcxswapdown(lines, saved2, target, savedidx2, j)

                    # Viceversa case and adjacent gates detection

                    flag1 = checkcxswapdown(lines, saved2, target, N, savedidx2)
                    flag2 = checkcxswapup(lines, saved2, target, 3, savedidx2)

                    adj_gate1 = lines[flag1]
                    adj_gate2 = lines[flag2]

                    ##### Special case 1: finalz. If standard case, do it only if both Z gates are pushed to the end of the circuit, otherwise there is no real gain.
                        
                    ### Case Z(i) - Z(j) - CX(i,j). If resulting Z is pushed to the end of the circuit, call finalz additionally to nullpurge.

                    if (adj_gate2[:2] == "z ") or (adj_gate2[:l+4] == "rz(" + pi + ")") or (adj_gate2[:l+5] == "rz(-" + pi + ")"):

                        if (subcircuit == 0) and (saved3 == "NONE"):

                            specialcase1 = 1

                        opt_3 = 1

                    if ( ( (saved3[:2] == "z ") or (saved3[:l+4] == "rz(" + pi + ")") or (saved3[:l+5] == "rz(-" + pi + ")") ) or ( (adj_gate1[:2] == "z ") or (adj_gate1[:l+4] == "rz(" + pi + ")") or (adj_gate1[:l+5] == "rz(-" + pi + ")") ) or ( (element == saved2) and (flag == 0) ) or ( (subcircuit == 0) and (saved3 == "NONE") and (flag1 == 0) ) ) and (opt_3 != 1): 

                        if (subcircuit == 0) and (saved3 == "NONE") and (flag1 == 0):

                            specialcase1 = 1

                        opt_1 = 1

                    # If template is advantageous, apply it.

                    if opt_1 == 1:

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap + Z insertion

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.insert(savedidx2, "z " + saved2[3:c2] + ";")

                        # Complex swap + Z insertion is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)
                            lines.insert(savedidx2+1, "z " + saved2[3:c2] + ";")
                            lines.pop(savedidx1)

                    if opt_3 == 1:

                        flag = checkcxswapdown(lines, saved2, target, savedidx2, savedidx1)

                        # Simple swap + Z purge

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.pop(flag2)

                        # Complex swap + Z purge is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.

                        else:
 
                            lines.insert(savedidx2+1, saved1)

                            if flag2 > savedidx1:
                                lines.pop(flag2)
                                lines.pop(savedidx1)
                            else:
                                lines.pop(savedidx1)
                                lines.pop(flag2)

                
                ### Case CX(i,j) - Z(j)

                if ( (saved2[:2] == "z ") or (saved2[:l+4] == "rz(" + pi + ")") or (saved2[:l+5] == "rz(-" + pi + ")") ) and ( (saved1[:3] == "cx ") and (saved1[cm1:-1] == target) ):

                    flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                    # Viceversa case and adjacent gates detection

                    flag1 = checkcxswapdown(lines, saved1, target, N, savedidx1)
                    flag2 = checkcxswapup(lines, saved1, target, 3, savedidx1)

                    adj_gate1 = lines[flag1]
                    adj_gate2 = lines[flag2]

                    ##### Special case 2: initialz. Do it only if both Z gates are pushed to the start of the circuit, otherwise there is no real gain.

                    ### Case CX(i,j) - Z(i) - Z(j). If resulting Z is pushed to the end of the circuit, call initialz additionally to nullpurge.

                    if (adj_gate1[:2] == "z ") or (adj_gate1[:l+4] == "rz(" + pi + ")") or (adj_gate1[:l+5] == "rz(-" + pi + ")"):

                        if (subcircuit == 0) and (j == 3):

                            specialcase2 = 1

                        opt_4 = 1


                    if ( ( (element[:2] == "z ") or (element[:l+4] == "rz(" + pi + ")") or (element[:l+5] == "rz(-" + pi + ")") ) or ( (adj_gate2[:2] == "z ") or (adj_gate2[:l+4] == "rz(" + pi + ")") or (adj_gate2[:l+5] == "rz(-" + pi + ")") ) or ( (saved3 == saved1) and (flag == 0) ) or ( (subcircuit == 0) and (j == 3) and (flag2 == 0) ) ) and (opt_4 != 1):

                        if (subcircuit == 0) and (j == 3) and (flag2 == 0):

                            specialcase2 = 1

                        opt_2 = 1

                    # If template is advantageous, apply it.

                    if opt_2 == 1:

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx2)

                        # Simple swap + Z insertion

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.insert(savedidx1, "z " + saved1[3:c1] + ";")

                        # Complex swap + Z insertion is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.


                        else:
 
                            lines.pop(savedidx2)
                            lines.insert(savedidx1, saved2)
                            lines.insert(savedidx1, "z " + saved1[3:c1] + ";")


                    if opt_4 == 1:

                        flag = checkcxswapup(lines, saved1, target, savedidx1, savedidx3)

                        # Simple swap + Z purge

                        if flag == 0:

                            lines[savedidx1] = saved2
                            lines[savedidx2] = saved1
                            lines.pop(flag1)

                        # Complex swap + Z purge is needed to retain circuit matrix: easiest way is to insert new template and delete substituted gates.
                        #   This covers every case in which multiple gates on the control qubit are present between the two template gates.


                        else:
 
                            if flag1 > savedidx2:
                                lines.pop(flag1)
                                lines.pop(savedidx2)
                            else:
                                lines.pop(savedidx2)
                                lines.pop(flag1)

                            lines.insert(savedidx1, saved2)


                ### Optimization

                # If template was used, optimize

                if specialcase1 == 1:

                    finalz(lines, nq, subcircuit)

                if specialcase2 == 1:

                    initialz(lines, nq, subcircuit)

                if (opt_1 == 1) or (opt_2 == 1) or (opt_3 == 1) or (opt_4 == 1):

                    nullpurge(lines, nq, nullsum)


                ### Rearrangement of the "saved array" depending on the optimization done


                if (opt_1 == 1) or (opt_2 == 1) or (opt_3 == 1) or (opt_4 == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
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


###############################################################################################################################################################################################


##### Template H-1: H(i) - H(j) - CX(i,j) - H(i) - H(j) to CX(j,i) (Specific case of Templ H-2)

def templh1(lines, nq):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):

                opt = 0

                element = lines[j]
                closedbracket = saved1.find(']')
                c = closedbracket + 1
                comma = saved1.find(',')
                cm = comma+1

                #### Applying this template is ALWAYS worthy when possible, because it brings a gains of 4 purged single-qubit gates
                
                if (element[:2] == "h ") and (saved1[:c] == "cx " + target) and (saved2[:2] == "h "):

                    # Check for adjacent H gates on controlled qubit

                    flagh1 = checkcxswapdown(lines, saved1, target, N, savedidx1)
                    flagh2 = checkcxswapup(lines, saved1, target, 3, savedidx1)

                    adj_gate1 = lines[flagh1]
                    adj_gate2 = lines[flagh2]

                    if (adj_gate1[:2] == "h ") and (adj_gate2[:2] == "h "):
                        
                        opt = 1

                    # If template is advantageous, apply it.

                    if opt == 1:

                        altqubit = saved1[cm:-1]

                        lines[savedidx1] = "cx " + altqubit + "," + target + ";"

                        # H gates removal

                        if flagh1 > savedidx2:

                            lines.pop(flagh1)
                            lines.pop(savedidx2)

                        else:

                            lines.pop(savedidx2)
                            lines.pop(flagh1)

                        if flagh2 < j:

                            lines.pop(j)
                            lines.pop(flagh2)

                        else:

                            lines.pop(flagh2)
                            lines.pop(j)


                ### Rearrangement of the "saved array" depending on the optimization done


                if opt == 1:      # If general case swap, no assumptions can be made on how many gates were purged: we need
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

                else:       # No swap performed

                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


###############################################################################################################################################################################################


##### Template H-2: H(i) - H(j) - CX(i,j) to CX(j,i) - H(i) - H(j) and viceversa

def templh2(lines, nq, nullsum):
    
    re = 0

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        j = N-1

        while j > 2:

            if (target in lines[j]) or (j == 3):

                opt_1 = 0
                opt_2 = 0

                element = lines[j]
                closedbracket1 = saved1.find(']')
                closedbracket2 = saved2.find(']')
                c1 = closedbracket1 + 1
                c2 = closedbracket2 + 1
                comma1 = saved1.find(',')
                comma2 = saved2.find(',')
                cm1 = comma1+1
                cm2 = comma2+1

                ### The template is worth applying if it creates a NULL Op. or if two CX gates with inverted control and controlled qubit are adjacent:
                ###     this way, one can purge the H gates in the H(i) - H(j) - N CX(i,j) or (j,i) - H(i) - H(j) scenario. Otherwise, the application is harmless.
                ###     However the functions ensures this movement is done only BACKWARDS in the circuit, since it could bring to a loop in certain unique scenarios.

                ### Case H(i) - H(j) - CX(i,j)

                if (saved1[:2] == "h ") and (saved2[:c2] == ("cx "+target) ):

                    flagh1 = checkcxswapdown(lines, saved2, target, N, savedidx2)
                    flagh2 = checkcxswapup(lines, saved2, target, 3, savedidx2)
                    altqubit = saved2[cm2:-1]

                    adj_gate1 = lines[flagh1]
                    adj_gate2 = lines[flagh2]

                    if adj_gate2[:2] == "h ":

                        if (adj_gate1[:2] == "h ") or (saved3[:2] == "h ") or (element == "cx "+altqubit+","+target+";"):

                            opt_1 = 1

                    # If template is advantageous, apply it.

                    if opt_1 == 1:

                        lines.insert(savedidx2+1, "h "+altqubit+";")
                        lines.insert(savedidx2+1, "h "+target+";")
                        lines.insert(savedidx2+1, "cx "+altqubit+","+target+";")
                        lines.pop(savedidx2)
                        if flagh2 > savedidx1:
                            lines.pop(flagh2)
                            lines.pop(savedidx1)
                        else:
                            lines.pop(savedidx1)
                            lines.pop(flagh2)


                ### Case CX(i,j) - H(i) - H(j) 

                if (saved2[:2] == "h ") and (saved1[:c1] == ("cx "+target) ):

                    flagh1 = checkcxswapdown(lines, saved1, target, N, savedidx1)
                    flagh2 = checkcxswapup(lines, saved1, target, 3, savedidx1)
                    altqubit = saved1[cm1:-1]

                    adj_gate1 = lines[flagh1]
                    adj_gate2 = lines[flagh2]

                    if adj_gate1[:2] == "h ":

                        if (adj_gate2[:2] == "h ") or (element[:2] == "h ") or (element == "cx "+altqubit+","+target+";") or (saved3 == "cx "+altqubit+","+target+";") or (saved3 == saved1):

                            opt_2 = 1

                            if (element == "cx "+altqubit+","+target+";") or (saved3 == saved1):
                
                                re = 1     # Defines iterative recall to ensure clusters of alternated CXs move their adjacent H gates backwards, without loops

                        
                    # If template is advantageous, apply it.

                    if opt_2 == 1:

                        if flagh1 > savedidx2:
                            lines.pop(flagh1)
                            lines.pop(savedidx2)
                        else:
                            lines.pop(savedidx2)
                            lines.pop(flagh1)
                        lines.insert(savedidx1+1, "cx "+altqubit+","+target+";")
                        lines.insert(savedidx1+1, "h "+altqubit+";")
                        lines.insert(savedidx1+1, "h "+target+";")
                        lines.pop(savedidx1)


                ### Optimization

                # If template was used, optimize

                if (opt_1 == 1) or (opt_2 == 1):

                    nullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done


                if (opt_1 == 1) or (opt_2 == 1):      # If general case swap, no assumptions can be made on how many gates were purged: we need
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

    if re > 0:      # Reiteration
        templh2(lines, nq, nullsum)


###############################################################################################################################################################################################


##### Template H-3: H(i) - CX(i,j) - H(i) to H(j) - CX(j,i) - H(j) and viceversa

def templh3(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        saved4 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        savedidx4 = N-1
        j = N-1

        while j > 1:

            if (target in lines[j]) or (j == 2) or (j == 3):

                opt = 0

                element = lines[j]
                closedbracket = saved2.find(']')
                c = closedbracket + 1
                comma = saved2.find(',')
                cm = comma+1

                ### The template is worth applying if it creates a NULL Op. or if it makes adjacent the CX and a RX gate on the controlled qubit (possible Template 2 application)

                if (saved1[:2] == "h ") and (saved2[:c] == "cx " + target) and (saved3[:2] == "h "):

                    flagh1 = checkcxswapdown(lines, saved2, target, N, savedidx2)
                    flagh2 = checkcxswapup(lines, saved2, target, 3, savedidx2)
                    altqubit = saved2[cm:-1]

                    adj_gate1 = lines[flagh1]
                    adj_gate2 = lines[flagh2]

                    if (adj_gate1[:2] == "h ") or (adj_gate2[:2] == "h ") or ( (element[:2] == "x " or element[:3] == "rx(") or (saved4[:2] == "x " or saved4[:3] == "rx(") ):

                        opt = 1
                        
                    # If template is advantageous, apply it.

                    if opt == 1:

                        lines.pop(savedidx3)
                        lines.insert(savedidx2+1, "h "+altqubit+";")
                        lines.insert(savedidx2+1, "cx "+altqubit+","+target+";")
                        lines.insert(savedidx2+1, "h "+altqubit+";")
                        lines.pop(savedidx2)
                        lines.pop(savedidx1)


                ### Optimization

                # If template was used, optimize

                if opt == 1:

                    nullpurge(lines, nq, nullsum)

                ### Rearrangement of the "saved array" depending on the optimization done


                if opt == 1:      # If general case swap, no assumptions can be made on how many gates were purged: we need
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

                else:       # No application

                    saved4 = saved3
                    savedidx4 = savedidx3
                    saved3 = saved2
                    savedidx3 = savedidx2
                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1

