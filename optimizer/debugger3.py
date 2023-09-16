import os

# Mass optimization of all _techoptimized.qasm files in the directory with Step 3

a = os.listdir()

a = [x for x in a if x[-19:] == "_techoptimized.qasm"]

l = len(a)

for i in range(0,l):

    os.system("python3 layout_optimizer_3.py "+a[i])
