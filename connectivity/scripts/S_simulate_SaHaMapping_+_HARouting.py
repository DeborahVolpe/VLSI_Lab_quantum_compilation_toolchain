import sys

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import SuperconductingBackend
from layout_synthesis.router import Router
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer

import matplotlib.pyplot as mpl

from qiskit import QuantumCircuit, Aer
from qiskit.execute_function import execute
from qiskit.visualization import plot_histogram

# Backend:
backend = SuperconductingBackend.fromConfigurationFile("./backends/S/ibmq_lima.cfg") 
backend.drawCouplingGraph()

# Circuit:
qasmFile = "./qasm/original/phaseest_S_techoptimized.qasm"
circuit = Circuit(qasmFile) 

# Placer:
placer = Placer(backend)
SaHaMapping = placer.getSimulatedAnnealingHaMapping(circuit, [0, 0.5, 0.5, False])
placer.place( circuit, SaHaMapping )

# Router:
router = Router(backend)
print("Does the placed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkCircuitSatisfiesConnectivity(circuit)))
routedCircuit, finalMapping = router.routeHardwareAwareRouting(circuit, SaHaMapping, "lookahead", 
                                                               100, 0.5, 0, 0, 1)
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
x = plot_histogram(counts, title="Simulation results: Sa Ha Mapping + Harware-Aware routing")

mpl.show(block=True) # In this way the script loops until all the figures are closed