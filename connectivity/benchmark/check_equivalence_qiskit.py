from qiskit import QuantumCircuit
from qiskit.quantum_info import Statevector
import numpy as np
import sys

if( len(sys.argv)<3 ):
    sys.exit("Error, specify the path to the two circuits to compare.")

circuit1Path = sys.argv[1]
circuit2Path = sys.argv[2]

qc1 = QuantumCircuit.from_qasm_file(circuit1Path)
qc2 = QuantumCircuit.from_qasm_file(circuit2Path)

print("Functional equivalence? {0}".format(Statevector.from_instruction(qc1).equiv(Statevector.from_instruction(qc2))))