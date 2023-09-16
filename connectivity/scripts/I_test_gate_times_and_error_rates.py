import sys

sys.path.append("./layout_synthesis/")
sys.path.append('./')
from layout_synthesis.backend import IonTrapBackend

import matplotlib.pyplot as mpl

# Settings:
isRZvirtual = False
backend = IonTrapBackend.fromConfigurationFile("./backends/I/ion_trap_experimental.cfg") # Backend.
backend.drawCouplingGraph() # Draw the backend coupling graph.

# for node1 in backend.nodes:
#     for node2 in backend.nodes:
#         print("{0}-{1} interaction sign: ({2})".format(node1.id, node2.id, backend.getSignX(node1, node2)))

# Print the Rxy, Rz gate times:
for node in backend.nodes:
    print( "Node {0} - Rxy gate time: {1} - Rz gate time: {2}".format(node.id, 
            backend.getSingleQubitGateTime(node, 1.5, False, False),
            backend.getSingleQubitGateTime(node, 1.5, True, True) ) )
print("--------------------------------------------")

# Print the Rxy, Rz error rates:
for node in backend.nodes:
    print( "Node {0} - Rxy error rate: {1} - Rz error rate: {2}".format(node.id, 
            backend.getSingleQubitErrorRate(node, 1.5, False, False),
            backend.getSingleQubitErrorRate(node, 1.5, True, True) ) )
print("--------------------------------------------")

# # Print the CZ gate times:
# for node1 in backend.nodes:
#     for node2 in backend.nodes:
#         print("CZ gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
#               str(backend.getCZGateTime(node1, node2, isRZvirtual)) )
# print("--------------------------------------------")

# Print the CX gate times:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("CX gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCXGateTime(node1, node2)) )
print("--------------------------------------------")

# Print the CX error rates:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("CX error rate between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getCXErrorRate(node1, node2)) )
print("--------------------------------------------")

# Print the Swap gate times and error rates:
for node1 in backend.nodes:
    for node2 in backend.nodes:
        print("Swap error rate between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapErrorRate(node1, node2)) )
        print("Swap gate time between node " + str(node1.id) + " and node " + str(node2.id) + " is: " + \
              str(backend.getSwapGateTime(node1, node2)) )

mpl.show(block=True) # In this way the script loops until all the figures are closed