import sys
from sys import argv
import os
import re
import configparser

sys.path.append('./libraries/')
from QASM_precomposer import *
from NULLOP_purgers import *
from simple_optimizers import *
from step1_templates import *
from QASM_postcomposer import *

########################################################################################################
############################################ INPUTS ####################################################
########################################################################################################

argn = len(argv)

### Input parameters:

#   1) Name of the .qasm file to techoptimize (must be in working directory)

#   2) Subcircuit parameter: if T (true), circuit is a subcircuit, there are no final measurements and thus purge of final RZ gates can't be applied.
#      If F (false) or NULL, the .qasm defines a complete circuit and all the optimizations can be applied.


### - Subpartition of the circuit defined by Barriers is not considered optimization-wise

### - Qubits are treated as ideal and fully-connected

### - Script work only with .qasm files whose first 4 lines are OPENQASM 2.0; include "qelib1.inc"; qreg q[..]; creg c[..]; followed by the circuit gates

### NOTE: Script REQUIRES the quantum register name to be the standard 'q[..]', for parsing reasons


# Check input validity

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

    # Check if Subcircuit parameter is True

    if (argn == 3) and ( (argv[2] == "T") or (argv[2] == "true") ):

        subcircuit = 1

    elif ( (argn == 3) and ( (argv[2] == "F") or (argv[2] == "false") ) ) or (argn == 2):
        
        subcircuit = 0

    elif (argn == 3) and (argv[2] != "F") and (argv[2] != "T") and (argv[2] != "false") and (argv[2] != "true"): 

        print("\n Subcircuit parameter unknown: only acceptable inputs are T (true) or F (false). \n")
        sys.exit(0)

    else:

        print("\n Wrong number of input parameters! \n")
        sys.exit(0)

    
### Reading of thresholds.cfg file and precision thresholds evaluation
    

config = configparser.RawConfigParser()
config.read('./cfg/thresholds.cfg')

cfg = []
i = 0

for section in config.sections():
    for option in config.options(section):
        text = '{} {}'.format(option, config.get(section,option))
        cfg.append(text[5:])
        i += 1

# Pi approximation evaluation
# Maximum precision: 10^-15

pi = 3.141592653589793
halfpi = 1.570796326794896
quarterpi = 0.785398163397448

r1 = cfg[0].replace(' ','')

if (r1[3] != "-") or (int(r1[4:]) <= 0):
    print("\n Error in thresholds.cfg : you can't use a precision equal to or above 1! \n")
    sys.exit(0)

r1 = int(r1[4:])
pi = round(pi, r1)
pi = str(pi)
halfpi = round(halfpi, r1)
halfpi = str(halfpi)
quarterpi = round(quarterpi, r1)
quarterpi = str(quarterpi)

# NULL Sum evaluation

r2 = cfg[1]
r2 = int(r2[3:])
nullsum = pow(10,r2)

if nullsum >= 0.1:
    print("\n Warning: you are using a very high NULL Operations approximation value. This may result in an excessive purging of gates. \n")

### Reading of iterations.cfg file and iteration parameters evaluation
    
config = configparser.RawConfigParser()
config.read('./cfg/iterations.cfg')

cfg = []
i = 0

for section in config.sections():
    for option in config.options(section):
        text = '{} {}'.format(option, config.get(section,option))
        cfg.append(text[4:])
        i += 1

IT1 = cfg[0].replace(' ','')
IT1 = round(int(IT1))

if IT1 < 1:
    IT1 = "1"

IT2 = cfg[1].replace(' ','')
IT2 = round(int(IT2))

if IT2 < 1:
    IT2 = "1"


########################################################################################################
############################################ PARSER ####################################################
########################################################################################################

### Creation of "lines" list, filtered from end line spaces, blank lines, Barriers, Comments and Measures

f = open(qasm, "r")

lines = list(filter(None, (line.rstrip() for line in f)))

f.close()

# Comments elimination

N = len(lines)
for i in range(0,N):
    x = lines[i]
    n = x.find('//')
    if n > 0:
        lines[i] = x[:n]
    elif n == 0:
        lines[i] = ''

# Creation of the "meas" measurements list, that will be added again on the optimized list

meas = []
meas = [x for x in lines if x[0:7] == "measure"]

lines = [x for x in lines if x[0:7] != "barrier"]
lines = [x for x in lines if x[0:7] != "measure"]

lines = list(filter(None, (line.rstrip() for line in lines)))

# Cleansing of all spaces in strings except the first one for parsing purposes (except in R gates, where spaces are useless and thus purged)

N = len(lines)
for i in range(0,N):

    a = lines[i]
    if a[0] != "r":
        a = a.replace(' ', 'SPACE')
        a = a.replace('SPACE', ' ', 1)
        a = a.replace('SPACE', '')
    else:
        a = a.replace(' ', '')
    lines[i] = a


# Qubits number variable "nq" creation

x = lines[2]
l = len(x)
for i in range(0,l):
    if x[i] == "[":
        break
nq = x[i+1:]
nq = nq.replace('];','').replace(' ','')
nq = int(nq)

########################################################################################################
########################################## PRECOMPOSER #################################################
########################################################################################################
#
#
############################ REFERENCE LIBRARY: QASM_precomposer.py

universaldecomposer(lines, nq)

