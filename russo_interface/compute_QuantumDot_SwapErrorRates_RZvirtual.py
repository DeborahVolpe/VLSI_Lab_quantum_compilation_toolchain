from typing import List
from qiskit import *
import interfaceqiskitmatlabquanto
import glob
import random
import numpy as np
import scipy.io
from scipy.linalg import sqrtm

from compute_NMR_SwapErrorRates_RZvirtual_Heart import getInitialQasmLines, getRandomRotationsQasmLines, \
    getDensityMatrixFromLastSimulation, getSwapUnitaryMatrix, getSwapQasmImplementation

def main():
    """Algorithm used to compute the NMR Swap gate fidelity:

    -) Simulation using Matlab Quanto of a random superposition state without SWAP
	-) p = Get density matrix from matlab workspace(last) 
	-) compute the UnitaryMatrixIdealSwap 
	-) p = UnitaryMatrixIdealSwap * p * adjoint(UnitaryMatrixIdealSwap)  [Density matrix assuming an ideal Swap is 
                                                                          applied to the random superposition state]

	
	-) Simulation using Matlab Quanto with same circuit(same superposition state) + non-ideal Swap 
	-) s =  Get density matrix from matlab workspace(last) [Density matrix assuming a non-ideal Swap is applied to 
                                                            the random superposition state]
	-) Use the Gianni's formula to compute fidelity
		-) for ^1/2 use sqrtm
    
    """

    # Create an empty report file:
    f = open(reportFilePath, "w").close()
    
    for swap in [[0, 1],[1, 2],[2, 3],[3, 4]]: # Generate all the possible swaps (only one swap per pair of 
                                               # qubits). The quantum dot technology is not fully-connected,
                                               # here the available swaps are generated based on the linear
                                               # topology of the 'dummy_quantum_dot' backend.

        qubit1 = swap[0] # Swap qubit id
        qubit2 = swap[1] # Swap qubit id
        signExchInt = np.sign( ExchInt[qubit1][qubit2] )

        sumSwapFidelity_RZvirtual = 0.0  
        for i in range(shots):

            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state(of the 
            # to-swap qubits) and an ideal Swap gate:

            # Generate a quantum circuit with a random superposition state for the two qubits to be swapped:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            qasmLines_RZvirtual = getRandomRotationsQasmLines(qubit1, qubit2, signExchInt, rx_phases)
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

            # Create the ideal Swap Unitary Matrix for the current Swap:
            idealUnitaryMatrix = getSwapUnitaryMatrix(qubit1, qubit2, nQubits, signExchInt, rx_phases)
                    
            # rho = idealUnitaryMatrix * rho * adjoint(idealUnitaryMatrix):
            adj = idealUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # to-swap qubits) and a non-ideal Swap gate:

            # Add the swap gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getSwapQasmImplementation(qubit1, qubit2, signExchInt, rx_phases) )
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
            Swapfidelity = np.trace(tmp).real # Only the real part
            print( "Iteration {0}; SWAP q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Swapfidelity) )
            sumSwapFidelity_RZvirtual += Swapfidelity

        # Compute the average fidelity and error rate:
        avgSwapFidelity_RZvirtual = sumSwapFidelity_RZvirtual/shots
        avgSwapErrRate_RZvirtual = 1 - avgSwapFidelity_RZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("SWAP q[{0}], q[{1}]; average quantum gate error rate (RZ virtual): {2}\n".format(qubit1, qubit2, avgSwapErrRate_RZvirtual))
        f.close()

    # Delete the temorary .qasm file:
    os.remove(qasm_file_name)

if __name__=="__main__":

    # Settings:
    nQubits = 5 # Number of qubits of the Backend.
    ExchInt = [ [0, 3.3333e6, 0, 0, 0],
              [3.3333e6, 0, 3.0303e6, 0, 0],
              [0, 3.0303e6, 0, 3.5211e6, 0],
              [0, 0, 3.5211e6, 0, 2.7473e6], 
              [0, 0, 0, 2.7473e6, 0] ] # Exchange-interaction parameters of the backend.
    parametersFile = 'dummy_quantum_dot' # Backend.
    qasm_file_name = "./qasms/tmp.qasm" # Temporary .qasm file used for the simulation.
    shots = 100 # Number of simulation shots.

    reportFilePath = "./results/QuantumDot_swap_error_rates_RZvirtual.txt"

    main()