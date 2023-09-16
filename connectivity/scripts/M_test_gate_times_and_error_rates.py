import sys

sys.path.append("./layout_synthesis/")
sys.path.append('./')
from layout_synthesis.backend import NmrBackend

import matplotlib.pyplot as mpl

# Settings:
isRZvirtual = True
backend = NmrBackend.fromConfigurationFile("./backends/M/crotonic_acid.cfg") # Backend.
backend.drawCouplingGraph() # Draw the backend coupling graph.

# Print the CZ gate times:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("CZ gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCZGateTime(node1, node2, isRZvirtual)) )
print("--------------------------------------------")

# Print the CX gate times:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("CX gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCXGateTime(node1, node2, isRZvirtual)) )
print("--------------------------------------------")

# Print the Swap gate times and error rates:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("Swap error rate between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapErrorRate(node1, node2, isRZvirtual)) )
        print("Swap gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapGateTime(node1, node2, isRZvirtual)) )

mpl.show(block=True) # In this way the script loops until all the figures are closed