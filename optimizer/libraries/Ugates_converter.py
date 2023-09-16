import sys
import re
sys.path.append('./')
from QASM_precomposer import *
from NULLOP_purgers import *

########################################################################################################
###################################### U GATES CONVERTER ###############################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "halfpi" approximated values calculated with threshold defined in .cfg file

##### Functions to convert single-qubit gates in IBM's U1, U2, U3 gates accordingly

### H to U2(0,pi) converter

def h_to_u2(lines, nq, halfpi):

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
                end1 = saved1.find(')')
                ende = element.find(')')

                SXSconv = 0
                XYconv = 0

                # S - RX - S / Sdg - RX - Sdg case

                if ( (element[:2] == "s ") and (saved1[:end1] == ("rx(" + halfpi) ) and (saved2[:2] == "s ") ) or ( (element[:4] == "sdg ") and (saved1[:end1] == ("rx(-" + halfpi) ) and (saved2[:4] == "sdg ") ):

                    SXSconv = 1

                # X - RY / RY - X case

                if ( (element[:ende] == ("ry(" + halfpi) ) and (saved1[:2] == "x ") ) or ( (element[:2] == "x ") and (saved1[:end1] == ("ry(-" + halfpi) ) ):

                    XYconv = 1

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if SXSconv == 1:

                    lines.pop(savedidx2)
                    lines.pop(savedidx1)
                    element = "u2(0, " + pi + element[ende:]
                    lines[j] = element

                    N = len(lines)
                    saved1 = element
                    savedidx1 = j
                    saved2 = "NONE"
                    savedidx2 = N-1
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k

                if XYconv == 1:

                    lines.pop(savedidx1)
                    element = "u2(0, " + pi + element[ende:]
                    lines[j] = element
                    saved2 = saved1
                    savedidx2 = savedidx1
                    saved1 = element
                    savedidx1 = j

            j -= 1


### RZ - RY(pi/2) - RZ / RZ - RX(+/- pi/2) - RZ to U2 converter

### (with the introduction of eulerzyz fuction, RZ - RX - RZ case has become useless, but it's still there)

def zrz_to_u2(lines, nq, halfpi):

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
                ende = element.find(')')
                end1 = saved1.find(')')
                end2 = saved2.find(')')
               
                conv = 0

                # RZ - RY(pi/2) - RZ case

                if (element[:3] == "rz(") and (saved1[:end1] == ("ry(" + halfpi) ) and (saved2[:3] == "rz("):

                    conv = 1

                    rote = element[starte+1:ende]

                    rot2 = saved2[start2+1:end2]

                # RZ - RX(pi/2) - RZ case

                if (element[:3] == "rz(") and (saved1[:end1] == ("rx(" + halfpi) ) and (saved2[:3] == "rz("):

                    conv = 1
                    starte = element.find('(')
                    start2 = saved2.find('(')
                    
                    rote = element[starte+1:ende]
                    rote = float(rote) + float(halfpi)
                    rote = str(rote)

                    rot2 = saved2[start2+1:end2]
                    rot2 = float(rot2) - float(halfpi)
                    rot2 = str(rot2)

                # RZ - RX(-pi/2) - RZ case

                if (element[:3] == "rz(") and (saved1[:end1] == ("rx(" + halfpi) ) and (saved2[:3] == "rz("):

                    conv = 1
                    starte = element.find('(')
                    start2 = saved2.find('(')
                    
                    rote = element[starte+1:ende]
                    rote = float(rote) - float(halfpi)
                    rote = str(rote)

                    rot2 = saved2[start2+1:end2]
                    rot2 = float(rot2) + float(halfpi)
                    rot2 = str(rot2)

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if conv == 1:

                    lines.pop(savedidx2)
                    lines.pop(savedidx1)
                    element = "u2(" + rot2 + ", " + rote + element[ende:]
                    lines[j] = element

                    N = len(lines)
                    saved1 = element
                    savedidx1 = j
                    saved2 = "NONE"
                    savedidx2 = N-1
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k

            j -= 1


### RY(pi/2) / RX(pi/2) / RX(-pi/2) to U2 converter

