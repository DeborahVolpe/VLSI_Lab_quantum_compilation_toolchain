import sys
import os

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import SuperconductingBackend
from layout_synthesis.router import Router
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer

import matplotlib.pyplot as mpl

# Settings:
backend = SuperconductingBackend.fromConfigurationFile("backends/S/ibmq_toronto.cfg") # Backend.
originalCircuitsFolder = "qasm/original/manfredi_main_circuits_optimized" # Path to the folder containing the .qasm files to route.
routedCircuitsFolder = "qasm/routed/S/trivial mapping + HA routing" # Path to the folder in which to store the routed circuits.

n = 0 # Stores the total number of quantum circuits routed.
for qasmFile in os.listdir(originalCircuitsFolder): # For all the .qasm files contained:

    print("Current circuit: " + originalCircuitsFolder + "/" + qasmFile)

    # Circuit:
    circuit = Circuit(originalCircuitsFolder + "/" + qasmFile) 
    if(circuit.nq > backend.n_nodes):
        continue # Skip the quantum circuits that have an higher number of qubits in respect to the backend nodes.

    # Placer:
    placer = Placer(backend)
    trivialMapping = placer.getTrivialMapping(circuit)
    placer.place( circuit, trivialMapping )

    # Router:
    router = Router(backend)
    routedCircuit, finalMapping = router.routeHardwareAwareRouting(circuit, trivialMapping, "lookahead", 
                                                                100, 0.5, 0, 0, 1)

    # Save the routed circuit in a .qasm file:
    with open(routedCircuitsFolder + "/" + qasmFile, "w") as text_file:
        print(routedCircuit.DAGtoQASM(), file=text_file)

    n = n + 1

print("")
print(str(n) + " quantum circuits routed.")
    