import sys

sys.path.append("./router/")
from router.backend import Backend
from router.router import Router
from router.circuit import Circuit
from router.placer import Placer

import matplotlib.pyplot as mpl

from qiskit import QuantumCircuit, IBMQ, Aer
from qiskit.execute_function import execute
from qiskit.transpiler import Layout
from qiskit.transpiler.passes import ApplyLayout, SetLayout, BasicSwap, EnlargeWithAncilla, FullAncillaAllocation, DenseLayout
from qiskit.transpiler import CouplingMap
from qiskit.transpiler.passmanager import PassManager
from qiskit.visualization import plot_histogram

# Backend:
couplingList = [ [0, 1], [1, 2], [1, 3], [3, 4] ]
backend = Backend(5, couplingList) 

# Circuit:
qasmFile = "./qasm/teleport.qasm"
circuit = Circuit(qasmFile) 
circuit.drawUsingQiskit("Initial quantum circuit")

# Placer:
placer = Placer(backend)
initialMapping = placer.getDenseLayoutPlacement(circuit)
placer.place( circuit, initialMapping )
circuit.drawUsingQiskit("Placed quantum circuit using trivial mapping")

# Router:
router = Router(backend)
print("Does the placed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkConnectivitySatisfied(circuit)))
routedCircuit = router.routeBasicRouting(circuit, initialMapping)
routedCircuit.drawUsingQiskit("Placed&Routed quantum circuit using trivial placement and basic mapping")
print("Does the routed circuit satisfy the connectivity contraints of the backend? " + 
       str(router.checkConnectivitySatisfied(routedCircuit)))

# Now the same circuit will be mapped using Qiskit BasicMapper:
qiskitQuantumCircuit = QuantumCircuit.from_qasm_file(qasmFile)
#qiskitQuantumCircuit.remove_final_measurements()

couplingMap = CouplingMap(couplingList) 
myLayout = Layout.from_intlist([7, 8, 9, 10, 11], qiskitQuantumCircuit.qregs[0])
setLayout = SetLayout(myLayout)
denseLayout = DenseLayout(couplingMap)
fullAncillaAllocation = FullAncillaAllocation(couplingMap)
enlargeWithAncilla = EnlargeWithAncilla()
applyLayout = ApplyLayout()
basicSwap = BasicSwap(couplingMap)
# PassManager:
passManager = PassManager()
#passManager.append(setLayout)
passManager.append(denseLayout)
passManager.append(fullAncillaAllocation)
passManager.append(enlargeWithAncilla)
passManager.append(applyLayout)
passManager.append(basicSwap)
placedCirc = passManager.run(qiskitQuantumCircuit)

figure = placedCirc.draw("mpl", with_layout=True)

mpl.show(block=True) # In this way the script loops until all the figures are closed