def halfr_to_u2(lines, nq, halfpi):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]
                ende = element.find(')')
               
                yconv = 0
                xconv1 = 0
                xconv2 = 0

                # RY(pi/2) case

                if (element[:ende] == "ry(" + halfpi):

                    yconv = 1

                # RX(pi/2) case

                if (element[:ende] == "rx(" + halfpi):

                    xconv1 = 1

                # RX(-pi/2) case

                if (element[:ende] == "rx(-" + halfpi):

                    xconv2 = 1

                ### Optimization

                if yconv == 1:

                    lines[j] = "u2(0, 0" + element[ende:]

                if xconv1 == 1:

                    lines[j] = "u2(-" + halfpi + ", " + halfpi + element[ende:]

                if xconv2 == 1:

                    lines[j] = "u2(" + halfpi + ", -" + halfpi + element[ende:]

            j -= 1


### RZ - RY - RZ / RZ - RX - RZ to U3 converter


### (with the introduction of eulerzyz fuction, RZ - RX - RZ case have become useless, but it's still there)

def zrz_to_u3(lines, nq, halfpi):

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

                starte = element.find('(')
                start1 = saved1.find('(')
                start2 = saved2.find('(')
                ende = element.find(')')
                end1 = saved1.find(')')
                end2 = saved2.find(')')
               
                conv = 0

                # RZ - RY - RZ case

                if (element[:3] == "rz(") and (saved1[:3] == "ry(") and (saved2[:3] == "rz("):

                    rote = element[starte+1:ende]
                    rot1 = saved2[start1+1:end1]
                    rot2 = saved2[start2+1:end2]

                    conv = 1

                # RZ - RX - RZ case

                if (element[:3] == "rz(") and (saved1[:3] == "rx(") and (saved2[:3] == "rz("):

                    if saved1[3] != "-":

                        rote = element[starte+1:ende]
                        rote = float(rote) + float(halfpi)
                        rote = str(rote)
                        rot1 = saved1[start1+1:end1]
                        rot2 = saved2[start2+1:end2]
                        rot2 = float(rot2) - float(halfpi)
                        rot2 = str(rot2)

                        conv = 1

                    else:

                        rote = element[starte+1:ende]
                        rote = float(rote) - float(halfpi)
                        rote = str(rote)
                        rot1 = saved1[start1+2:end1]
                        rot2 = saved2[start2+1:end2]
                        rot2 = float(rot2) + float(halfpi)
                        rot2 = str(rot2)

                        conv = 1

                ### Optimization and rearrangement of the "saved array" depending on the optimization done

                if conv == 1:

                    lines.pop(savedidx2)
                    lines.pop(savedidx1)
                    element = "u3(" + rot1 + ", " + rot2 + ", " + rote + element[ende:]
                    lines[j] = element

                    N = len(lines)
                    saved1 = element
                    savedidx1 = j
                    saved2 = "NONE"
                    savedidx2 = N-1
                    for k in range(N-1,savedidx1,-1):
                        if target in lines[k]:
                            saved2 = lines[k]
                            savedidx2 = k

            j -= 1


### Generic converter: converts RX, RY in U3 and RZ in U1

def genericconverter(lines, nq, halfpi):

    for i in range(0,nq):

        N = len(lines)
        target = "q[" + str(i) + "]"
        j = N-1

        while j > 3:

            # Parse through all .qasm lines that contain the target qubit

            if target in lines[j]:

                element = lines[j]
                starte = element.find('(')
                ende = element.find(')')
                rote = element[starte+1:ende]
               
                yconv = 0
                xconv1 = 0
                xconv2 = 0
                zconv = 0

                # RY case

                if (element[:3] == "ry("):

                    yconv = 1

                # RX(+theta) case

                if (element[:3] == "rx(") and (element[3] != "-"):

                    xconv1 = 1

                # RX(-theta) case

                if (element[:4] == "rx(-"):

                    xconv2 = 1

                # RZ case

                if (element[:3] == "rz("):

                    zconv = 1

                ### Optimization

                if yconv == 1:

                    lines[j] = "u3(" + rote + ", 0, 0" + element[ende:]

                if (xconv1 == 1) or (xconv2 == 1):

                    lines[j] = "u3(" + rote + ", -" + halfpi + ", " + halfpi + element[ende:]

                if zconv == 1:

                    lines[j] = "u1(" + rote + element[ende:]

            j -= 1


