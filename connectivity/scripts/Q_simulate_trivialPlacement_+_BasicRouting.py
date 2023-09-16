import sys

sys.path.append("./layout_synthesis/")
sys.path.append('./')
from layout_synthesis.backend import QuantumDotBackend
from layout_synthesis.router import Router
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer

import matplotlib.pyplot as mpl

from qiskit import QuantumCircuit, IBMQ, Aer
from qiskit.execute_function import execute
from qiskit.visualization import plot_histogram

# Backend:
backend = QuantumDotBackend.fromConfigurationFile("backends/Q/5nodes_quantum_dot.cfg")
backend.drawCouplingGraph()

# Circuit:
qasmFile = "./qasm/original/two_qubit_simple_circuit_Q_techoptimized.qasm"
circuit = Circuit(qasmFile) 

# Placer:
placer = Placer(backend)
trivialMapping = placer.getTrivialMapping(circuit)
placer.place( circuit, trivialMapping )

# Router:
router = Router(backend)
print("Does the placed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkCircuitSatisfiesConnectivity(circuit)))
routedCircuit, finalMapping = router.routeBasicRouting(circuit, trivialMapping)
print("Does the routed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkCircuitSatisfiesConnectivity(routedCircuit)))

# Simulation using Qiskit Aer QASM simulator:
print("[Test]: starting quantum circuit simulation.")
simulator = Aer.get_backend('qasm_simulator')

qiskitQuantumCircuit = QuantumCircuit.from_qasm_file(qasmFile)
qiskitQuantumCircuit.draw("mpl")
result = execute(qiskitQuantumCircuit, simulator).result()
counts = result.get_counts(qiskitQuantumCircuit)
x = plot_histogram(counts, title="Simulation results: original quantum circuit")

circuit = QuantumCircuit.from_qasm_str(routedCircuit.toQASM(True))
circuit.draw("mpl")
result = execute(circuit, simulator).result()
counts = result.get_counts(circuit)
x = plot_histogram(counts, title="Simulation results: trivial placement + BasicRouting")

mpl.show(block=True) # In this way the script loops until all the figures are closed