import sys
from sys import argv
import os
from pytket import *
from pytket.extensions.qiskit import *
from pytket.passes import *
from qiskit import *
import numpy as np
from qiskit.providers.aer import QasmSimulator, UnitarySimulator
from qiskit.visualization import plot_histogram
import matplotlib.pyplot as mpl

### Input parameters:

#   1) QC to draw


### Inputs handling

argn = len(argv)

if argn == 1:

    print("\n Input parameters required!\n")
    sys.exit(0)

else:

    # Check if input files are .qasm

    qasm = argv[1]

    if qasm[-5:] != ".qasm":
        print("\n The script only accepts reference .qasm files as inputs! \n")
        sys.exit(0)

    if (argn > 2):

        print("\n Wrong number of input parameters! \n")
        sys.exit(0)


### QC creation
qc = QuantumCircuit.from_qasm_file(qasm)

### Matplotlib Drawing
d = qc.draw(output='text')
print(d)

sys.exit(0)