translator(lines, pi, halfpi, quarterpi)

toffolidecomposer(lines)

precombo_st(lines, nq)


########################################################################################################
#################################### NULL OPERATIONS PURGER ############################################
########################################################################################################
#
#
############################ REFERENCE LIBRARY: NULLOP_purgers.py

finalz(lines, nq, subcircuit)

initialz(lines, nq, subcircuit)

nullpurge(lines, nq, nullsum)

# Call to cover the case in which the purged gates were right before measurement but after RZ gates or right after initialization

finalz(lines, nq, subcircuit)

initialz(lines, nq, subcircuit)


########################################################################################################
##################################### SIMPLE PREOPTIMIZER ##############################################
########################################################################################################
#
#
############################ REFERENCE LIBRARY: simple_optimizers.py


# Consecutive compaction cycles to ensure full exploit of the simple equivalences

for i in range(0,IT1):

    eq_xy(lines, nq, 1)

    eq_xz(lines, nq, 1)

    eq_yz(lines, nq, 1)

    eq_xrx(lines, nq, pi, halfpi, quarterpi)

    eq_hrh(lines, nq, pi, halfpi, quarterpi, 1)

    eq_h1(lines, nq, halfpi, nullsum, 1)

    eq_h2(lines, nq, halfpi, nullsum, 1)

    nullpurge(lines, nq, nullsum)

    finalz(lines, nq, subcircuit)

    initialz(lines, nq, subcircuit)


########################################################################################################
##################################### MAIN OPTIMIZATION LOOP ###########################################
########################################################################################################

for i in range(0,IT2):

    ########################################################################################################
    ################################## EQUIVALENCE-BASED OPTIMIZER #########################################
    ########################################################################################################
    #
    #
    ############################ REFERENCE LIBRARY: step1_templates.py

    templ1(lines, nq, subcircuit, nullsum, 0)

    templ2(lines, nq, nullsum, 0)

    templ3(lines, nq, subcircuit, nullsum, 0)

    templ4(lines, nq, nullsum, pi)

    templ5(lines, nq, nullsum, subcircuit, pi)

    templh1(lines, nq)

    templh2(lines, nq, nullsum)

    templh3(lines, nq, nullsum)

    ########################################################################################################
    ##################################### SIMPLE POSTOPTIMIZER #############################################
    ########################################################################################################

    # Consecutive compaction cycles to ensure full exploit of the simple equivalences

    translator(lines, pi, halfpi, quarterpi)

    for i in range(0,IT1):

        eq_xy(lines, nq, 1)

        eq_xz(lines, nq, 1)

        eq_yz(lines, nq, 1)

        eq_xrx(lines, nq, pi, halfpi, quarterpi)

        eq_hrh(lines, nq, pi, halfpi, quarterpi, 1)

        eq_h1(lines, nq, halfpi, nullsum, 1)

        eq_h2(lines, nq, halfpi, nullsum, 1)

        nullpurge(lines, nq, nullsum)

        finalz(lines, nq, subcircuit)

        initialz(lines, nq, subcircuit)


    ########################################################################################################
    ################################### FINAL GATE RECOMBINATION ###########################################
    ########################################################################################################
    #
    #
    ############################ REFERENCE LIBRARY: QASM_postcomposer.py

    finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 1)


########################################################################################################
######################################### FINAL OPTIMIZER ##############################################
########################################################################################################

# Last call to try to identify newly-created templates (all the cases in which CX/CZs in templates were separated by an equivalent of a newly-combined single gate)

templ1(lines, nq, subcircuit, nullsum, 0)

templ2(lines, nq, nullsum, 0)

templ3(lines, nq, subcircuit, nullsum, 0)

templ4(lines, nq, nullsum, pi)

templ5(lines, nq, nullsum, subcircuit, pi)

templh1(lines, nq)

templh2(lines, nq, nullsum)

templh3(lines, nq, nullsum)


########################################################################################################
####################################### FINAL POSTOPTIMIZER  ###########################################
########################################################################################################

# Consecutive compaction cycles to ensure full exploit of the simple equivalences

translator(lines, pi, halfpi, quarterpi)

for i in range(0,5):

    eq_xy(lines, nq, 0)

    eq_xz(lines, nq, 0)

    eq_yz(lines, nq, 0)

    eq_xrx(lines, nq, pi, halfpi, quarterpi)

    eq_hrh(lines, nq, pi, halfpi, quarterpi, 0)

    eq_h1(lines, nq, halfpi, nullsum, 0)

    eq_h2(lines, nq, halfpi, nullsum, 0)

    nullpurge(lines, nq, nullsum)

    finalz(lines, nq, subcircuit)

    initialz(lines, nq, subcircuit)


finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 0)


########################################################################################################
############################################ OUTPUTS ###################################################
########################################################################################################

### Generate an optimized .qasm file from "lines" circuit list

newqasm = qasm[:-5] + "_optimized.qasm"

output = open(newqasm, "w")

for x in lines:

    output.write("%s\n" % x)

# If not a subcircuit, re-add measurements at the end

if subcircuit == 0:

    l = len(meas)
    for i in range(0,l):
        output.write(meas[i]+"\n")

output.close()

print("\n OPTIMIZATION DONE. OPTIMIZED QASM FILE IS: " + newqasm + "\n")

sys.exit(0)


