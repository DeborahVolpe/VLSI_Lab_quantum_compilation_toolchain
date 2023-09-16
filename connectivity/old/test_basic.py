from Backend import Backend
from Node import Node
from Router import Router
from Circuit import Circuit
from Placer import Placer
import matplotlib.pyplot as mpl

# Backend:
backend = Backend(4)
backend.drawCouplingGraph()

# Circuit:
circuit = Circuit("grover101.qasm")
print("Circuit with " + str(circuit.nq) + " qubits. The lines of the circuit are:")
print(circuit.lines)
print("Single qubit gates:")
print(circuit.getSingleQubitGateLines())
print("Two qubit gates:")
print(circuit.getTwoQubitGateLines())
print("Single and Two qubit gates:")
print(circuit.getSingleAndTwoQubitGateLines())
print("Interacting qubits IDs:")
print(circuit.getInteractingQubitsIDs())
print("Extract interacting qubits from line 11:")
print( circuit.getInteractingQubitsIDsFromGateLine(11) )

# Placer:
circuit.drawUsingQiskit("Initial circuit")
placer = Placer(backend)
print( "Is the quantum circuit placed? " + str(circuit.isCircuitPlaced()) )
initialMapping = [backend.nodes[0], backend.nodes[1], backend.nodes[2], backend.nodes[3]]
placer.place( circuit, initialMapping )
print("Placing performed using a trivial initial mapping.")
print( "Is the quantum circuit placed? " + str(circuit.isCircuitPlaced()) )
circuit.drawUsingQiskit("Placed circuit")

# Router:
router = Router(backend, initialMapping)
print("Initial mapping:")
for node in initialMapping:
    print(node.id)
print( "Connectivity constraints of backend satisfied: " + str(router.checkConnectivitySatisfied(circuit)) )
router.route(circuit)
print( "Connectivity constraints of backend satisfied: " + str(router.checkConnectivitySatisfied(circuit)) )
print("Final mapping:")
for node in router.finalMapping:
    print(node.id)
circuit.drawUsingQiskit("Circuit after routing")

mpl.show(block=True) # In this way the script loops until all the figures are closed