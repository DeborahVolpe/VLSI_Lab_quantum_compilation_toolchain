import random
import sys

# Script to generate a QC with a single qubit line with 10 k single-qubit gates.
# Each gate is of a different kind with respect to the other adjacent gates.
# To change the generated circuit, edit the seed.

for j in range(0, 3):

    lines = ['OPENQASM 2.0;', 'include "qelib1.inc";', 'qreg q[1];', 'creg c[1];']
    seed = j*100 + 10/(j+1)

    random.seed(seed)
    lasth = 0
    
    for i in range(0, 10000):

        h = random.randint(1, 4)

        if h == lasth:
            if h < 4:
                h = h+1
            else:
                h = h-1

        if h == 1:

            s = random.randint(1, 5)

            if s == 1:
                lines.append('x q[0];')
            elif s == 2:
                lines.append('rx(pi/2) q[0];')
            elif s == 3:
                lines.append('rx(-pi/2) q[0];')
            elif s == 4:
                lines.append('rx(pi/4) q[0];')
            elif s == 5:
                lines.append('rx(-pi/4) q[0];')

        elif h == 2:

            s = random.randint(1, 5)

            if s == 1:
                lines.append('y q[0];')
            elif s == 2:
                lines.append('ry(pi/2) q[0];')
            elif s == 3:
                lines.append('ry(-pi/2) q[0];')
            elif s == 4:
                lines.append('ry(pi/4) q[0];')
            elif s == 5:
                lines.append('ry(-pi/4) q[0];')

        elif h == 3:

            s = random.randint(1, 5)

            if s == 1:
                lines.append('z q[0];')
            elif s == 2:
                lines.append('s q[0];')
            elif s == 3:
                lines.append('sdg q[0];')
            elif s == 4:
                lines.append('t q[0];')
            elif s == 5:
                lines.append('tdg q[0];')

        elif h == 4:

            lines.append('h q[0];')

        lasth = h

    lines.append('measure q->c;')

    newqasm = "randomrstreak_"+str(j)+".qasm"

    output = open(newqasm, "w")

    for x in lines:

        output.write("%s\n" % x)

    output.close()

sys.exit(0)
