from typing import List
from qiskit import *
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

def getRandomRotationsQasmLines(qubit1, qubit2, signJ) -> List:
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
    qasmLines_nonRZvirtual = [] 
    if( random.uniform(0, 1) <= 0.5 ): # 50% chance.
        # Add a random single-qubit gate for each qubit to be swapped:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda2, qubit2) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit2) )
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit2) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta2, qubit2) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit2) )
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit2) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi2, qubit2) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))
    else: # 50% chance.
        # Generate an entagled state:
        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(lambda1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(lambda1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )
        qasmLines_nonRZvirtual.append( "rx(pi/2) q[{0}];\n".format(qubit1) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(theta1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(theta1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )
        qasmLines_nonRZvirtual.append( "rx(-pi/2) q[{0}];\n".format(qubit1) )

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi1, qubit1) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi1, qubit1))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit1))

        qasmLines_RZvirtual.append( "x q[{0}];\n".format(qubit2) )
        qasmLines_nonRZvirtual.append( "x q[{0}];\n".format(qubit2) )

        qasmLines_RZvirtual.append("ry(pi/2) q[{0}];\n".format(qubit2))
        qasmLines_RZvirtual.append("rx(pi) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("rz(pi) q[{0}];\n".format(qubit2))

        qasmLines_RZvirtual.append( "cz q[{0}], q[{1}];\n".format(qubit1, qubit2) )
        qasmLines_nonRZvirtual.extend( getCZQasmImplementation(qubit1, qubit2, signJ, False) )

        qasmLines_RZvirtual.append("ry(pi/2) q[{0}];\n".format(qubit2))
        qasmLines_RZvirtual.append("rx(pi) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("rz(pi) q[{0}];\n".format(qubit2))

        qasmLines_RZvirtual.append( "rz({0}) q[{1}];\n".format(phi2, qubit2) )
        qasmLines_nonRZvirtual.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        qasmLines_nonRZvirtual.append("ry({0}) q[{1}];\n".format(phi2, qubit2))
        qasmLines_nonRZvirtual.append("rx(pi/2) q[{0}];\n".format(qubit2))

    return qasmLines_RZvirtual, qasmLines_nonRZvirtual

def getCZQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) -> List[str]:

    lines = []

    angleRz = "pi/2" if signJ<0 else "-pi/2"
    angleRzz = "pi/2" if signJ>0 else "-pi/2"

    if(isRZvirtual):
        lines.append("rz({0}) q[{1}];\n".format(angleRz, qubit1))
        lines.append("rz({0}) q[{1}];\n".format(angleRz, qubit2))
    else:
        lines.append("rx(-pi/2) q[{0}];\n".format(qubit1))
        lines.append("ry({0}) q[{1}];\n".format(angleRz, qubit1))
        lines.append("rx(pi/2) q[{0}];\n".format(qubit1))

        lines.append("rx(-pi/2) q[{0}];\n".format(qubit2))
        lines.append("ry({0}) q[{1}];\n".format(angleRz, qubit2))
        lines.append("rx(pi/2) q[{0}];\n".format(qubit2))

    lines.append("rzz({0}) q[{1}], q[{2}];\n".format(angleRzz, qubit1, qubit2))

    return lines

def getCXQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) -> List[str]:
    lines = []

    if(isRZvirtual):
        lines.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        lines.append("rz(pi) q[{0}];\n".format(qubit2))
    else:
        lines.append("ry(pi/2) q[{0}];\n".format(qubit2))
        lines.append("rx(pi) q[{0}];\n".format(qubit2))

    lines.extend( getCZQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) )

    if(isRZvirtual):
        lines.append("ry(-pi/2) q[{0}];\n".format(qubit2))
        lines.append("rz(pi) q[{0}];\n".format(qubit2))
    else:
        lines.append("ry(pi/2) q[{0}];\n".format(qubit2))
        lines.append("rx(pi) q[{0}];\n".format(qubit2))

    return lines


def getSwapQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) -> List[str]:
    lines = []

    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) )
    lines.extend( getCXQasmImplementation(qubit2, qubit1, signJ, isRZvirtual) )
    lines.extend( getCXQasmImplementation(qubit1, qubit2, signJ, isRZvirtual) )

    return lines

def getDensityMatrixFromLastSimulation() -> np.ndarray:

    # Get the latest simulation Matlab workspace file:
    list_of_files = glob.glob("./results/workspaces/*.mat") 
    latest_workspace_file = max(list_of_files, key=os.path.getctime)

    # Get the density matrix:
    mat = scipy.io.loadmat(latest_workspace_file)
    densityMatrix = mat['rho']

    return densityMatrix

def getSwapUnitaryMatrix(qubit1, qubit2, nQubits) -> np.ndarray:

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

        sumSwapFidelity_RZvirtual = 0.0 
        sumSwapFidelity_notRZvirtual = 0.0 
        for i in range(shots):
            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state(of the 
            # to-swap qubits) and an ideal Swap gate:

            # Generate a quantum circuit with a random superposition state for the two qubits to be swapped:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            qasmLines_RZvirtual, qasmLines_nonRZvirtual = getRandomRotationsQasmLines(qubit1, qubit2, signJ)
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
            # This commented code uses Qiskit to compute the unnitary matrix.
            # idealSwapCircuit = QuantumCircuit(nQubits)
            # idealSwapCircuit.swap(qubit1, qubit2)
            # idealSwapUnitaryMatrix = Operator(idealSwapCircuit).data
            idealSwapUnitaryMatrix = getSwapUnitaryMatrix(qubit1, qubit2, nQubits)
            
            # rho = idealSwapUnitaryMatrix * rho * adjoint(idealSwapUnitaryMatrix):
            adj = idealSwapUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealSwapUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # to-swap qubits) and a non-ideal Swap gate:

            # Add the swap gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getSwapQasmImplementation(qubit1, qubit2, signJ, True) )
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

            f = open(qasm_file_name, "w")
            f.writelines( getInitialQasmLines(nQubits) )
            f.writelines(qasmLines_nonRZvirtual)
            f.writelines( getSwapQasmImplementation(qubit1, qubit2, signJ, False) )
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
            print( "Iteration {0}; SWAP q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (not RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Swapfidelity) )
            sumSwapFidelity_notRZvirtual += Swapfidelity

        # Compute the average fidelity and error rate:
        avgSwapFidelity_RZvirtual = sumSwapFidelity_RZvirtual/shots
        avgSwapErrRate_RZvirtual = 1 - avgSwapFidelity_RZvirtual

        avgSwapFidelity_notRZvirtual = sumSwapFidelity_notRZvirtual/shots
        avgSwapErrRate_notRZvirtual = 1 - avgSwapFidelity_notRZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("SWAP q[{0}], q[{1}]; average quantum gate error rate (RZ virtual): {2}\n".format(qubit1, qubit2, avgSwapErrRate_RZvirtual))
        f.write("SWAP q[{0}], q[{1}]; average quantum gate error rate (not RZ virtual): {2}\n".format(qubit1, qubit2, avgSwapErrRate_notRZvirtual))
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

    reportFilePath = "./NMR_swap_error_rates.txt"

    main()