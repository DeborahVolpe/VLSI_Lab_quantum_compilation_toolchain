import sys

sys.path.append("./layout_synthesis/")
sys.path.append("./")
from layout_synthesis.backend import SuperconductingBackend

import matplotlib.pyplot as mpl

# Backend:
backend = SuperconductingBackend.fromConfigurationFile("./backends/S/ibmq_lima.cfg") 
backend.drawCouplingGraph()

# Print the CX error rates and gate times:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("CX error rate between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCXErrorRate(node1, node2)) )
        print("CX gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCXGateTime(node1, node2)) )

print("--------------------------------------------")

# Print the Swap error rates and gate times:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("Swap error rate between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapErrorRate(node1, node2)) )
        print("Swap gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapGateTime(node1, node2)) )

mpl.show(block=True) # In this way the script loops until all the figures are closed