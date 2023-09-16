from typing import List
from qiskit import *
from qiskit.quantum_info.operators import Operator
import interfaceqiskitmatlabquanto
import glob
import random
import numpy as np
import scipy.io
from scipy.linalg import sqrtm

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

def getCzUnitaryMatrix(qubit1, qubit2, nQubits):
    idealCzCircuit = QuantumCircuit(nQubits)
    idealCzCircuit.cz(qubit1, qubit2)
    idealCzUnitaryMatrix = Operator(idealCzCircuit).data

    return idealCzUnitaryMatrix

def main():

    # Create an empty report file:
    f = open(reportFilePath, "w").close()
    
    for pair in [[0, 1],[1, 2],[2, 3],[3, 4]]: # Generate all the possible two-qubits paris. The quantum dot technology 
                                               # is not fully-connected, here the available pairs are generated based 
                                               # on the linear topology of the 'dummy_quantum_dot' backend.

        qubit1 = pair[0] # CZ qubit id
        qubit2 = pair[1] # CZ qubit id
        signExchInt = np.sign( ExchInt[qubit1][qubit2] )

        sumCzFidelity_RZvirtual = 0.0 
        sumCzFidelity_notRZvirtual = 0.0 
        for i in range(shots):
            # Part1: compute the density matrix(rho) of a circuit composed of a random superposition state (of the 
            # qubits on which apply the CZ gate) and an ideal Cz gate:

            # Generate a quantum circuit with a random superposition state for the two qubits on which apply the CZ:
            qasmLines = []
            qasmLines.extend( getInitialQasmLines(nQubits) )
            qasmLines_RZvirtual, qasmLines_nonRZvirtual = getRandomRotationsQasmLines(qubit1, qubit2, signExchInt)
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

            # Create the ideal Cz Unitary Matrix for the current Cz:
            idealCzUnitaryMatrix = getCzUnitaryMatrix(qubit1, qubit2, nQubits)
            
            # rho = idealCzUnitaryMatrix * rho * adjoint(idealCzUnitaryMatrix):
            adj = idealCzUnitaryMatrix.conj().T
            rho = np.matmul(rho, adj)
            rho = np.matmul(idealCzUnitaryMatrix, rho) # Final rho.

            # Part2: compute the density matrix(sigma) of a circuit composed of the same superposition state(of the 
            # qubits on which apply the CZ gate) and a non-ideal Cz gate:

            # Add the CZ gate to the quantum circuit:
            f = open(qasm_file_name, "a")
            f.writelines( getCZQasmImplementation(qubit1, qubit2, signExchInt, True) )
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
            print( "Iteration {0}; CZ q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation: {3}".format(
                                                                                      i, qubit1, qubit2, Czfidelity) )
            sumCzFidelity_RZvirtual += Czfidelity

            f = open(qasm_file_name, "w")
            f.writelines( getInitialQasmLines(nQubits) )
            f.writelines(qasmLines_nonRZvirtual)
            f.writelines( getCZQasmImplementation(qubit1, qubit2, signExchInt, False) )
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
            print( "Iteration {0}; CZ q[{1}], q[{2}]; quantum gate fidelity obtained in last simulation (not RZ virtual): {3}".format(
                                                                                      i, qubit1, qubit2, Czfidelity) )
            sumCzFidelity_notRZvirtual += Czfidelity

        # Compute the average fidelity and error rate:
        avgCzFidelity_RZvirtual = sumCzFidelity_RZvirtual/shots
        avgCzErrRate_RZvirtual = 1 - avgCzFidelity_RZvirtual

        avgCzFidelity_notRZvirtual = sumCzFidelity_notRZvirtual/shots
        avgCzErrRate_notRZvirtual = 1 - avgCzFidelity_notRZvirtual

        # Print result:
        f = open(reportFilePath, "a")
        f.write("CZ q[{0}], q[{1}]; average quantum gate error rate (RZ virtual): {2}\n".format(qubit1, qubit2, avgCzErrRate_RZvirtual))
        f.write("CZ q[{0}], q[{1}]; average quantum gate error rate (not RZ virtual): {2}\n".format(qubit1, qubit2, avgCzErrRate_notRZvirtual))
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

    reportFilePath = "./QuantumDot_cz_error_rates.txt"

    main()