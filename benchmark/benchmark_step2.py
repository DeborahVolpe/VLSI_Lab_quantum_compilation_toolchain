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

#   1) Path of the reference .qasm file

#   2) Path of the optimized Step 1 .qasm file

#   3) Path of the techoptimized Step 2 .qasm file

#   4) Technology parameter: 'S' for Superconducting, 'M' for NMR, 'I' for Trapped Ions

#   5) Latency calculator required TRUE/FALSE


### Inputs handling

argn = len(argv)

if argn == 1:

    print("\n Input parameters required!\n")
    sys.exit(0)

else:

    # Check if input files are .qasm

    qasmref = argv[1]
    qasmopt = argv[2]
    qasmtech = argv[3]

    if qasmref[-5:] != ".qasm":
        print("\n The script only accepts reference .qasm files as inputs! \n")
        sys.exit(0)
    if qasmopt[-5:] != ".qasm":
        print("\n The script only accepts optimized .qasm files as inputs! \n")
        sys.exit(0)
    if qasmtech[-5:] != ".qasm":
        print("\n The script only accepts optimized .qasm files as inputs! \n")
        sys.exit(0)

    # Check of Technology parameter (if not specified, assumed as 'M')

    if (argn >= 5) and (argv[4] == 'S'):

        tech = 'S'

    elif (argn >= 5) and (argv[4] == 'I'):

        tech = 'I'

    elif ( (argn >= 5) and (argv[4] == 'M') ) or (argn == 4):
        
        tech = 'M'

    # Check of Latency Calculator parameter (if not specified, assumed as false)

    if (argn == 6) and ( (argv[5] == "T") or (argv[5] == "true") ):

        lat = 1

    elif ( (argn == 6) and ( (argv[5] == "F") or (argv[5] == "false") ) ) or (argn < 6):
        
        lat = 0

    elif (argn == 6) and (argv[5] != "F") and (argv[5] != "T") and (argv[5] != "false") and (argv[5] != "true"): 

        print("\n Latency Calculator parameter unknown: only acceptable inputs are T (true) or F (false). \n")
        sys.exit(0)

    elif (argn < 4) or (argn > 6):

        print("\n Wrong number of input parameters! \n")
        sys.exit(0)

### Reference QC creation
qcref = QuantumCircuit.from_qasm_file(qasmref)

### Optimized Step 1 QC creation
qcopt = QuantumCircuit.from_qasm_file(qasmopt)

### Techoptimized QC Step 2 creation
qctech = QuantumCircuit.from_qasm_file(qasmtech)

# Pi approximation evaluation
# Maximum precision: 10^-15
pi = 3.141592653589793

#### QC Gate Count

print("\n")

