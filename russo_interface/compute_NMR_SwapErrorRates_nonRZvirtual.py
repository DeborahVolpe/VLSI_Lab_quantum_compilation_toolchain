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

from compute_NMR_SwapErrorRates_RZvirtual_Heart import getDensityMatrixFromLastSimulation, getRxUnitaryMatrix

def getInitialQasmLines(nQubits) -> List[str]:

    return [ "OPENQASM 2.0;\n", "include \"qelib1.inc\";\n", "qreg q[" + str(nQubits) + "];\n", 
             "creg c[" + str(nQubits) +"];\n" ]

def getRandomRotationsQasmLines(qubit1, qubit2, signJ, rx_phases) -> List:
    """ A random single-qubit gate is obtained using: RZ(ϕ)RX(−π/2)RZ(θ)RX(π/2)RZ(λ) with lambda, theta and phi random
    angles in [0, 2π].

    A random englaged state is obtained using:
        random single-qubit gate on q[qubit1];
        x q[qubit2];
        h q[qubit2];
        cz q[qubit1], q[qubit2];
        h q[qubit2];
        rz(random angle) q[qubit2];
    """

    # Generate 3 random angles for each qubit to swap:
    lambda1 = random.uniform(0.0, 2*np.pi)
    theta1 = random.uniform(0.0, 2*np.pi)
    phi1 = random.uniform(0.0, 2*np.pi)
    lambda2 = random.uniform(0.0, 2*np.pi)
    theta2 = random.uniform(0.0, 2*np.pi)
    phi2 = random.uniform(0.0, 2*np.pi)

    qasmLines_nonRZvirtual = [] 
    if( random.uniform(0, 1) <= 0.5 ): # 50% chance.
        # Add a random single-qubit gate for each qubit to be swapped:

        # RZ(λ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # RX(π/2) q[qubit1]:
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        # RZ(θ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # RX(−π/2) q[qubit1]:
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        # RZ(ϕ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # RZ(λ) q[qubit2]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

        # RX(π/2) q[qubit2]:
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit2) )

        # RZ(θ) q[qubit2]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

        # RX(−π/2) q[qubit2]:
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit2) )

        # RZ(ϕ) q[qubit2]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))
    else: # 50% chance.
        # Generate an entagled state:

        # RZ(λ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # RX(π/2) q[qubit1]:
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        # RZ(θ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # RX(−π/2) q[qubit1]:
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        # RZ(ϕ) q[qubit1]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        # x q[qubit2]:
        qasmLines_nonRZvirtual.append( "x q[{0}];\n".format(qubit2) )

        # h q[qubit2]:
        qasmLines_nonRZvirtual.append("ry(pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("rx(pi) q[{0}];\n".format(qubit2))
        
        # cz q[qubit1], q[qubit2]:
        qasmLines_nonRZvirtual.extend( getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) )

        # h q[qubit2]:
        qasmLines_nonRZvirtual.append("ry(pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("rx(pi) q[{0}];\n".format(qubit2))

        # rz(random angle) q[qubit2]:
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

    return qasmLines_nonRZvirtual

def getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:

    lines = []

    angleRz = "pi/2" if signJ<0 else "-pi/2"
    angleRzz = "pi/2" if signJ>0 else "-pi/2"
    pi = np.pi

    lines.append("rx(-pi/2) q[{0}];\n".format(qubit1))
    lines.append("ry({0}) q[{1}];\n".format(angleRz, qubit1))
    lines.append("rx(pi/2) q[{0}];\n".format(qubit1))

    lines.append("rx(-pi/2) q[{0}];\n".format(qubit2))
    lines.append("ry({0}) q[{1}];\n".format(angleRz, qubit2))
    lines.append("rx(pi/2) q[{0}];\n".format(qubit2))

    lines.append("rzz({0}) q[{1}], q[{2}];\n".format(angleRzz, qubit1, qubit2))

    return lines

def getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:
    lines = []

    lines.append("ry(pi/2) q[{0}];\n".format(qubit2))
    lines.append("rx(pi) q[{0}];\n".format(qubit2))

    lines.extend( getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) )

    lines.append("ry(pi/2) q[{0}];\n".format(qubit2))
    lines.append("rx(pi) q[{0}];\n".format(qubit2))

    return lines


def getSwapQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:
    lines = []

    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
    lines.extend( getCXQasmImplementation(qubit2, qubit1, signJ, rx_phases) )
    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) )

    return lines

def getHadamardUnitaryMatrix(qubit1, nQubits, rx_phases):

    # ry(pi/2):
    ry_phases = [x+(np.pi/2) for x in rx_phases]
    ry_unitary_matrix = getRxUnitaryMatrix(np.pi/2, qubit1, nQubits, ry_phases)

    # rx(pi):
    rx_unitary_matrix = getRxUnitaryMatrix(np.pi, qubit1, nQubits, rx_phases)

    return np.matmul( rx_unitary_matrix, ry_unitary_matrix )

def getCzUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases):

    pi = np.pi
    angleRz = "pi/2" if signJ<0 else "-pi/2"

    ry_phases = [x+(np.pi/2) for x in rx_phases]

    # Rz qubit1:
    rx_minusHalfPi_qubit1 = getRxUnitaryMatrix(-np.pi/2, qubit1, nQubits, rx_phases)
    ry_unitary_matrix_qubit1 = getRxUnitaryMatrix(eval(angleRz), qubit1, nQubits, ry_phases)
    rx_plusHalfPi_qubit1 = getRxUnitaryMatrix(np.pi/2, qubit1, nQubits, rx_phases)
    Rz_qubit1 = np.matmul( ry_unitary_matrix_qubit1, rx_minusHalfPi_qubit1 )
    Rz_qubit1 = np.matmul( rx_plusHalfPi_qubit1, Rz_qubit1 )

    # Rz_qubit2:
    rx_minusHalfPi_qubit2 = getRxUnitaryMatrix(-np.pi/2, qubit2, nQubits, rx_phases)
    ry_unitary_matrix_qubit2 = getRxUnitaryMatrix(eval(angleRz), qubit2, nQubits, ry_phases)
    rx_plusHalfPi_qubit2 = getRxUnitaryMatrix(np.pi/2, qubit2, nQubits, rx_phases)
    Rz_qubit2 = np.matmul( ry_unitary_matrix_qubit2, rx_minusHalfPi_qubit2 )
    Rz_qubit2 = np.matmul( rx_plusHalfPi_qubit2, Rz_qubit2 )

    # Rzz:
    RzzCircuit = QuantumCircuit(nQubits)
    angle_rzz = signJ * np.pi/2
    RzzCircuit.rzz(angle_rzz, qubit1, qubit2)
    U_RZZ = Operator(RzzCircuit).data

    U_CZ = np.matmul( Rz_qubit2, Rz_qubit1 )
    U_CZ = np.matmul( U_RZZ, U_CZ )

    return U_CZ

def getCxUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases):

    U_Hadamard_1 = getHadamardUnitaryMatrix(qubit2, nQubits, rx_phases)

    # CZ:
    U_CZ = getCzUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)

    U_Hadamard_2 = getHadamardUnitaryMatrix(qubit2, nQubits, rx_phases)

    tmp = np.matmul(U_CZ, U_Hadamard_1)
    tmp = np.matmul(U_Hadamard_2, tmp)

    return tmp

def getSwapUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases) -> np.ndarray:

    # Two-qubit Swap gate unitary matrix:
    twoQubitsSwapMatrix = np.array([[1, 0, 0, 0], [0, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 1]])

    # If the two qubits to swap are the same return an identity matrix:
    if(qubit1==qubit2):
        return np.identity( (2**nQubits)*(2**nQubits) ) 

    # Break the single Swap in a series of Swap(from the greated to lowest qubit id):
    swaps = []
    if(qubit1<qubit2):
        start = qubit1
        stop = qubit2
    else:
        start = qubit2
        stop = qubit1

    for i in range(start, stop):
        swaps.append( (i, i+1) )

    if(len(swaps)>1):
        for i in range( len(swaps)-2, -1, -1 ):
            swaps.append(swaps[i])

    # Generate the unitary matrices to multiply:
    Ulist = []
    for swap in swaps:

        UStep = None
        swapAdded = False
        for q in range(nQubits-1, -1, -1):
            
            if(not q in swap):
                if(UStep is None):
                    UStep = np.identity(2)
                else:
                    UStep = np.kron(UStep, np.identity(2))
            elif(not swapAdded):
                if(UStep is None):
                    UStep = twoQubitsSwapMatrix
                else:
                    UStep = np.kron(UStep, twoQubitsSwapMatrix)
                swapAdded = True

        Ulist.append(UStep)

    # Compute the unitary matrix:
    U = Ulist[0]
    for i in range(1, len(Ulist)):
        U = np.matmul(Ulist[i], U)
           
    return U

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
    
    for swap in itertools.combinations(range(nQubits), 2): # Generate all the possible swaps (only one swap per pair of 
                                                           # qubits). The NMR topology is fully-connected.

        qubit1 = swap[0] # Swap qubit id
        qubit2 = swap[1] # Swap qubit id
        signJ = np.sign( J[qubit1][qubit2] )

        sumSwapFidelity_nonRZvirtual = 0.0  
        for i in range(shots):

            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state(of the 
            # to-swap qubits) and an ideal Swap gate:

            # Generate a quantum circuit with a random superposition state for the two qubits to be swapped:
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

            # Create the ideal Swap Unitary Matrix for the current Swap:
            idealUnitaryMatrix = getSwapUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)
                    
            # rho = idealUnitaryMatrix * rho * adjoint(idealUnitaryMatrix):
            adj = idealUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # to-swap qubits) and a non-ideal Swap gate:

            # Add the swap gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getSwapQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
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
            print( "Iteration {0}; SWAP q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (non RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Swapfidelity) )
            sumSwapFidelity_nonRZvirtual += Swapfidelity

        # Compute the average fidelity and error rate:
        avgSwapFidelity_nonRZvirtual = sumSwapFidelity_nonRZvirtual/shots
        avgSwapErrRate_nonRZvirtual = 1 - avgSwapFidelity_nonRZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("SWAP q[{0}], q[{1}]; average quantum gate error rate (non RZ virtual): {2}\n".format(qubit1, qubit2, avgSwapErrRate_nonRZvirtual))
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
    shots = 200 # Number of simulation shots.

    reportFilePath = "./results/NMR_swap_error_rates_nonRZvirtual.txt"

    main()