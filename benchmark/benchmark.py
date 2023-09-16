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

#   2) Path of the optimized .qasm file

#   3) Unitary simulation required TRUE/FALSE

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

    # Check of Unitary parameter (if not specified, assumed as false)

    if (argn >= 4) and ( (argv[3] == "T") or (argv[3] == "true") ):

        usim = 1

    elif ( (argn >= 4) and ( (argv[3] == "F") or (argv[3] == "false") ) ) or (argn == 3):
        
        usim = 0

    elif (argn >= 4) and (argv[3] != "F") and (argv[3] != "T") and (argv[3] != "false") and (argv[3] != "true"): 

        print("\n Unitary Simulation parameter unknown: only acceptable inputs are T (true) or F (false). \n")
        sys.exit(0)

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

### Optimized QC creation
qcopt = QuantumCircuit.from_qasm_file(qasmopt)

# Pi approximation evaluation
# Maximum precision: 10^-15
pi = 3.141592653589793

#### QC Gate Count
print("\n")

c = qcref.count_ops()
print("REFERENCE CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
print("Total 1-Qubit non-RZ gates: " + str(s1-z) )
print("Total CX/CZ gates: " + str(s2) )

if lat == 1:
    
    ### Creation of "lines" circuit list

    f = open(qasmref, "r")

    lines = list(filter(None, (line.rstrip() for line in f)))

    f.close()

    N = len(lines)
    for i in range(3,N):
        lines[i] = lines[i].replace(' ','')
    latency = 0

    for i in range(3,N):

        a = lines[i]

        if "pi" in a:

            # Evaluation of expression in a floating point value

            qpos = a.find('q')
            l = len(str(pi))
            subelem = a[:qpos]
            rotation = subelem.replace(' ','').replace('(','').replace(')','').replace('rx','').replace('ry','').replace('rz','').replace('u1','').replace('u2','').replace('u3','')
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

        elif (a[0] == 'h'):
            latency += 1

    print("Total Weighted Latency: " + str(latency) )

print("\n")

c = qcopt.count_ops()
print("OPTIMIZED CIRCUIT GATES (" + qasmopt +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
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

### QASM Simulator

if usim == 0:

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
    y = plot_histogram(counts, title='Optimized Circuit ('+qasmopt+')')

    mpl.show()

### Unitary Simulator

else:

    # Measurements elimination to calculate Unitary Matrix

    f = open(qasmref, "r")
    l1 = list(filter(None, (line.rstrip() for line in f)))
    f.close()
    f = open(qasmopt, "r")
    l2 = list(filter(None, (line.rstrip() for line in f)))
    f.close()
    os.system('touch temp1.qasm')
    os.system('touch temp2.qasm')
    t1 = './temp1.qasm'
    t2 = './temp2.qasm'
    output = open(t1, "w")
    for x in l1:
        if x[:7] != "measure":
            output.write("%s\n" % x)
    output.close()
    output = open(t2, "w")
    for x in l2:
        if x[:7] != "measure":
            output.write("%s\n" % x)
    output.close()

    ### Reference QC creation
    qcref = QuantumCircuit.from_qasm_file(t1)

    ### Optimized QC creation
    qcopt = QuantumCircuit.from_qasm_file(t2)

    # Select the UnitarySimulator from the Aer provider
    simulator = Aer.get_backend('unitary_simulator')

    # Execute and get counts
    result = execute(qcref, simulator).result()
    unitary1 = result.get_unitary(qcref)
    print("Reference Circuit unitary:\n", unitary1)
    print("\n")
    result = execute(qcopt, simulator).result()
    unitary2 = result.get_unitary(qcopt)
    print("Optimized Circuit unitary:\n", unitary2)
    print("\n")

    # Compute Difference between Norms 2
    tot = np.diag(np.transpose(np.conj(unitary1)) @ unitary2)
    maxdev = 1-np.min(np.abs(tot)**2)
    print("Maximum difference between combination of Transposed Unitary 1 and Unitary 2 Matrices and Idetity Matrix is: "+ str(maxdev))
    if n2 > 0.001:
        print("WARNING! Matrices are sensibly different between each other!")
    print("\n")
    os.system('rm temp1.qasm')
    os.system('rm temp2.qasm')


### Qiskit optimized circuit comparison

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
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
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

        if (a[0] == 'x') or (a[0] == 'y'):
            latency += 2

        elif (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

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
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
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

        if (a[0] == 'x') or (a[0] == 'y'):
            latency += 2

        elif (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

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
RebaseCustom({OpType.CX}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET OPTIMIZED CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
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

        if (a[0] == 'x') or (a[0] == 'y'):
            latency += 2

        elif (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

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
RebaseCustom({OpType.CX}, cx_circ, {OpType.Rx, OpType.Ry, OpType.Rz}, sq).apply(tket)
tket = tk_to_qiskit(tket)
c = tket.count_ops()


print("T-KET MAX OPTIMIZATION CIRCUIT GATES (" + qasmref +"): ")
print(c)

s1 = 0
s2 = 0
z = 0
for k in c:
    if (k != 'cx') and (k != 'cz') and (k != 'ccx') and (k != 'measure'):
        s1 += c[k]
        if (k == 's') or (k == 'sdg') or (k == 't') or (k == 'tdg') or (k == 'z') or (k == 'rz'):
            z += c[k]
    elif (k == 'cx') or (k == 'cz'):
        s2 += c[k]
print("Total 1-Qubit gates: " + str(s1) )
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

        if (a[0] == 'x') or (a[0] == 'y'):
            latency += 2

        elif (a[0] == 'r') and ( (a[1] == 'x') or (a[1] == 'y') ):

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
