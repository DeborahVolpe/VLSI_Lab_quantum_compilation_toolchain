import sys
from typing import List

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import NmrBackend

import os
import re

def getGateTimeAndErrorRate(lines, isRZvirtual) -> List:

    totGateTime = 0.0
    totErrorRate = -1.0
    for line in lines: # For each QASM statement line:
        
        result = re.match("(\w+)\s+([a-zA-Z0-9_]+)\[(\d)\]\s*,\s*[a-zA-Z0-9_]+\[(\d)\]\s*;", line)
        
        if(result):
            # Extract the gate name, the control qubit id and the target qubit id from the QASM statement:
            gateName = result.group(1)
            controlQubitId = int( result.group(3) )
            targetQubitId = int( result.group(4) )

            # Extract the control and target node of the two-qubit gate:
            controlNode = backend.nodes[controlQubitId]
            targetNode = backend.nodes[targetQubitId]

            # Add the gate time and the error rate of the new two-qubit gate to the total:
            if(gateName.lower()=="swap"):
                totGateTime += backend.getSwapGateTime(controlNode, targetNode, isRZvirtual)
            elif(gateName.lower()=="cx"):
                totGateTime += backend.getCXGateTime(controlNode, targetNode, isRZvirtual) 
            elif(gateName.lower()=="cz"):
                totGateTime += backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
            else: # All the other two-qubit gates are considered CZ gates for simplification:
                totGateTime += backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

    return [totGateTime, totErrorRate]

# Backend:
backend = NmrBackend.fromConfigurationFile("backends/M/crotonic_acid.cfg")

# Settings:
isRZvirtual = False
# The two folders must store the same .qasm files(with the same names).
qasmFolder1Path = "qasm/routed/M/HA NMR Improved algorithm" 
#qasmFolder2Path = "qasm/routed/S/Paper Original HA algorithm"

for qasmFile in os.listdir(qasmFolder1Path): # For all the .qasm files contained in 'qasmFolder1Path':

    # Benchmarking:

    # Read the QASM file and store each line in a list:
    f = open(qasmFolder1Path + "/" + qasmFile, "r")
    lines = list(filter(None, (line.rstrip() for line in f)))
    f.close()

    totGateTime1, totErrorRate1 = getGateTimeAndErrorRate(lines, isRZvirtual)
    
    # Read the QASM file and store each line in a list:
    # f = open(qasmFolder2Path + "/" + qasmFile, "r")
    # lines = list(filter(None, (line.rstrip() for line in f)))
    # f.close()

    #totGateTime2, totErrorRate2 = getGateTimeAndErrorRate(lines)
    
    print("QASM File: " + qasmFile)
    print("[Benchmark]: (" + qasmFolder1Path + ") " + "total gate time = " + str(totGateTime1) + " s")
    print("[Benchmark]: (" + qasmFolder1Path + ") " + "total error rate = " + str(totErrorRate1))     
    print ("")
