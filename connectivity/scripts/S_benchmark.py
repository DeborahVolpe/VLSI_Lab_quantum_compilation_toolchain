import sys
from typing import List

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import SuperconductingBackend

import os
import re

def getGateTimeAndErrorRate(lines) -> List:

    totGateTime = 0.0
    totErrorRate = 0.0
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
            if(gateName=="swap"):
                totGateTime += backend.getSwapGateTime(controlNode, targetNode)
                totErrorRate += backend.getSwapErrorRate(controlNode, targetNode)
            else: # All the other two-qubit gates are considered CX since the backend is a superconducting one.
                totGateTime += backend.getCXGateTime(controlNode, targetNode) 
                totErrorRate += backend.getCXErrorRate(controlNode, targetNode)

    return [totGateTime, totErrorRate]


# Settings:
backend = SuperconductingBackend.fromConfigurationFile("backends/S/ibmq_lima.cfg") # Backend.
# The two folders must store the same .qasm files(with the same names).
qasmFolder1Path = "qasm/routed/S/HA algorithm" 
qasmFolder2Path = "qasm/routed/S/Paper Original HA algorithm"

for qasmFile in os.listdir(qasmFolder1Path): # For all the .qasm files contained in 'qasmFolder1Path':

    # Benchmarking:

    # Read the QASM file and store each line in a list:
    f = open(qasmFolder1Path + "/" + qasmFile, "r")
    lines = list(filter(None, (line.rstrip() for line in f)))
    f.close()

    totGateTime1, totErrorRate1 = getGateTimeAndErrorRate(lines)
    
    # Read the QASM file and store each line in a list:
    f = open(qasmFolder2Path + "/" + qasmFile, "r")
    lines = list(filter(None, (line.rstrip() for line in f)))
    f.close()

    totGateTime2, totErrorRate2 = getGateTimeAndErrorRate(lines)
    
    print("QASM File: " + qasmFile)
    print("[Benchmark]: (" + qasmFolder1Path + ") " + "total gate time = " + str(totGateTime1) + " ns")
    print("[Benchmark]: (" + qasmFolder2Path + ") " + "total gate time = " + str(totGateTime2) + " ns")
    print("[Benchmark]: (" + qasmFolder1Path + ") " + "total error rate = " + str(totErrorRate1))     
    print("[Benchmark]: (" + qasmFolder2Path + ") " + "total error rate = " + str(totErrorRate2))     
    print ("")
