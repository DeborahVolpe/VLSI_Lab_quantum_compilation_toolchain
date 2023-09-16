import sys

sys.path.append("./layout_synthesis/")
sys.path.append("./")
from layout_synthesis.backend import SuperconductingBackend
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer

import matplotlib.pyplot as mpl

# Backend:
backend = SuperconductingBackend.fromConfigurationFile("./backends/S/ibmq_lima.cfg") 
backend.drawCouplingGraph()

# Circuit:
qasmFile = "./qasms/rebased/github/S/small/adder_n4.qasm"
circuit = Circuit(qasmFile)
circuit.drawUsingQiskit("Original circuit") 

# Placer:
placer = Placer(backend)
saMapping = placer.getSimulatedAnnealingDenseMapping(circuit)
placer.place( circuit, saMapping )
circuit.drawUsingQiskit("Placed circuit")
print(circuit.meas)

mpl.show(block=True) # In this way the script loops until all the figures are closed