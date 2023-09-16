# Function to clean a qasm circuit from all accidental R(0.0) gates

import sys
from sys import argv
import os
import re

argn = len(argv)

if argn == 1:

    print("\n Input parameters required!\n")
    sys.exit(0)

else:

    # Check if input file is a .qasm

    qasm = argv[1]

    if qasm[-5:] != ".qasm":
        print("\n The script only accepts .qasm files as inputs! \n")
        sys.exit(0)

    # Check if .qasm file is in working directory

    qasm = "./" + qasm

    if not os.path.isfile(qasm):

        print("\n The input .qasm file must be in th working directory for the script to work!\n")
        sys.exit(0)

### Creation of "lines" list

f = open(qasm, "r")

lines = list(filter(None, (line.rstrip() for line in f)))

f.close()

N = len(lines)

for j in range(N-1, 3, -1):

    element = lines[j]

    if "(0.0)" in element:

        lines.pop(j)

### Generate cleaned .qasm file from "lines" circuit list

output = open(qasm, "w")

for x in lines:

    output.write("%s\n" % x)

output.close()

sys.exit(0)