c = qcopt.count_ops()
print("OPTIMIZED STEP 1 CIRCUIT GATES (" + qasmopt +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'measure'):
        s1 += c[k]
        if (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    f = open(qasmopt, "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    for i in range(3,N):

        a = lines[i]

        if (a[0] == 'x') or (a[0] == 'y'):
            latency += 2

        elif (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

            start = a.find('(')
            end = a.find(')')
            if a[start+1] == '-':
                rot = float(a[start+2:end])
            else:
                rot = float(a[start+1:end])

            latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )

print("\n")

c = qctech.count_ops()
print("TECHOPTIMIZED STEP 2 CIRCUIT GATES (" + qasmtech +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    f = open(qasmtech, "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    for i in range(3,N):

        a = lines[i]

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

                start = a.find('(')
                end = a.find(')')
                if a[start+1] == '-':
                    rot = float(a[start+2:end])
                else:
                    rot = float(a[start+1:end])

                latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )

print("\n")

### QASM Simulator

# Select the QasmSimulator from the Aer provider
simulator = Aer.get_backend('qasm_simulator')

# Execute and get counts
result = execute(qcref, simulator).result()
counts = result.get_counts(qcref)
counts = {int(k, 2): v for k, v in counts.items()}
x = plot_histogram(counts, title='Reference Circuit ('+qasmref+')')

result = execute(qctech, simulator).result()
counts = result.get_counts(qctech)
counts = {int(k, 2): v for k, v in counts.items()}
y = plot_histogram(counts, title='Techoptimized Step 2 Circuit ('+qasmtech+')')

mpl.show()

### Qiskit optimized circuit comparison

if tech == 'S':
    basis_gates = ['cx', 'u1', 'u2', 'u3']
elif tech == 'M':
    basis_gates = ['cx', 'cz', 'rx', 'ry', 'rz']
else:
    basis_gates = ['cx', 'rx', 'ry', 'rz']

# Opt. Level 1

qisk1 = transpile(qcref, basis_gates = basis_gates, optimization_level = 1)

c = qisk1.count_ops()
print("QISKIT LV 1 OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    os.system("touch ./temp.qasm")

    qisk1.qasm(False, "./temp.qasm")

    f = open('./temp.qasm', "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    os.system("rm ./temp.qasm")

    for i in range(3,N):

        a = lines[i]
        qpos = a.find('q')

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

                if "pi" in a:

                    # Evaluation of expression in a floating point value
                    l = len(str(pi))
                    subelem = a[:qpos]    # Creation of subelement, string with no target qubit
                    rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','')
                    rotation = eval(rotation)
                    rotation = round(rotation, l-1)
                    rotation = str(rotation)

                    # Isolation of old Theta parameter and replacement

                    elelen = len(a)

                    for n in range(0,elelen):
                        if a[n] == "(":
                            break

                    for m in range(0,elelen):
                        if a[m] == ")":
                            break
                    
                    a = a[:n+1] + rotation + a[m:]

                start = a.find('(')
                end = a.find(')')
                if a[start+1] == '-':
                    rot = float(a[start+2:end])
                else:
                    rot = float(a[start+1:end])

                latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )


print("\n")

# Opt. Level 3

qisk2 = transpile(qcref, basis_gates = basis_gates, optimization_level = 3)

c = qisk2.count_ops()
print("QISKIT LV 3 OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    os.system("touch ./temp.qasm")

    qisk2.qasm(False, "./temp.qasm")

    f = open('./temp.qasm', "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    os.system("rm ./temp.qasm")

    for i in range(3,N):

        a = lines[i]
        qpos = a.find('q')

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

                if "pi" in a:

                    # Evaluation of expression in a floating point value
                    l = len(str(pi))
                    subelem = a[:qpos]    # Creation of subelement, string with no target qubit
                    rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','')
                    rotation = eval(rotation)
                    rotation = round(rotation, l-1)
                    rotation = str(rotation)

                    # Isolation of old Theta parameter and replacement

                    elelen = len(a)

                    for n in range(0,elelen):
                        if a[n] == "(":
                            break

                    for m in range(0,elelen):
                        if a[m] == ")":
                            break
                    
                    a = a[:n+1] + rotation + a[m:]

                start = a.find('(')
                end = a.find(')')
                if a[start+1] == '-':
                    rot = float(a[start+2:end])
                else:
                    rot = float(a[start+1:end])

                latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )

print("\n")
 
### T-Ket optimized circuit comparison

cx_circ = Circuit(2)
cx_circ.CX(0,1)

def sq(a, b, c):
    circ = Circuit(1)
    if c != 0:
        circ.Rz(c, 0)
    if b != 0:
        circ.Rx(b, 0)
    if a != 0:
        circ.Rz(a, 0)
    return circ

qcref = QuantumCircuit.from_qasm_file(qasmref)
tket = qiskit_to_tk(qcref)
b = AerBackend()
b.compile_circuit(tket)
if tech == 'S':
    RebaseIBM().apply(tket)
else:
    RebaseCustom({OpType.CX}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    os.system("touch ./temp.qasm")

    tket.qasm(False, "./temp.qasm")

    f = open('./temp.qasm', "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    os.system("rm ./temp.qasm")

    for i in range(3,N):

        a = lines[i]
        qpos = a.find('q')

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

                if "pi" in a:

                    # Evaluation of expression in a floating point value
                    l = len(str(pi))
                    subelem = a[:qpos]    # Creation of subelement, string with no target qubit
                    rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','')
                    rotation = eval(rotation)
                    rotation = round(rotation, l-1)
                    rotation = str(rotation)

                    # Isolation of old Theta parameter and replacement

                    elelen = len(a)

                    for n in range(0,elelen):
                        if a[n] == "(":
                            break

                    for m in range(0,elelen):
                        if a[m] == ")":
                            break
                    
                    a = a[:n+1] + rotation + a[m:]

                start = a.find('(')
                end = a.find(')')
                if a[start+1] == '-':
                    rot = float(a[start+2:end])
                else:
                    rot = float(a[start+1:end])

                latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )

print("\n")

### T-Ket best optimization circuit comparison

cx_circ = Circuit(2)
cx_circ.CX(0,1)

def sq(a, b, c):
    circ = Circuit(1)
    if c != 0:
        circ.Rz(c, 0)
    if b != 0:
        circ.Rx(b, 0)
    if a != 0:
        circ.Rz(a, 0)
    return circ

qcref = QuantumCircuit.from_qasm_file(qasmref)
tket = qiskit_to_tk(qcref)
b = AerBackend()
b.compile_circuit(tket, optimisation_level = 2)
if tech == 'S':
    RebaseIBM().apply(tket)
else:
    RebaseCustom({OpType.CX}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET MAX OPTIMIZATION CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    os.system("touch ./temp.qasm")

    tket.qasm(False, "./temp.qasm")

    f = open('./temp.qasm', "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    os.system("rm ./temp.qasm")

    for i in range(3,N):

        a = lines[i]
        qpos = a.find('q')

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

                if "pi" in a:

                    # Evaluation of expression in a floating point value
                    l = len(str(pi))
                    subelem = a[:qpos]    # Creation of subelement, string with no target qubit
                    rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','')
                    rotation = eval(rotation)
                    rotation = round(rotation, l-1)
                    rotation = str(rotation)

                    # Isolation of old Theta parameter and replacement

                    elelen = len(a)

                    for n in range(0,elelen):
                        if a[n] == "(":
                            break

                    for m in range(0,elelen):
                        if a[m] == ")":
                            break
                    
                    a = a[:n+1] + rotation + a[m:]
            
                start = a.find('(')
                end = a.find(')')
                if a[start+1] == '-':
                    rot = float(a[start+2:end])
                else:
                    rot = float(a[start+1:end])

                latency += (2*rot)/pi

    print("Total Weighted Latency: " + str(latency) )

print("\n")

sys.exit(0)

