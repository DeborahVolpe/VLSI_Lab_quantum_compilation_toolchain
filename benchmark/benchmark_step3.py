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

#   2) Path of the finaloptimized Step 3 .qasm file

#   3) Technology parameter: 'S' for Superconducting, 'M' for NMR, 'I' for Trapped Ions

#   4) Latency calculator required TRUE/FALSE


### Inputs handling

argn = len(argv)

if argn == 1:

    print("\n Input parameters required!\n")
    sys.exit(0)

else:

    # Check if input files are .qasm

    qasmref = argv[1]
    qasmopt = argv[2]

    if qasmref[-5:] != ".qasm":
        print("\n The script only accepts reference .qasm files as inputs! \n")
        sys.exit(0)
    if qasmopt[-5:] != ".qasm":
        print("\n The script only accepts optimized .qasm files as inputs! \n")
        sys.exit(0)

    # Check of Technology parameter (if not specified, assumed as 'M')

    if (argn >= 4) and (argv[3] == 'S'):

        tech = 'S'

    elif (argn >= 4) and (argv[3] == 'I'):

        tech = 'I'

    elif ( (argn >= 4) and (argv[3] == 'M') ) or (argn == 3):
        
        tech = 'M'

    # Check of Latency Calculator parameter (if not specified, assumed as false)

    if (argn == 5) and ( (argv[4] == "T") or (argv[4] == "true") ):

        lat = 1

    elif ( (argn == 5) and ( (argv[4] == "F") or (argv[4] == "false") ) ) or (argn <= 4):
        
        lat = 0

    elif (argn == 5) and (argv[4] != "F") and (argv[4] != "T") and (argv[4] != "false") and (argv[4] != "true"): 

        print("\n Latency Calculator parameter unknown: only acceptable inputs are T (true) or F (false). \n")
        sys.exit(0)

    elif (argn < 3) or (argn > 5):

        print("\n Wrong number of input parameters! \n")
        sys.exit(0)

### Reference QC creation
qcref = QuantumCircuit.from_qasm_file(qasmref)

### Optimized Step 3 QC creation
qcopt = QuantumCircuit.from_qasm_file(qasmopt)

# Pi approximation evaluation
# Maximum precision: 10^-15
pi = 3.141592653589793

#### QC Gate Count

print("\n")

c = qcopt.count_ops()
print("FINAL OPTIMIZED STEP 3 CIRCUIT GATES (" + qasmopt +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'rxx') and (k != 'rzz') and (k != 'cx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'rxx') or (k == 'rzz') or (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total 2-Qubit gates: " + str(s2) )

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

        if tech == 'S':

            if a[:2] == 'u2':

                latency += 1
        
            if a[:2] == 'u3':

                latency += 2

        else:
        
            if (a[0] == 'r') and ( ( (a[1] == 'x') and (a[2] == '(') ) or (a[1] == 'y') ):

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

result = execute(qcopt, simulator).result()
counts = result.get_counts(qcopt)
counts = {int(k, 2): v for k, v in counts.items()}
y = plot_histogram(counts, title='Final optimized Step 3 Circuit ('+qasmopt+')')

mpl.show()

### Qiskit optimized circuit comparison

if tech == 'S':
    basis_gates = ['cx', 'u1', 'u2', 'u3']
elif tech == 'M':
    basis_gates = ['cz', 'rx', 'ry', 'rz']
else:
    basis_gates = ['rxx', 'rx', 'ry', 'rz']

# Opt. Level 1

qisk1 = transpile(qcref, basis_gates = basis_gates, optimization_level = 1)

c = qisk1.count_ops()

print("QISKIT LV 1 OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'rxx') and (k != 'rzz') and (k != 'cx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'rxx') or (k == 'rzz') or (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total 2-Qubit gates: " + str(s2) )

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
        
            if (a[0] == 'r') and ( ( (a[1] == 'x') and (a[2] == '(') ) or (a[1] == 'y') ):

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
    if (k != 'rxx') and (k != 'rzz') and (k != 'cx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'rxx') or (k == 'rzz') or (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total 2-Qubit gates: " + str(s2) )

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
        
            if (a[0] == 'r') and ( ( (a[1] == 'x') and (a[2] == '(') ) or (a[1] == 'y') ):

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

def sq(a, b, c):
    circ = Circuit(1)
    if c != 0:
        circ.Rz(c, 0)
    if b != 0:
        circ.Rx(b, 0)
    if a != 0:
        circ.Rz(a, 0)
    return circ

if tech == 'S':
    cx_circ = Circuit(2)
    cx_circ.CX(0,1)
elif tech == 'I':
    cx_circ = Circuit(2)
    cx_circ.Ry(0.5,0)
    cx_circ.XXPhase(0.5,0,1)
    cx_circ.Rx(-0.5,0)
    cx_circ.Ry(-0.5,0)
    cx_circ.Rx(-0.5,1)
else:
    cx_circ = Circuit(2)
    cx_circ.Rz(-0.5,0)
    cx_circ.Rz(-0.5,0)
    cx_circ.ZZPhase(0.5,0,1)

qcref = QuantumCircuit.from_qasm_file(qasmref)
tket = qiskit_to_tk(qcref)
b = AerBackend()
b.compile_circuit(tket)

if tech == 'S':
    RebaseIBM().apply(tket)
elif tech == 'I':
    RebaseCustom({OpType.XXPhase}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
elif tech == 'M':
    RebaseCustom({OpType.ZZPhase}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)

tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'rxx') and (k != 'rzz') and (k != 'cx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'rxx') or (k == 'rzz') or (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total 2-Qubit gates: " + str(s2) )

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
        
            if (a[0] == 'r') and ( ( (a[1] == 'x') and (a[2] == '(') ) or (a[1] == 'y') ):

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

def sq(a, b, c):
    circ = Circuit(1)
    if c != 0:
        circ.Rz(c, 0)
    if b != 0:
        circ.Rx(b, 0)
    if a != 0:
        circ.Rz(a, 0)
    return circ

if tech == 'S':
    cx_circ = Circuit(2)
    cx_circ.CX(0,1)
elif tech == 'I':
    cx_circ = Circuit(2)
    cx_circ.Ry(0.5,0)
    cx_circ.XXPhase(0.5,0,1)
    cx_circ.Rx(-0.5,0)
    cx_circ.Ry(-0.5,0)
    cx_circ.Rx(-0.5,1)
else:
    cx_circ = Circuit(2)
    cx_circ.Rz(-0.5,0)
    cx_circ.Rz(-0.5,0)
    cx_circ.ZZPhase(0.5,0,1)

qcref = QuantumCircuit.from_qasm_file(qasmref)
tket = qiskit_to_tk(qcref)
b = AerBackend()
b.compile_circuit(tket, optimisation_level = 2)

if tech == 'S':
    RebaseIBM().apply(tket)
elif tech == 'I':
    RebaseCustom({OpType.XXPhase}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
elif tech == 'M':
    RebaseCustom({OpType.ZZPhase}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)

tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET MAX OPTIMIZATION CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'rxx') and (k != 'rzz') and (k != 'cx') and (k != 'measure'):
        s1 += c[k]
        if tech == 'S':
            if (k == 'u1'):
                z += c[k]
        else:
            if (k == 'rz'):
                z += c[k]
    elif (k == 'rxx') or (k == 'rzz') or (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
if tech == 'S':
    print("Total 1-Qubit non-U1 gates: " + str(s1-z) )
else:
    print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total 2-Qubit gates: " + str(s2) )

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
        
            if (a[0] == 'r') and ( ( (a[1] == 'x') and (a[2] == '(') ) or (a[1] == 'y') ):

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

