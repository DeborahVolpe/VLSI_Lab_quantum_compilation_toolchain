import sys

sys.path.append("./router/")
from router.backend import Backend
from router.router import Router
from router.circuit import Circuit
from router.placer import Placer

import matplotlib.pyplot as mpl

# Backend:
ibmqLimaCouplingList = [ (0, 1), (1, 2), (1, 3), (3, 4) ] # The coupling list of ibmq_lima.
backend = Backend(5, ibmqLimaCouplingList) 
backend.drawCouplingGraph()

# Circuit:
circuit = Circuit("./qasm/teleport.qasm") # The circuit target of the trivial mapping and basic routing processes.
# Draw the quantum circuit DAG:
mpl.figure()
circuit.drawDAG()
# Draw the quantum circuit:
circuit.drawUsingQiskit("Initial quantum circuit")

# Placer:
placer = Placer(backend)
initialMapping = [backend.nodes[1], backend.nodes[0], backend.nodes[2], backend.nodes[3], backend.nodes[4]]
placer.place( circuit, initialMapping )
# Draw the quantum circuit DAG:
mpl.figure()
circuit.drawDAG()
# Draw the quantum circuit:
circuit.drawUsingQiskit("Placed quantum circuit")

# Router:
router = Router(backend)
routedCircuit = router.routeBasicRouting(circuit, initialMapping)
# Draw the routed quantum circuit:
routedCircuit.drawUsingQiskit("Routed quantum circuit")
mpl.figure()
routedCircuit.drawDAG()

mpl.show(block=True) # In this way the script loops until all the figures are closed