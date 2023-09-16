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

#from qiskit.quantum_info.operators import Operator

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

    qasmLines_RZvirtual = [] 
    if( random.uniform(0, 1) <= 1 ): # 50% chance.
        # Add a random single-qubit gate for each qubit to be swapped:

        # RZ(λ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda1, qubit1) )
        rx_phases[qubit1] -= lambda1

        # RX(π/2) q[qubit1]:
        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        # RZ(θ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta1, qubit1) )
        rx_phases[qubit1] -= theta1

        # RX(−π/2) q[qubit1]:
        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        # RZ(ϕ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi1, qubit1) )
        rx_phases[qubit1] -= phi1

        # RZ(λ) q[qubit2]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda2, qubit2) )
        rx_phases[qubit2] -= lambda2

        # RX(π/2) q[qubit2]:
        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit2) )

        # RZ(θ) q[qubit2]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta2, qubit2) )
        rx_phases[qubit2] -= theta2

        # RX(−π/2) q[qubit2]:
        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit2) )

        # RZ(ϕ) q[qubit2]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi2, qubit2) )
        rx_phases[qubit2] -= phi2
    else: # 50% chance.
        # Generate an entagled state:

        # RZ(λ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda1, qubit1) )
        rx_phases[qubit1] -= lambda1

        # RX(π/2) q[qubit1]:
        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        # RZ(θ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta1, qubit1) )
        rx_phases[qubit1] -= theta1

        # RX(−π/2) q[qubit1]:
        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        # RZ(ϕ) q[qubit1]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi1, qubit1) )
        rx_phases[qubit1] -= phi1

        # x q[qubit2]:
        qasmLines_RZvirtual.append( "x q[{0}];\n".format(qubit2) )

        # h q[qubit2]:
        qasmLines_RZvirtual.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_RZvirtual.append("rz(pi) q[{0}];\n".format(qubit2))
        rx_phases[qubit2] -= np.pi
        
        # cz q[qubit1], q[qubit2]:
        qasmLines_RZvirtual.extend( getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) )

        # h q[qubit2]:
        qasmLines_RZvirtual.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_RZvirtual.append("rz(pi) q[{0}];\n".format(qubit2))
        rx_phases[qubit2] -= np.pi

        # rz(random angle) q[qubit2]:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi2, qubit2) )
        rx_phases[qubit2] -= phi2

    return qasmLines_RZvirtual

def getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:

    lines = []

    angleRz = "pi/2" if signJ<0 else "-pi/2"
    angleRzz = "pi/2" if signJ>0 else "-pi/2"
    pi = np.pi

    lines.append("rz({0}) q[{1}];\n".format(angleRz, qubit1))
    rx_phases[qubit1] -= eval(angleRz)
    lines.append("rz({0}) q[{1}];\n".format(angleRz, qubit2))
    rx_phases[qubit2] -= eval(angleRz)

    lines.append("rzz({0}) q[{1}], q[{2}];\n".format(angleRzz, qubit1, qubit2))

    return lines

def getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:
    lines = []

    lines.append("ry(-pi/2) q[{0}];\n".format(qubit2))
    lines.append("rz(pi) q[{0}];\n".format(qubit2))
    rx_phases[qubit1] -= np.pi
    lines.extend( getCZQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
    lines.append("ry(-pi/2) q[{0}];\n".format(qubit2))
    lines.append("rz(pi) q[{0}];\n".format(qubit2))
    rx_phases[qubit1] -= np.pi

    return lines


def getSwapQasmImplementation(qubit1, qubit2, signJ, rx_phases) -> List[str]:
    lines = []

    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) )
    lines.extend( getCXQasmImplementation(qubit2, qubit1, signJ, rx_phases) )
    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, rx_phases) )

    return lines

def getDensityMatrixFromLastSimulation() -> np.ndarray:

    # Get the latest simulation Matlab workspace file:
    list_of_files = glob.glob("./results/workspaces/*.mat") 
    latest_workspace_file = max(list_of_files, key=os.path.getctime)

    # Get the density matrix:
    mat = scipy.io.loadmat(latest_workspace_file)
    densityMatrix = mat['rho']

    return densityMatrix

