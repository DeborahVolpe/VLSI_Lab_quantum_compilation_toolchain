from qiskit.execute_function import execute
from Backend import Backend
from Node import Node
from Router import Router
from Circuit import Circuit
from Placer import Placer

from qiskit import transpile, IBMQ, QuantumCircuit
from qiskit.transpiler.passes import BasicSwap
from qiskit.transpiler import CouplingMap
from qiskit.converters import circuit_to_dag, dag_to_circuit
from qiskit.visualization import plot_histogram

import matplotlib.pyplot as mpl

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
# Add measures:
circuit.lines.append("barrier n;")
circuit.lines.extend(circuit.meas)
circuit.drawUsingQiskit("My code - Routed circuit")
print("Placed and routed circuit lines:")
for line in circuit.lines:
    print(line)

# Simulation with my placement&routing strategies:
provider = IBMQ.load_account()
ibmq_lima = provider.get_backend("ibmq_lima")
qiskitCircuit = QuantumCircuit.from_qasm_str( ''.join(circuit.lines) )
result = execute(qiskitCircuit, ibmq_lima, initial_layout=[0,1,2,3,4], optimization_level=0).result()
counts = result.get_counts(qiskitCircuit)
counts = {int(k, 2): v for k, v in counts.items()}
x = plot_histogram(counts, title="Quantum circuit placed&routed using my code")

# Now let's transpile the circuit using the same strategies with Qiskit:
qiskitCircuit = QuantumCircuit.from_qasm_file("./teleport.qasm")
backend = provider.get_backend("ibmq_lima") # Backend architecture
new_circ_lv0 = transpile(qiskitCircuit, backend=backend, optimization_level=0, layout_method="trivial", routing_method="basic", translation_method="unroller", \
    basis_gates=['s', 'x', 'z', 't', 'y', 'cz', 'cx', 'swap', 'h', 'tdg', 'sdg', 'rx'])
new_circ_lv0.draw("mpl")

# Simulation with Qiskit placement&routing strategies:
# result = execute(new_circ_lv0, ibmq_lima, initial_layout=[0,1,2,3,4]).result()
# counts = result.get_counts(new_circ_lv0)
# counts = {int(k, 2): v for k, v in counts.items()}
# x = plot_histogram(counts, title="Quantum circuit placed&routed using Qiskit")

mpl.show(block=True) # In this way the script loops until all the figures are closed