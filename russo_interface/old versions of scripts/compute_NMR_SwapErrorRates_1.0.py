from qiskit import *
import interfaceqiskitmatlabquanto
import glob
import os
import random
import numpy as np
import itertools

def initializeQasmFile(nQubits, qasm_file_name) -> None:
    f = open(qasm_file_name, "w")
    f.write("OPENQASM 2.0;\ninclude \"qelib1.inc\";\nqreg q[" + str(nQubits) + "];\ncreg c[" + str(nQubits) +"];\n")
    f.close()

def addSwapQasmImplementation(qasm_file_name, qubit1, qubit2) -> None:
    lines = []

    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("cz q[" + str(qubit1) + "], q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")

    lines.append("rz(pi/2) q[" + str(qubit1) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit1) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit1) + "];\n")
    lines.append("cz q[" + str(qubit2) + "], q[" + str(qubit1) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit1) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit1) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit1) + "];\n")

    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("cz q[" + str(qubit1) + "], q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rx(pi/2) q[" + str(qubit2) + "];\n")
    lines.append("rz(pi/2) q[" + str(qubit2) + "];\n")

    f = open(qasm_file_name, "a")
    f.writelines(lines)
    f.close()

def randomizeSuperposition(qasm_file_name, qubit1, qubit2) -> None:

    # Generate 4 random angles:
    randomThetaX1 = random.uniform(0.0, 2*np.pi)
    randomThetaY1 = random.uniform(0.0, 2*np.pi)
    randomThetaX2 = random.uniform(0.0, 2*np.pi)
    randomThetaY2 = random.uniform(0.0, 2*np.pi)

    # Add two rotation arroung the X and Y axis for each qubit to be swapped:
    f = open(qasm_file_name, "a")
    f.write( "rx({0}) q[{1}];\n".format(randomThetaX1, qubit1) )
    f.write( "ry({0}) q[{1}];\n".format(randomThetaY1, qubit1) )
    f.write( "rx({0}) q[{1}];\n".format(randomThetaX2, qubit2) )
    f.write( "ry({0}) q[{1}];\n".format(randomThetaY2, qubit2) )
    f.close()

def retrieveFidelity() -> float:
    fidelity = -1.0

    list_of_files = glob.glob("./results/log_files/*.log") # * means all if need specific format then *.csv
    latest_log_file = max(list_of_files, key=os.path.getctime)
    with open(latest_log_file) as f:
        currLine = 1
        for line in f:
            if(currLine==4): # The fidelity information is at line 4.
                fidelity = float(line)
            currLine += 1

    return fidelity

# Settings:
nQubits = 4 # Number of qubits of the Backend.
parametersFile = 'crotonic_acid' # Backend.
qasm_file_name = "tmp.qasm" # Temporary .qasm file used for the simulation.
shots = 2 # Number of simulation shots.

# Main simulation loop:
for swap in itertools.combinations(range(nQubits), 2): # Generate all the possible swaps(only one swap per pair of 
                                                       # qubits):

    qubit1 = swap[0] # Swap qubit id
    qubit2 = swap[1] # Swap qubit id

    sumFidelity = 0 # Used for storing the sum of all the fidelities measured during the simulations.
    for i in range(shots):
        # Initialize the .qasm file:
        initializeQasmFile(nQubits, qasm_file_name)

        # Randomize the superposition state of the two qubit to be swapped, before applying the Swap gate:
        randomizeSuperposition(qasm_file_name, qubit1, qubit2)

        # Add the Swap implementation to the .qasm file
        addSwapQasmImplementation(qasm_file_name, qubit1, qubit2)

        # Perform the simulation using
        qc = QuantumCircuit.from_qasm_file(qasm_file_name)
        interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
        interfaceqiskitmatlabquanto.executecircuit()

        # Retrieve the fidelity from the simulation results:
        fidelity = retrieveFidelity()
        sumFidelity += fidelity

        print( "Iteration {0}; SWAP q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation: {3}".format(
                                                                                          i, qubit1, qubit2, fidelity) )

    # Compute the average fidelity and the average error rate of the Swap gate:
    avgFidelity = sumFidelity/shots
    avgErrRate = 1 - avgFidelity

    # Output the results:
    print( "SWAP q[{0}], q[{1}]; average quantum gate fidelity: {2}".format(qubit1, qubit2, avgFidelity) )
    print( "SWAP q[{0}], q[{1}]; average quantum gate error rate: {2}".format(qubit1, qubit2, avgErrRate) )
    print("")

# Delete the temorary .qasm file:
os.remove(qasm_file_name)

