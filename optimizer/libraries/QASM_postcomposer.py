import sys
sys.path.append('./')
from NULLOP_purgers import *

########################################################################################################
################################### FINAL GATE RECOMBINATION ###########################################
########################################################################################################

##### INPUTS:

#####   - "lines" list containing prefiltered QASM gates
#####   - "nq" number of qubits
#####   - "pi", "halfpi", "quarterpi" approximated values calculated with threshold defined in .cfg file
#####   - "subcircuit" identifier parameter
#####   - "nullsum" approximation parameter for NULL Operations in rotation gates
#####   - "aftertemp" parameter: tells if templates are gonna be checked after simple optimizations

##### Preliminary disposition of the circuit by decomposition in basic gates, translation in notable gates and combination of S ad T type gates

### Translate all gates in their RX,RY,RZ equivalent and then combine them as much as possible
###     (Approximation defined by Threshold 1 parameter)
 
def finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, aftertemp):

    N = len(lines)

    # Translation

    for j in range(N-1, 3, -1):

        element = lines[j]

        qpos = element.find('q')

        # On very last iteration, decompose all H gates which couldn't be optimized with S-RX(pi/2)-S template
        #  (more advantageous than RY+X template because of virtual implementation of S gates)

        if (element[:2] == "h ") and (aftertemp == 0):
            lines[j] = "rz(" + halfpi + ") " + element[qpos:]
            lines.insert(j+1, "rz(" + halfpi + ") " + element[qpos:])
            lines.insert(j+1, "rx(" + halfpi + ") " + element[qpos:])

        # Conversion to RX,RY,RZ

        if element[:2] == "x ":
            lines[j] = "rx(" + pi + ") " + element[qpos:]

        if element[:2] == "y ":
            lines[j] = "ry(" + pi + ") " + element[qpos:]

        if element[:2] == "z ":
            lines[j] = "rz(" + pi + ") " + element[qpos:]

        if element[:2] == "s ":
            lines[j] = "rz(" + halfpi + ") " + element[qpos:]
        if element[:4] == "sdg ":
            lines[j] = "rz(-" + halfpi + ") " + element[qpos:]

        if element[:2] == "t ":
            lines[j] = "rz(" + quarterpi + ") " + element[qpos:]
        if element[:4] == "tdg ":
            lines[j] = "rz(-" + quarterpi + ") " + element[qpos:]

        # Format of RX, RY, RZ gates

        if element[0] == 'r':
            closedbracket = element.find(')')
            lines[j] = element[:closedbracket] + ") " + element[qpos:] 


    # Combination
    initialz(lines, nq, subcircuit)
    finalz(lines, nq, subcircuit)
    nullpurge(lines, nq, nullsum)