def getRxUnitaryMatrix(angle, qubit1, nQubits, rx_phases):
    
    # The unitary matrix of the Rx gate depends on the current phase phi on the qubit target:
    phi = rx_phases[qubit1]
    m_00 = np.cos(angle/2)
    m_01 = (np.sin(angle/2))*np.exp(phi*-1j)*-1j
    m_10 = (np.sin(angle/2))*np.exp(phi*1j)*-1j
    m_11 = m_00
    RxHalfPiMatrix = np.array([[m_00, m_01], [m_10, m_11]])

    idealRxHalfPiUnitaryMatrix = RxHalfPiMatrix
    # Now expand the unitary matrix on nQubits:
    if(nQubits>1):
        left = (nQubits-1)-qubit1
        right = qubit1
        if(right>0):
            idealRxHalfPiUnitaryMatrix = np.kron(idealRxHalfPiUnitaryMatrix, np.eye(2**right)) 
        if(left>0):
            idealRxHalfPiUnitaryMatrix = np.kron(np.eye(2**left), idealRxHalfPiUnitaryMatrix)

    return idealRxHalfPiUnitaryMatrix

def getHadamardUnitaryMatrix(qubit1, nQubits, rx_phases):

    # ry(-pi/2)
    ry_phases = [x+(np.pi/2) for x in rx_phases]
    ry_unitary_matrix = getRxUnitaryMatrix(-np.pi/2, qubit1, 1, ry_phases)

    # rz(pi):
    rx_phases[qubit1] -= np.pi 

    U_Hadamard = ry_unitary_matrix
    if(nQubits>1):
        left = (nQubits-1)-qubit1
        right = qubit1
        if(right>0):
            U_Hadamard = np.kron(U_Hadamard, np.eye(2**right)) 
        if(left>0):
            U_Hadamard = np.kron(np.eye(2**left), U_Hadamard)

    return U_Hadamard

def getCxUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases):

    U_Hadamard_1 = getHadamardUnitaryMatrix(qubit2, nQubits, rx_phases)

    # CZ:
    pi = np.pi
    angleRz = "pi/2" if signJ<0 else "-pi/2"
    rx_phases[qubit1] -= eval(angleRz)
    rx_phases[qubit2] -= eval(angleRz)

    RzzCircuit = QuantumCircuit(nQubits)
    angle_rzz = signJ * np.pi/2
    RzzCircuit.rzz(angle_rzz, qubit1, qubit2)
    U_RZZ = Operator(RzzCircuit).data

    U_Hadamard_2 = getHadamardUnitaryMatrix(qubit2, nQubits, rx_phases)

    tmp = np.matmul(U_RZZ, U_Hadamard_1)
    tmp = np.matmul(U_Hadamard_2, tmp)

    return tmp

def getSwapUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases) -> np.ndarray:

    # Two-qubit Swap gate unitary matrix:
    CX_tc_1 = getCxUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)
    CX_ct = getCxUnitaryMatrix(qubit2, qubit1, nQubits, signJ, rx_phases)
    CX_tc_2 = getCxUnitaryMatrix(qubit1, qubit2, nQubits, signJ, rx_phases)

    swap_U = np.matmul(CX_ct, CX_tc_1)
    swap_U = np.matmul(CX_tc_2, swap_U)

    return swap_U

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

        sumSwapFidelity_RZvirtual = 0.0  
        for i in range(shots):


            # Array containing the phases phy of the Rx gates (to compute the Ry ones just add pi/2)
            rx_phases = [0]*nQubits

            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state(of the 
            # to-swap qubits) and an ideal Swap gate:

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

            # Create the ideal Swap Unitary Matrix for the current Swap:
            #idealUnitaryMatrix = getSwapUnitaryMatrix(qubit1, qubit2, nQubits)
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

    reportFilePath = "./NMR_swap_error_rates_RZvirtual.txt"

    main()