import sys

sys.path.append("./router/")
from router.backend import Backend
from router.router import Router
from router.circuit import Circuit
from router.placer import Placer

import matplotlib.pyplot as mpl

from qiskit import QuantumCircuit
from qiskit.transpiler import Layout
from qiskit.transpiler.passes import ApplyLayout, SetLayout, BasicSwap
from qiskit.transpiler import CouplingMap
from qiskit.transpiler.passmanager import PassManager

# Backend:
ibmqLimaCouplingList = [ (0, 1), (1, 2), (1, 3), (3, 4) ] # The coupling list of ibmq_lima.
backend = Backend(5, ibmqLimaCouplingList) 
backend.drawCouplingGraph()

# Circuit:
qasmFile = "./qasm/teleport.qasm"
circuit = Circuit(qasmFile) # The quantum circuit target of the trivial mapping and basic routing processes.
# Draw the quantum circuit:
circuit.drawUsingQiskit("Initial quantum circuit")

# Placer:
placer = Placer(backend)
initialMapping = [backend.nodes[1], backend.nodes[0], backend.nodes[2], backend.nodes[3], backend.nodes[4]]
placer.place( circuit, initialMapping )
# Draw the quantum circuit:
circuit.drawUsingQiskit("Placed quantum circuit")

# Router:
router = Router(backend)
routedCircuit = router.routeBasicRouting(circuit, initialMapping)
# Draw the routed quantum circuit:
routedCircuit.drawUsingQiskit("Routed quantum circuit")

# Now the same circuit will be mapped using Qiskit BasicMapper:
qiskitQuantumCircuit = QuantumCircuit.from_qasm_file(qasmFile)
#qiskitQuantumCircuit.remove_final_measurements()

myLayout = Layout.from_intlist([1, 0, 2, 3, 4], qiskitQuantumCircuit.qregs[0])
setLayout = SetLayout(myLayout)
applyLayout = ApplyLayout()
basicSwap = BasicSwap( CouplingMap([ [0,1], [1,2], [1,3], [3,4] ]) )
# PassManager:
passManager = PassManager()
passManager.append(setLayout)
passManager.append(applyLayout)
passManager.append(basicSwap)
placedCirc = passManager.run(qiskitQuantumCircuit)

figure = placedCirc.draw("mpl")
figure.canvas.manager.set_window_title("Routed quantum circuit using Qiskit BasicMapper")

mpl.show(block=True) # In this way the script loops until all the figures are closed