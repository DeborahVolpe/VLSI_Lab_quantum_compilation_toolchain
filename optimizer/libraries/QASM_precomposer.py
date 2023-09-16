########################################################################################################
########################################## PRECOMPOSER #################################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "pi", "halfpi", "quarterpi" approximated values calculated with threshold defined in .cfg file

##### Preliminary disposition of the circuit by decomposition in basic gates, translation in notable gates and combination of S ad T type gates

### Decomposition of gates applied universally (ex. "h q;" -> "h q[0]; h q[1]; h q[2];" etc.)

def universaldecomposer(lines, nq):

    N = len(lines)
    i = 4

    while i < N:

        x = lines[i]
        if x[-3:] == " q;":
        
            x = x[:-3]
            lines[i] = x + " q[0];"

            for m in range(nq-1, 0, -1):

                lines.insert(i+1, x + " q[" + str(m) + "];")

            N = N + nq-1

        i += 1



### Translate all RZ(pi/4) in T or Tdg gates, all RZ(pi/2) in S or Sdg gates, all RZ(pi) in Z gates, all RX(pi) in X gates, and all RY(pi) in Y gates
###     (Approximation defined by Threshold 1 parameter)
 
def translator(lines, pi, halfpi, quarterpi):

    N = len(lines)

    for j in range(N-1, 3, -1):

        element = lines[j]

        qpos = element.find('q')
        closedbracket = element.find(')')

        # Conversion to X,Y,Z,S,T,Sdg,Tdg

        if element[:8] == "rz(pi/4)":
            lines[j] = "t " + element[qpos:]
        if element[:9] == "rz(-pi/4)":
            lines[j] = "tdg " + element[qpos:]

        if element[:8] == "rz(pi/2)":
            lines[j] = "s " + element[qpos:]
        if element[:9] == "rz(-pi/2)":
            lines[j] = "sdg " + element[qpos:]

        if element[:6] == "rz(pi)":
            lines[j] = "z " + element[qpos:]
        if element[:7] == "rz(-pi)":
            lines[j] = "z " + element[qpos:]

        if element[:6] == "rx(pi)":
            lines[j] = "x " + element[qpos:]
        if element[:7] == "rx(-pi)":
            lines[j] = "x " + element[qpos:]

        if element[:6] == "ry(pi)":
            lines[j] = "y " + element[qpos:]
        if element[:7] == "ry(-pi)":
            lines[j] = "y " + element[qpos:]

        if element[:closedbracket] == "rz(" + quarterpi:
            lines[j] = "t " + element[qpos:]
        if element[:closedbracket] == "rz(-" + quarterpi:
            lines[j] = "tdg " + element[qpos:]

        if element[:closedbracket] == "rz(" + halfpi:
            lines[j] = "s " + element[qpos:]
        if element[:closedbracket] == "rz(-" + halfpi:
            lines[j] = "sdg " + element[qpos:]

        if element[:closedbracket] == "rz(" + pi:
            lines[j] = "z " + element[qpos:]
        if element[:closedbracket] == "rz(-" + pi:
            lines[j] = "z " + element[qpos:]

        if element[:closedbracket] == "rx(" + pi:
            lines[j] = "x " + element[qpos:]
        if element[:closedbracket] == "rx(-" + pi:
            lines[j] = "x " + element[qpos:]

        if element[:closedbracket] == "ry(" + pi:
            lines[j] = "y " + element[qpos:]
        if element[:closedbracket] == "ry(-" + pi:
            lines[j] = "y " + element[qpos:]

        # RX,RY,RZ conversion to floating point notation

        pi = float(pi)

        if "pi" in lines[j]:

            # Evaluation of expression in a floating point value (with precision equal to Threshold 1)

            l = len(str(pi))
            subelem = element[:qpos]
            rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','').replace('rz','').replace('u1','').replace('u2','').replace('u3','')
            rotation = eval(rotation)
            rotation = round(rotation, l-1)
            rotation = str(rotation)

            # Isolation of old Theta parameter and replacement

            elelen = len(element)

            for n in range(0,elelen):
                if element[n] == "(":
                    break

            for m in range(0,elelen):
                if element[m] == ")":
                    break
            
            lines[j] = element[:n+1] + rotation + element[m:]          

        pi = str(pi)

### Decompose all Toffoli gates in basic gates

def toffolidecomposer(lines):

    N = len(lines)

    for j in range(N-1, 3, -1):

        element = lines[j]

        if element[:4] == "ccx ":

            # Parsing of the qubits a, b, c

            element.replace(' ', '')
            
            qpos1 = element.find('q')
            qpos2 = element.find('q', qpos1+1)
            qpos3 = element.find('q', qpos2+1)
            closedbracket1 = element.find(']')
            closedbracket2 = element.find(']', closedbracket1+1)
            closedbracket3 = element.find(']', closedbracket2+1)
            a = element[qpos1:closedbracket1+1]
            b = element[qpos2:closedbracket2+1]
            c = element[qpos3:closedbracket3+1]

            lines.insert(j, "h "+c+";")
            lines.insert(j+1, "cx "+b+","+c+";")
            lines.insert(j+2, "tdg "+c+";")
            lines.insert(j+3, "cx "+a+","+c+";")
            lines.insert(j+4, "t "+c+";")
            lines.insert(j+5, "cx "+b+","+c+";")
            lines.insert(j+6, "tdg "+c+";")
            lines.insert(j+7, "cx "+a+","+c+";")
            lines.insert(j+8, "t "+b+";")
            lines.insert(j+9, "t "+c+";")
            lines.insert(j+10, "h "+c+";")
            lines.insert(j+11, "cx "+a+","+b+";")
            lines.insert(j+12, "t "+a+";")
            lines.insert(j+13, "tdg "+b+";")
            lines.insert(j+14, "cx "+a+","+b+";")
            lines.pop(j+15)



### Preliminary combination of S,T,Sdg,Tdg gates (ex. S+S = Z, Tdg+Tdg = Sdg)

def precombo_st(lines, nq):

    for i in range(0,nq):

        N = len(lines)
        saved1 = "NONE"
        savedidx1 = N
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]

                ### S Case

                if element[0] == "s":

                    # S + S Case

                    if (element[:2] == "s ") and (element == saved1):

                        lines.pop(savedidx1)
                        lines[j] = "z " + element[2:]
                        element = lines[j]

                    # Sdg + Sdg Case

                    if (element[:4] == "sdg ") and (element == saved1):

                        lines.pop(savedidx1)
                        lines[j] = "z " + element[2:]
                        element = lines[j]

                ### T Case

                if element[0] == "t":

                    # T + T Case

                    if (element[:2] == "t ") and (element == saved1):

                        lines.pop(savedidx1)
                        lines[j] = "s " + element[2:]
                        element = lines[j]

                    # Tdg + Tdg Case

                    if (element[:4] == "tdg ") and (element == saved1):

                        lines.pop(savedidx1)
                        lines[j] = "sdg " + element[4:]
                        element = lines[j]

                saved1 = element
                savedidx1 = j

            j -= 1

