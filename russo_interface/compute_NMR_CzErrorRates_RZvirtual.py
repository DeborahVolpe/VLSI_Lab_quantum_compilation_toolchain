import os, itertools
import numpy as np
from qiskit import *
import interfaceqiskitmatlabquanto
from scipy.linalg import sqrtm

from compute_NMR_SwapErrorRates_RZvirtual_Heart import getInitialQasmLines, getRandomRotationsQasmLines, \
    getDensityMatrixFromLastSimulation, getCzUnitaryMatrix, getCZQasmImplementation

def main():

    # Create an empty report file:
    f = open(reportFilePath, "w").close()
    
    for swap in itertools.combinations(range(nQubits), 2): # Generate all the possible two-qubit pairs (the NMR 
                                                           # topology is fully-connected)

        qubit1 = swap[0] # Control qubit id
        qubit2 = swap[1] # Target qubit id
        signJ = np.sign( J[qubit1][qubit2] )

        sumCzFidelity_RZvirtual = 0.0  
        for i in range(shots):

            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state (of the 
            # control and target qubits) and an ideal Cz gate:

            # Generate a quantum circuit with a random superposition state for the two qubits to be swapped:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            qasmLines_RZvirtual = getRandomRotationsQasmLines(qubit1, qubit2, signJ, rx_phases)
            qasmLines.extend( qasmLines_RZvirtual )

            f = open(qasm_file_name, "w")
            f.writelines(qasmLines)
            f.close()
            
            # Simulate the circuit using Matlab Quanto:
            qc = QuantumCircuit.from_qasm_file(qasm_file_name)
            interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
            interfaceqiskitmatlabquanto.executecircuit()

            # Get the density matrix from the simulation performed:
            rho = getDensityMatrixFromLastSimulation()

            # Create the ideal Cz Unitary Matrix for the current control and target qubits:
            idealUnitaryMatrix = getCzUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)
                    
            # rho = idealUnitaryMatrix * rho * adjoint(idealUnitaryMatrix):
            adj = idealUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # control and target qubits) and a non-ideal Cz gate:

            # Add the swap gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
            f.close()

            # Simulate the circuit using Matlab Quanto:
            qc = QuantumCircuit.from_qasm_file(qasm_file_name)
            interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
            interfaceqiskitmatlabquanto.executecircuit()

            # Get the density matrix from the simulation performed:
            sigma = getDensityMatrixFromLastSimulation() # Final sigma.

            # Part3: compute fidelity:
            sqrt_rho = sqrtm(rho) # rho^1/2
            tmp = np.matmul(sigma, sqrt_rho)
            tmp = np.matmul(sqrt_rho, tmp)
            tmp = sqrtm(tmp)
            Czfidelity = np.trace(tmp).real # Only the real part
            print( "Iteration {0}; CZ q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Czfidelity) )
            sumCzFidelity_RZvirtual += Czfidelity

        # Compute the average fidelity and error rate:
        avgCzFidelity_RZvirtual = sumCzFidelity_RZvirtual/shots
        avgCzErrRate_RZvirtual = 1 - avgCzFidelity_RZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("CZ q[{0}], q[{1}]; average quantum gate error rate (RZ virtual): {2}\n".format(qubit1, qubit2, avgCzErrRate_RZvirtual))
        f.close()

    # Delete the temorary .qasm file:
    os.remove(qasm_file_name)

if __name__=="__main__":

    # Settings:
    nQubits = 4 # Number of qubits of the Backend.
    J = [ [0, 72.36, 1.18, 7.04],
          [72.36, 0, 69.72, 1.46],
          [1.18, 69.72, 0, 41.64],
          [7.04, 1.46, 41.64, 0] ] # J-coupling parameters of the backend.
    parametersFile = 'crotonic_acid' # Backend.
    qasm_file_name = "./qasms/tmp.qasm" # Temporary .qasm file used for the simulation.
    shots = 100 # Number of simulation shots.

    reportFilePath = "./results/NMR_Cz_error_rates_RZvirtual.txt"

    main()