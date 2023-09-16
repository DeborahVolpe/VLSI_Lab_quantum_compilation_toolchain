from typing import List
from qiskit import *
from qiskit.quantum_info import Operator
import interfaceqiskitmatlabquanto
import glob
import random
import numpy as np
import scipy.io
from scipy.linalg import sqrtm
import itertools
import re

from compute_NMR_SwapErrorRates_RZvirtual_Heart import getInitialQasmLines, getDensityMatrixFromLastSimulation, \
    getRxUnitaryMatrix
from compute_NMR_SwapErrorRates_nonRZvirtual import getRandomRotationsQasmLines, getCXQasmImplementation,\
    getCxUnitaryMatrix

def main():

    # Create an empty report file:
    f = open(reportFilePath, "w").close()
    
    for swap in itertools.combinations(range(nQubits), 2): # Generate all the possible two-qubit pairs (the NMR 
                                                           # topology is fully-connected)

        qubit1 = swap[0] # Control qubit id
        qubit2 = swap[1] # Target qubit id
        signJ = np.sign( J[qubit1][qubit2] )

        sumCxFidelity_nonRZvirtual = 0.0  
        for i in range(shots):

            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state(of the 
            # to-swap qubits) and an ideal Swap gate:

            # Generate a quantum circuit with a random superposition state for the control and target qubits:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            qasmLines_nonRZvirtual = getRandomRotationsQasmLines(qubit1, qubit2, signJ, rx_phases)
            qasmLines.extend( qasmLines_nonRZvirtual )

            f = open(qasm_file_name, "w")
            f.writelines(qasmLines)
            f.close()
            
            # Simulate the circuit using Matlab Quanto:
            qc = QuantumCircuit.from_qasm_file(qasm_file_name)
            interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
            interfaceqiskitmatlabquanto.executecircuit()

            # Get the density matrix from the simulation performed:
            rho = getDensityMatrixFromLastSimulation()

            # Create the ideal Cx Unitary Matrix for the current Swap:
            idealUnitaryMatrix = getCxUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)
                    
            # rho = idealUnitaryMatrix * rho * adjoint(idealUnitaryMatrix):
            adj = idealUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # to-swap qubits) and a non-ideal Cx gate:

            # Add the z gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
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
            Cxfidelity = np.trace(tmp).real # Only the real part
            print( "Iteration {0}; CX q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (non RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Cxfidelity) )
            sumCxFidelity_nonRZvirtual += Cxfidelity

        # Compute the average fidelity and error rate:
        avgCxFidelity_nonRZvirtual = sumCxFidelity_nonRZvirtual/shots
        avgCxErrRate_nonRZvirtual = 1 - avgCxFidelity_nonRZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("CX q[{0}], q[{1}]; average quantum gate error rate (non RZ virtual): {2}\n".format(qubit1, qubit2, avgCxErrRate_nonRZvirtual))
        f.close()

    # Delete the temorary .qasm file:
    os.remove(qasm_file_name)

if __name__=="__main__":

    # Uncomment this to test the generated matrices:
    # phases = [0, 0, 0, 0]
    # print("Init state:")
    # state = np.array([[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]).T
    # print(state)
    # print("CX q[0], q[1];")
    # cx_U_0_1 = getCxUnitaryMatrix(0, 1, 4, 1, phases)
    # state = np.matmul(cx_U_0_1, state)
    # print(state)
    # print("rx(pi) q[0]:")
    # rx_U_0 = getRxUnitaryMatrix(np.pi, 0, 4, phases)
    # state = np.matmul(rx_U_0, state)
    # print(state)
    # print("CX q[0], q[1];")
    # state = np.matmul(cx_U_0_1, state)
    # print(state)
    # print("swap q[0], [2]")
    # swap_U_0_2 = getSwapUnitaryMatrix(0, 2, 4, 1, phases)
    # state = np.matmul(swap_U_0_2, state)
    # print(state)
    # print("swap q[2], [0]")
    # swap_U_2_0 = getSwapUnitaryMatrix(2, 0, 4, 1, phases)
    # state = np.matmul(swap_U_2_0, state)
    # print(state)

    # Settings:
    nQubits = 4 # Number of qubits of the Backend.
    J = [ [0, 72.36, 1.18, 7.04],
          [72.36, 0, 69.72, 1.46],
          [1.18, 69.72, 0, 41.64],
          [7.04, 1.46, 41.64, 0] ] # J-coupling parameters of the backend.
    parametersFile = 'crotonic_acid' # Backend.
    qasm_file_name = "./qasms/tmp.qasm" # Temporary .qasm file used for the simulation.
    shots = 100 # Number of simulation shots.

    reportFilePath = "./results/NMR_Cx_error_rates_nonRZvirtual.txt"

    main()