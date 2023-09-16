from Backend import Backend
from Node import Node
from Router import Router
from Circuit import Circuit
from Placer import Placer

from qiskit import transpile, IBMQ, QuantumCircuit
from qiskit.transpiler.passes import BasicSwap
from qiskit.transpiler import CouplingMap
from qiskit.converters import circuit_to_dag, dag_to_circuit

import matplotlib.pyplot as mpl

"""Testing script.
Applies the trivial mapping and basic routing to a specified quantum circuit. 
The same placing and routing strategies are applied also using qiskit to check for the correctness of the result.

"""

# Backend:
backend = Backend(5) # In the current implementation the backend has always the same coupling graph as ibmq_lima.
backend.drawCouplingGraph()

# Circuit:
circuit = Circuit("teleport.qasm") # The quantum circuit target of the trivial mapping and basic routing processes.
circuit.drawUsingQiskit("Initial circuit")

# Placer:
placer = Placer(backend)
initialMapping = [backend.nodes[0], backend.nodes[1], backend.nodes[2], backend.nodes[3], backend.nodes[4]]
placer.place( circuit, initialMapping )
circuit.drawUsingQiskit("My code - Placed circuit")

# Router:
router = Router(backend, initialMapping)
router.route(circuit)
print( "Connectivity constraints of the backend satisfied: " + str(router.checkConnectivitySatisfied(circuit)) )
print("Final mapping:")
for i in range( len(router.finalMapping) ):
    print( "q["+str(i)+"] -> "+ str(router.finalMapping[i].id) )
circuit.drawUsingQiskit("My code - Routed circuit")
print("Placed and routed circuit lines:")
for line in circuit.lines:
    print(line)

# Now let's transpile the circuit using the same strategies with Qiskit:
qiskitCircuit = QuantumCircuit.from_qasm_file("./teleport.qasm")
provider = IBMQ.load_account()
backend = provider.get_backend("ibmq_lima") # Backend architecture
new_circ_lv0 = transpile(qiskitCircuit, backend=backend, optimization_level=0, layout_method="trivial", routing_method="basic", translation_method="unroller", \
    basis_gates=['s', 'x', 'z', 't', 'y', 'cz', 'cx', 'swap', 'h', 'tdg', 'sdg', 'rx'])
new_circ_lv0.draw("mpl")

# Alternative check using BasicSwap:
# basicSwap = BasicSwap( CouplingMap(backend.configuration().coupling_map) )
# dag = circuit_to_dag(qiskitCircuit)
# new_dag = basicSwap.run(dag)
# new_circ_lv0 = dag_to_circuit(new_dag)
# new_circ_lv0.draw("mpl")

mpl.show(block=True) # In this way the script loops until all the figures are closed