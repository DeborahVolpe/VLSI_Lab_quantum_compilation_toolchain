from qiskit import *
import interfaceqiskitmatlabquanto
import sys

if len(sys.argv) == 1:
    qasm_file_name = "./qasms/tmp.qasm"
    parametersFile = 'dummy_quantum_dot'
elif len(sys.argv) == 2:
    qasm_file_name = sys.argv[1]
    parametersFile = 'dummy_quantum_dot'
else:
    qasm_file_name = sys.argv[1]
    parametersFile = sys.argv[2]
    


qc = QuantumCircuit.from_qasm_file(qasm_file_name)

interfaceqiskitmatlabquanto.writetbfile(parametersFile+'_params', qasm_file_name)
interfaceqiskitmatlabquanto.executecircuit()

dictionaryWithStats = interfaceqiskitmatlabquanto.getresults()

print(dictionaryWithStats)