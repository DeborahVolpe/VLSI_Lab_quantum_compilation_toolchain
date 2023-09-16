import os

# Mass optimization of all .qasm files in the directory with Step 1

a = os.listdir()

a = [x for x in a if x[-5:] == ".qasm"]

l = len(a)

for i in range(0,l):

    os.system("python3 template_optimizer_1.py "+a[i])

