import numpy as np
import scipy.io

mat = scipy.io.loadmat("./results/workspaces/workspace_crotonic_acid_07-Apr-2022_19--14--42.mat")
rho = mat['rho']

print(rho)
print(type(rho))