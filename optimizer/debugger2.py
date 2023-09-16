import os

# Mass optimization of all _optimized.qasm files in the directory with Step 2

a = os.listdir()

a = [x for x in a if x[-15:] == "_optimized.qasm"]

l = len(a)

for i in range(0,l):

    os.system("python3 technology_optimizer_2.py "+a[i])
