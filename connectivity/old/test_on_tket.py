from qiskit import IBMQ
from pytket import Circuit
from pytket.extensions.qiskit import IBMQBackend
from pytket.passes import PlacementPass
from pytket.predicates import ConnectivityPredicate
from pytket.routing import GraphPlacement
from pytket.qasm.qasm import circuit_to_qasm

# Settings:
IBMQ.enable_account("a8049957c53961345dfc87f0a27003852d0fb2218bb04114e30edcb1b37fa8213a28197d4117e4ec708d841eaef8a41511045e27ffc451c49577f0da08798848")
backend = IBMQBackend("ibmq_lima")

# Quantum circuit:
circ = Circuit(4)   # qubits are numbered 0-3
circ.X(0)           # first apply an X gate to qubit 0
circ.CX(1, 3)       # and apply a CX gate with control qubit 1
                    #   and target qubit 3
circ.Z(3)           # then apply a Z gate to qubit 3
circ.measure_all()

# Save .qasm of initial circuit:
print(ConnectivityPredicate(backend.backend_info.architecture).verify(circ))
circuit_to_qasm(circ, "initial_qc.qasm")

# Placement Pass:
place = PlacementPass(GraphPlacement(backend.backend_info.architecture))
place.apply(circ)

# Save .qasm of placed circuit:
print(ConnectivityPredicate(backend.backend_info.architecture).verify(circ))
circuit_to_qasm(circ, "placed_qc.qasm")

