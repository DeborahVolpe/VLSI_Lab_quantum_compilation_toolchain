from qiskit import QuantumCircuit
from qiskit.compiler import transpile
import sys
from qiskit.transpiler.passes import RemoveBarriers
import os
import re

import matplotlib.pyplot as mpl

def main():
    
    # Compose the set of basis gates for the provided quantum technology:
    basis_gates = []
    if(technology=="S"):
        basis_gates=['u1', 'u2', 'u3', 'cx']
    elif(technology=="M" or technology=="Q"):
        basis_gates=['rx', 'ry', 'rz', 'cz']
    elif(technology=="I"):
        basis_gates=['rx', 'ry', 'rz', 'cx']
    else:
        sys.exit("[Utility 0]: Error! The target technology {0} is not supported.".format(technology))

    for qasmFileName in os.listdir(originalCircuitsFolder): # For all the qasm files in the original circuits folder:

        print("[Utility 0]: Original quantum circuit: " + qasmFileName)
        # Get the path to the current original quantum circuit:
        qasmFile = originalCircuitsFolder + "/" + qasmFileName

        # Extract the number of qubits and the number of lines of the current original quantum circuit:

        # Read the QASM file and store each line in a list:
        f = open(qasmFile, "r")
        lines = list(filter(None, (line.rstrip() for line in f)))
        f.close()

        nQasmLines = len(lines)
        if(nQasmLines>=35000):
            continue # Only .qasm file having less than 40k lines

        nq = -1
        measurePresent = False
        for line in lines:
            # Extract nq:
            result = re.match("\s*qreg\s+[a-zA-Z0-9_]+\[(\d+)\]\s*;", line)
            if(result):
                nq = int(result.group(1))

            # Check if there is at least one measure operation:
            result = re.match("^\s*measure\s+q\[\d+\]\s*->\s*c\[\d+\]\s*;", line)
            if(result): # If the line is a Measure whole register operation:
                measurePresent = True

            # Measure line:
            result = re.match("^\s*measure\s+q\s*->\s*c\s*;", line)
            if(result):
                measurePresent = True

        # If there is no measure operation, add a measure reagister operation to the original circuit file:
        if(not measurePresent):
            f = open(qasmFile, "a")
            f.write("measure q->c;")
            f.close()

        # Contruct the QuantumCircuit from the qasmFile:
        originalQc = QuantumCircuit.from_qasm_file(qasmFile)
        originalQc = RemoveBarriers()(originalQc)

        # Update the rebasedCircuitsFolder path based on the scale(small, medium or large) of the current circuit:
        size = ""
        if(nq<=5):
            size =  "small"
        elif(nq>5 and nq<=12):
            size = "medium"
            if(technology=="Q" or technology=="M"):
                print("[Utility 0]: Quantum circuit skipped.\n")
                continue
        elif(nq>12 and nq<=17):
            size = "large"
            if(technology=="Q" or technology=="M"):
                print("[Utility 0]: Quantum circuit skipped.\n")
                continue
        else: # nq>17:
            print("[Utility 0]: Quantum circuit skipped.\n")
            continue # Skip this quantum circuit

        # Rebase the current quantum circuit:
        rebasedQc = transpile(originalQc, basis_gates=basis_gates, optimization_level=0)
        
        # Write the rebased quantum circuit in the output rebased folder:
        outputQasmFilePath = rebasedCircuitsFolder + "/" + size + "/" + qasmFileName
        f = open(outputQasmFilePath, "w")
        f.writelines(rebasedQc.qasm())
        f.close()

        print("[Utility 0]: Quantum circuit correctly rebased.\n")

if __name__=="__main__":

    # Settings:
    originalCircuitsFolder = "./qasms/original/github"
    rebasedCircuitsFolder = "./qasms/rebased/github/I"
    technology = "I" # S, M, Q or I.

    main()