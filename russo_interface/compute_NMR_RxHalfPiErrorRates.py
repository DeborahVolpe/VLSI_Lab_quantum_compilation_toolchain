from typing import List
from qiskit import *
import interfaceqiskitmatlabquanto
import glob
import random
import numpy as np
import scipy.io
from scipy.linalg import sqrtm

from compute_NMR_SwapErrorRates_RZvirtual_Heart import getInitialQasmLines, getDensityMatrixFromLastSimulation, \
    getRxUnitaryMatrix

def main():

    # Create an empty report file:
    f = open(reportFilePath, "w").close()
    
    for qubit1 in range(nQubits): 

        sumRxHalfPiFidelity = 0.0 
        for i in range(shots):

            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state (of the 
            # qubit on which apply the Rx gate) and an ideal Rx gate:

            # Generate a quantum circuit with a random superposition state for the two qubits on which apply the RX:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            lambda1 = random.uniform(0.0, 2*np.pi)
            theta1 = random.uniform(0.0, 2*np.pi)
            phi1 = random.uniform(0.0, 2*np.pi)
            print("current rx phases: {0}".format(rx_phases))
            qasmLines.append( "rz({0}) q[{1}];\n".format(lambda1, qubit1) )
            rx_phases[qubit1] += -lambda1
            print("current rx phases: {0}".format(rx_phases))
            qasmLines.append( "rx(pi/2) q[{0}];\n".format(qubit1) )
            qasmLines.append( "rz({0}) q[{1}];\n".format(theta1, qubit1) )
            rx_phases[qubit1] += -theta1
            print("current rx phases: {0}".format(rx_phases))
            qasmLines.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )
            qasmLines.append( "rz({0}) q[{1}];\n".format(phi1, qubit1) )
            rx_phases[qubit1] += -phi1
            print("current rx phases: {0}".format(rx_phases))
            f = open(qasm_file_name, "w")
            f.writelines(qasmLines)
            f.close()
            
            # Simulate the circuit using Matlab Quanto:
            qc = QuantumCircuit.from_qasm_file(qasm_file_name)
            interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
            interfaceqiskitmatlabquanto.executecircuit()

            # Get the density matrix from the simulation performed:
            rho = getDensityMatrixFromLastSimulation()

            # Create the ideal Rx Unitary Matrix for the current Rx:
            idealRxHalfPiUnitaryMatrix = getRxUnitaryMatrix(np.pi/2, qubit1, nQubits, rx_phases)
            
            # rho = idealRxHalfPiUnitaryMatrix * rho * adjoint(idealRxHalfPiUnitaryMatrix):
            adj = idealRxHalfPiUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealRxHalfPiUnitaryMatrix, rho) # Final rho.

            tr = np.trace(rho)
            print("Trace of the density matrix after applying the ideal RX (must be 1) : {0}".format(tr))

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # qubit on which apply the Rx gate) and a non-ideal Rx gate:

            # Add the Rx gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( ["rx(pi/2) q[{0}];".format(qubit1)] )
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
            RxHalfPifidelity = np.trace(tmp).real # Only the real part
            print( "Iteration {0}; Rx(pi/2) q[{1}]; quantum gate fidelity obtained in last simulation: {2}".format(
                                                                                          i, qubit1, RxHalfPifidelity) )
            sumRxHalfPiFidelity += RxHalfPifidelity

        # Compute the average fidelity and error rate:
        avgRxHalfPiFidelity = sumRxHalfPiFidelity/shots
        avgRxHalfPiErrRate = 1 - avgRxHalfPiFidelity

        # Print result:
        f = open(reportFilePath, "a")
        f.write("Rx(pi/2) q[{0}]; average quantum gate error rate: {1}\n".format(qubit1, avgRxHalfPiErrRate))
        f.close()

    # Delete the temorary .qasm file:
    os.remove(qasm_file_name)

if __name__=="__main__":

    # Settings:
    nQubits = 4 # Number of qubits of the Backend.
    parametersFile = 'crotonic_acid' # Backend.
    qasm_file_name = "./qasms/tmp.qasm" # Temporary .qasm file used for the simulation.
    shots = 25 # Number of simulation shots.
    reportFilePath = "./results/NMR_RxHalfPi_error_rates.txt"

    main()