import math

########################################################################################################
#################################### NULL OPERATIONS PURGER ############################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "subcircuit" identifier parameter
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates

##### Check for existing Null Operations, with subsequent purge

### Function to purge all RZ gates right before measurement (negligible), starting from the first "last" RZ and proceeding forward

def finalz(lines, nq, subcircuit):

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

                # Check if last gate is RZ. If it is, purge it and resume scan from new end of circuit

                if (element[:2] == "z ") or (element[:2] == "s ") or (element[:2] == "t ") or (element[:4] == "sdg ") or (element[:4] == "tdg ") or (element[:3] == "rz("):

                    lines.pop(j)
                    N = len(lines)
                    j = N

                # If not, do nothing and proceed on other qubits
                    
                else:
                    break

            j -= 1    


### Function to purge all RZ gates right after qubit initialization (negligible), starting from the first RZ and proceeding forward

def initialz(lines, nq, subcircuit):

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

                # Check if first gate is RZ. If it is, purge it and resume scan from new beginning of circuit

                if (element[:2] == "z ") or (element[:2] == "s ") or (element[:2] == "t ") or (element[:4] == "sdg ") or (element[:4] == "tdg ") or (element[:3] == "rz("):

                    lines.pop(j)
                    N = len(lines)
                    j -= 1

                # If not, do nothing and proceed on other qubits
                    
                else:
                    break

            j += 1    



### Function to purge all coupled subsequent gates (they're all NULL operations), and to combine a couple of RX,RY,RZ gates in a single, equivalent gate

def nullpurge(lines, nq, nullsum):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        saved2 = "NONE"
        savedidx1 = N
        savedidx2 = N
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]

                ### H,X,Y,Z,CX,CZ Identity Case:
 
                if (saved1 == element) and ( (element[:2] == "h ") or (element[:2] == "x ") or (element[:2] == "y ") or (element[:2] == "z ") or (element[:3] == "cx ") or (element[:3] == "cz ") ):

                    # CX,CZ Case: Check to avoid wrong CX,CZ NULL couplings

                    if (element[:3] == "cx ") or (element[:3] == "cz "):

                        flag = 0

                        # Parsing to obtain other qubit involved in CX,CZ

                        alttarget = element.replace(' ', '').replace('cx', '').replace('cz', '').replace(target, '').replace(';','').replace(',', '')
                        
                        # If there are gates on the other qubit present in between the two CX/CZs, it's not a NULL op. and thus no optimization is permitted
                        
                        for k in range (savedidx1-1, j, -1):

                            if alttarget in lines[k]:
                                flag = 1

                        if flag == 0:

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

                    # Non-CX/CZ Case

                    else:
                        
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

                ### S,T,Tdg,Sdg Case: NULL op. if subsequent matrix and dagger matrix

                elif (element[:2] == "t ") or (element[:2] == "s ") or (element[:4] == "tdg ") or (element[:4] == "sdg "):

                    # T Case

                    if ( (element[:2] == "t ") and (saved1[:4] == "tdg ") ) or ( (element[:4] == "tdg ") and (saved1[:2] == "t ") ):

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

                    # S Case

                    elif ( (element[:2] == "s ") and (saved1[:4] == "sdg ") ) or ( (element[:4] == "sdg ") and (saved1[:2] == "s ") ):

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

                    # No NULL op.

                    else:

                        if j != 4:  # If first gate, don't even bother

                            saved2 = saved1
                            savedidx2 = savedidx1
                            saved1 = element
                            savedidx1 = j
                   
                ### RX,RY,RZ generic Case; NULL op. if the absolute value of the sum of the Theta parameters of two subsequent gates of the same type is about 0 (precision set by Threshold 2 parameter).
                ###  If not, then the two gates can be combined in one that applies an equivalent rotation

                elif ( (element[:3] == "rx(") and (saved1[:3] == "rx(") ) or ( (element[:3] == "ry(") and (saved1[:3] == "ry(") ) or ( (element[:3] == "rz(") and (saved1[:3] == "rz(") ):

                    # Isolate Theta parameters

                    qpos1 = element.find('q')
                    qpos2 = saved1.find('q')
                    sub1 = element[:qpos1]
                    sub2 = saved1[:qpos2]
                    rotation1 = sub1.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','').replace('rz','')
                    rotation2 = sub2.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','').replace('rz','')

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
                        lines[j] = element[:3] + tot + ") " + target + ";"
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

