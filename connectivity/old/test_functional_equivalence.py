import sys

sys.path.append("./router/")
from router.backend import SuperconductingBackend
from router.router import Router
from router.circuit import Circuit
from router.placer import Placer

import matplotlib.pyplot as mpl

from qiskit import QuantumCircuit, IBMQ, Aer
from qiskit.execute_function import execute
from qiskit.transpiler import Layout
from qiskit.transpiler.passes import ApplyLayout, LookaheadSwap, TrivialLayout, \
                                     FullAncillaAllocation, EnlargeWithAncilla
from qiskit.transpiler import CouplingMap
from qiskit.transpiler.passmanager import PassManager
from qiskit.visualization import plot_histogram

# Backend(models ibmq_lima):
ibmqLimaCouplingList = [ (0, 1, 0.004661, 305.778), (1, 2, 0.006276, 334.222), (1, 3, 0.01367, 497.778), 
                         (3, 4, 0.01975, 519.111) ] 
                                                                                                
backend = SuperconductingBackend(5, ibmqLimaCouplingList) 

# Circuit:
qasmFile = "./qasm/teleport.qasm"
circuit = Circuit(qasmFile) 

# Placer:
placer = Placer(backend)
trivialMapping = placer.getTrivialMapping(circuit)
placer.place( circuit, trivialMapping )

# Router:
router = Router(backend)
print("Does the placed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkCircuitSatisfiesConnectivity(circuit)))
routedCircuit = router.routingSvenJandura(circuit, trivialMapping)
print("Does the routed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkCircuitSatisfiesConnectivity(routedCircuit)))

# Now the same circuit will be placed and routed using Qiskit for comparison:
qiskitQuantumCircuit = QuantumCircuit.from_qasm_file(qasmFile)
couplingMap = CouplingMap([ [0,1], [1,2], [1,3], [3,4] ]) # (models ibmq_lima)

trivialLayout = TrivialLayout(couplingMap)
applyLayout = ApplyLayout()
lookaheadSwap = LookaheadSwap( couplingMap, 4, 4 )
fullAncillaAllocation = FullAncillaAllocation(couplingMap)
enlargeWithAncilla = EnlargeWithAncilla()

# PassManager:
passManager = PassManager()
passManager.append(trivialLayout)
passManager.append(fullAncillaAllocation)
passManager.append(enlargeWithAncilla)
passManager.append(applyLayout)
passManager.append(lookaheadSwap)
routedQiskitCircuit = passManager.run(qiskitQuantumCircuit)

# Simulation using Qiskit Aer simulator:
print("[Test]: starting quantum circuit simulation.")
simulator = Aer.get_backend('qasm_simulator')

qiskitQuantumCircuit.draw("mpl")
result = execute(qiskitQuantumCircuit, simulator).result()
counts = result.get_counts(qiskitQuantumCircuit)
x = plot_histogram(counts, title="Simulation results: original quantum circuit")

circuit = QuantumCircuit.from_qasm_str(routedCircuit.DAGtoQASM())
circuit.draw("mpl")
result = execute(circuit, simulator).result()
counts = result.get_counts(circuit)
x = plot_histogram(counts, title="Simulation results: my trivial placement + my Sven Jandura routing")

routedQiskitCircuit.draw("mpl")
result = execute(routedQiskitCircuit, simulator).result()
counts = result.get_counts(routedQiskitCircuit)
x = plot_histogram(counts, title="Simulation results: qiskit trivial placement + LookaheadSwap")

mpl.show(block=True) # In this way the script loops until all the figures are closed