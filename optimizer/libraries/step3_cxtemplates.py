import sys

sys.path.append('./')
from NULLOP_purgers import *
from step1_templates import *

########################################################################################################
#################################### CX TEMPLATES LIBRARY ##############################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates


### Function to translate a pattern of 4 distributed CX gates into a single long-range CX
###  ( CX(b,c) - CX(a,b) - CX(b,c) - CX(a,b) / CX(a,b) - CX(b,c) - CX(a,b) - CX(b,c) to CX(a,c) )

def cxdistribution(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        saved3 = "NONE"
        savedidx1 = N-1
        savedidx2 = N-1     # Giving these indexes the value N-1 assures that when not overwritten they remain ininfluent in the optimization phase
        savedidx3 = N-1
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                opt = 0

                element = lines[j]

                if (element[:3] == "cx ") and (saved1[:3] == "cx ") and (saved2[:3] == "cx ") and (saved3[:3] == "cx "):

                    # Extract target qubits involved

                    cme = element.find(',')
                    subele = element[cme+1:]
                    end = subele.find(']')
                    altqe = subele[:end+1]

                    cm1 = saved1.find(',')
                    subsav1 = saved1[cm1+1:]
                    end = subsav1.find(']')
                    altq1 = subsav1[:end+1]

                    cm2 = saved2.find(',')
                    subsav2 = saved2[cm2+1:]
                    end = subsav2.find(']')
                    altq2 = subsav2[:end+1]

                    cm3 = saved3.find(',')
                    subsav3 = saved3[cm3+1:]
                    end = subsav3.find(']')
                    altq3 = subsav3[:end+1]


                    ### Case 1: CX(a,b) - CX(b,c) - CX(a,b) - CX(b,c) to CX(a,c), in which the target qubit line in 'b'

                    if (altqe == target) and (saved1[:cm1] == ("cx " + target) ) and (altq2 == target) and (saved3[:cm3] == ("cx " + target) ):

                        # Check if it is a distribution case. If not, no template can be applied, so do nothing.

                        if (element[3:cme] != saved2[3:cm2]) or (altq1 != altq3):
                            pass

                        else:

                            # Check if distribution is uninterrupted by single-qubit gates. If not, no template can be applied, so do nothing.

                            flag1 = checkcxswapdown(lines, element, target, savedidx2, j)
                            flag2 = checkcxswapdown(lines, saved1, target, savedidx3, savedidx1)

                            if (flag1 != 0) or (flag2 != 0):
                                pass


                            # If template is applicable, save control and target qubit and proceed to optimize

                            else:

                                control = element[3:cme]
                                controlled = altq1
                                opt = 1

                    ### Case 2: CX(b,c) - CX(a,b) - CX(b,c) - CX(a,b) to CX(a,c), in which the target qubit line in 'b'

                    elif (element[:cme] == ("cx " + target) ) and (altq1 == target) and (saved2[:cm2] == ("cx " + target) ) and (altq3 == target):

                        # Check if it is a distribution case. If not, no template can be applied, so do nothing.

                        if (saved1[3:cm1] != saved3[3:cm3]) or (altqe != altq2):
                            pass

                        else:

                            # Check if distribution is uninterrupted by single-qubit gates. If not, no template can be applied, so do nothing.

                            flag1 = checkcxswapdown(lines, element, target, savedidx2, j)
                            flag2 = checkcxswapdown(lines, saved1, target, savedidx3, savedidx1)

                            if (flag1 != 0) or (flag2 != 0):
                                pass


                            # If template is applicable, save control and target qubit and proceed to optimize

                            else:

                                control = saved1[3:cm1]
                                controlled = altqe
                                opt = 1


                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if opt == 1:

                    lines.pop(savedidx3)
                    lines.pop(savedidx2)
                    lines.pop(savedidx1)
                    lines[j] = "cx " + control + "," + controlled + ";"

                    ### Array rearrangement

                    # General case: no assumptions on used templates can be made, we need to find and assign as Saved values the last three target gates before the optimized section

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

                else:       

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

### Function to translate a pattern of 3 distributed CX gates into a couple of CXs ( CX(b,c) - CX(a,b) - CX(b,c) to CX(a,b) - CX (a,c) / CX(a,c) - CX(a,b) )

def cxparallel(lines, nq, nullsum):

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

            # Parse through all .qasm lines that contain the target qubit

            if (target in lines[j]) or (j == 3):

                opt = 0

                element = lines[j]

                if (saved1[:3] == "cx ") and (saved2[:3] == "cx ") and (saved3[:3] == "cx "):

                    # Extract target qubits involved

                    cm1 = saved1.find(',')
                    subsav1 = saved1[cm1+1:]
                    end = subsav1.find(']')
                    altq1 = subsav1[:end+1]

                    cm2 = saved2.find(',')
                    subsav2 = saved2[cm2+1:]
                    end = subsav2.find(']')
                    altq2 = subsav2[:end+1]

                    cm3 = saved3.find(',')
                    subsav3 = saved3[cm3+1:]
                    end = subsav3.find(']')
                    altq3 = subsav3[:end+1]


                    ### Check distribution and act accordingly

                    if (saved1[:cm1] == ("cx " + target) ) and (altq2 == target) and (saved3[:cm3] == ("cx " + target) ):

                        # Check if it is a distribution case. If not, no template can be applied, so do nothing.

                        if altq1 != altq3:
                            pass

                        else:

                            # Check if distribution is uninterrupted by single-qubit gates. If not, no template can be applied, so do nothing.

                            flag = checkcxswapdown(lines, saved1, target, savedidx3, savedidx1)

                            if flag != 0:
                                pass


                            # If template is applicable, save control and target qubit and proceed to optimize

                            else:

                                control = saved2[3:cm2]
                                controlled = altq1
                                opt = 1

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if opt == 1:

                    # The template can transform into CX(a,b) - CX(a,c) and into CX(a,c) - CX(a,b). Choose the form which can grant a NULL Op.
                    #  If no NULL Op. can be achieved, settle for CX(a,b) - CX(a,c).

                    flagcx = checkcxswapup(lines, saved1, target, 3, savedidx1)
                    checkcx = lines[flagcx]

                    if ( saved4 == ("cx " + control + "," + target +";") ) or ( checkcx == ("cx " + control + "," + controlled + ";") ):

                        lines.pop(savedidx3)
                        lines[savedidx2] = "cx " + control + "," + controlled + ";"
                        lines.insert(savedidx2+1, "cx " + control + "," + target + ";")
                        lines.pop(savedidx1)

                    else:

                        lines.pop(savedidx3)
                        lines[savedidx2] = "cx " + control + "," + controlled + ";"
                        lines.insert(savedidx2, "cx " + control + "," + target + ";")
                        lines.pop(savedidx1)


                    nullpurge(lines, nq, nullsum)


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


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


###############################################################################################################################################################################################

### Function to translate a pattern of 2 distributed + 1 long-range CX gates into a couple of CXs ( CX(a,c) - CX(b,c) - CX(a,b) / CX(b,c) - CX(a,b) - CX(a,c) to CX(a,b) - CX(b,c) )

def cxmirror1(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        savedidx1 = N-1     # Giving this index the value N-1 assures that when not overwritten it remains ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                opt = 0

                element = lines[j]

                if (element[:3] == "cx ") and (saved1[:3] == "cx "):

                    # Extract target qubits involved

                    cme = element.find(',')
                    subele = element[cme+1:]
                    end = subele.find(']')
                    altqe = subele[:end+1]

                    cm1 = saved1.find(',')
                    subsav1 = saved1[cm1+1:]
                    end = subsav1.find(']')
                    altq1 = subsav1[:end+1]

                    control = saved1[3:cm1]
                    controlled = altqe


                    ### Check distribution and act accordingly

                    if (element[:cme] == ("cx " + target) ) and (altq1 == target):

                        # Check adjacent gates on altqe to detect template

                        flag1 = checkcxswapdown(lines, element, target, N, j)
                        flag2 = checkcxswapup(lines, element, target, 3, j)

                        gate1 = lines[flag1]
                        gate2 = lines[flag2]

                        # Check if template can be applied. If so, proceed to optimize

                        if gate1 == ("cx " + control + "," + controlled + ";") and (flag1 > savedidx1):

                            # Check if CXs are adjacent and uninterrupted by single-qubit gates. If not, do nothing

                            check = checkcxswapdown(lines, saved1, target, flag1, savedidx1)

                            if check == 0:

                                opt = 1
                                form = 0
                        
                            else:
                                pass

                        elif gate2 == ("cx " + control + "," + controlled + ";"):

                            # Check if CXs are adjacent and uninterrupted by single-qubit gates. If not, do nothing

                            check = checkcxswapup(lines, saved1, target, flag2, savedidx1)

                            if check == 0:

                                opt = 1
                                form = 1
                        
                            else:
                                pass

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if opt == 1:

                    if form == 0:

                        lines.pop(flag1)
                        lines.insert(savedidx1+1, "cx " + target + "," + controlled + ";")
                        lines.pop(j)

                    elif form == 1:

                        lines.pop(savedidx1)
                        lines.insert(j, "cx " + control + "," + target + ";")
                        lines.pop(flag2)

                    nullpurge(lines, nq, nullsum)


                    ### Array rearrangement

                    # General case: no assumptions on used templates can be made, we need to find and assign as Saved values the last three target gates before the optimized section

                    N = len(lines)
                    saved1 = "NONE"
                    savedidx1 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k

                else:       

                    saved1 = element
                    savedidx1 = j


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


### Function to translate a pattern of 2 distributed + 1 long-range CX gates into a couple of CXs ( CX(a,c) - CX(a,b) - CX(b,c) / CX(a,b) - CX(b,c) - CX(a,c) to CX(b,c) - CX(a,b) )

def cxmirror2(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        savedidx1 = N-1     # Giving this index the value N-1 assures that when not overwritten it remains ininfluent in the optimization phase
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                opt = 0

                element = lines[j]

                if (element[:3] == "cx ") and (saved1[:3] == "cx "):

                    # Extract target qubits involved

                    cme = element.find(',')
                    subele = element[cme+1:]
                    end = subele.find(']')
                    altqe = subele[:end+1]

                    cm1 = saved1.find(',')
                    subsav1 = saved1[cm1+1:]
                    end = subsav1.find(']')
                    altq1 = subsav1[:end+1]

                    control = element[3:cme]
                    controlled = altq1


                    ### Check distribution and act accordingly

                    if (saved1[:cm1] == ("cx " + target) ) and (altqe == target):

                        # Check adjacent gates on altq1 to detect template

                        flag1 = checkcxswapdown(lines, saved1, target, N, savedidx1)
                        flag2 = checkcxswapup(lines, saved1, target, 3, savedidx1)

                        gate1 = lines[flag1]
                        gate2 = lines[flag2]

                        # Check if template can be applied. If so, proceed to optimize

                        if gate1 == ("cx " + control + "," + controlled + ";"):

                            # Check if CXs are adjacent and uninterrupted by single-qubit gates. If not, do nothing

                            check = checkcxswapdown(lines, element, target, flag1, j)

                            if check == 0:

                                opt = 1
                                form = 0
                        
                            else:
                                pass

                        elif gate2 == ("cx " + control + "," + controlled + ";") and (flag2 < j):

                            # Check if CXs are adjacent and uninterrupted by single-qubit gates. If not, do nothing

                            check = checkcxswapup(lines, element, target, flag2, j)

                            if check == 0:

                                opt = 1
                                form = 1
                        
                            else:
                                pass

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if opt == 1:

                    if form == 0:

                        lines.pop(flag1)
                        lines.insert(savedidx1+1, "cx " + control + "," + target + ";")
                        lines.pop(j)

                    elif form == 1:

                        lines.pop(savedidx1)
                        lines.insert(j, "cx " + target + "," + controlled + ";")
                        lines.pop(flag2)

                    nullpurge(lines, nq, nullsum)


                    ### Array rearrangement

                    # General case: no assumptions on used templates can be made, we need to find and assign as Saved values the last three target gates before the optimized section

                    N = len(lines)
                    saved1 = "NONE"
                    savedidx1 = N-1
                    for k in range(N-1,j-1,-1):
                        if target in lines[k]:
                            saved1 = lines[k]
                            savedidx1 = k

                else:       

                    saved1 = element
                    savedidx1 = j


            if j > N-1:         # If simple or no optimization done, keep scanning. If heavy optimization done, resume from new array end
                j = savedidx1

            j -= 1


