import sys
from sys import argv
import os
import re
import configparser
import ast
from typing import Tuple
from numpy import sign

sys.path.append('./libraries/')
from step3_cxtranslate import *
from step3_cxtemplates import *
from NULLOP_purgers import *
from step2_techlib import *

sys.path.append('../connectivity/')
sys.path.append('../connectivity/layout_synthesis')
from layout_synthesis.backend import Backend
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer
from layout_synthesis.router import Router

def placeAndRoute(lines, meas) -> Tuple:

    # Create a tmp.qasm file from the lines and meas list:
    circuitQasm = lines + meas
    with open("tmp.qasm", "w") as tmpQasmFile:
        for line in circuitQasm:
            tmpQasmFile.write(line+"\n")

    # Placement:
    circuit = Circuit("tmp.qasm")
    print(layout_synthesis_basic_cfg["backendConfigurationFile"])
    backend = Backend.fromConfigurationFile(layout_synthesis_basic_cfg["backendConfigurationFile"])
    placer = Placer(backend)
    if(layout_synthesis_placement_cfg["algorithm"]=="trivialmapping"):
        initialMapping = placer.getTrivialMapping(circuit)
    elif(layout_synthesis_placement_cfg["algorithm"]=="sadensemapping"):
        initialMapping = placer.getSimulatedAnnealingDenseMapping(circuit, layout_synthesis_placement_cfg["Ti"],
                                          layout_synthesis_placement_cfg["Tf"], layout_synthesis_placement_cfg["delta"])
    elif(layout_synthesis_placement_cfg["algorithm"]=="sahamapping"):
        initialMapping = placer.getSimulatedAnnealingHaMapping(circuit, 
        [layout_synthesis_placement_cfg["swapNumberWeight"], layout_synthesis_placement_cfg["swapErrorWeight"], 
        layout_synthesis_placement_cfg["swapTimeWeight"], layout_synthesis_placement_cfg["isRZvirtual"]],
        layout_synthesis_placement_cfg["Ti"], layout_synthesis_placement_cfg["Tf"], 
        layout_synthesis_placement_cfg["delta"])
    else:
        sys.exit("Error! The provided 'algorithm' inside the 'Placement' section of layout_synthesis.cfg is not valid.")
    placer.place(circuit, initialMapping)

    # Routing:
    router = Router(backend)
    if(layout_synthesis_routing_cfg["algorithm"]=="basicrouting"):
        routedCircuit, finalMapping = router.routeBasicRouting(circuit, initialMapping)
    elif(layout_synthesis_routing_cfg["algorithm"]=="harouting"):
        routedCircuit, finalMapping = router.routeHardwareAwareRouting(circuit, initialMapping,
        layout_synthesis_routing_cfg["heuristic"], layout_synthesis_routing_cfg["lookaheadDepth"], 
        layout_synthesis_routing_cfg["lookaheadWeight"], layout_synthesis_routing_cfg["swapNumberWeight"], 
        layout_synthesis_routing_cfg["swapErrorWeight"], layout_synthesis_routing_cfg["swapTimeWeight"], 
        backend.technology, layout_synthesis_routing_cfg["isRZvirtual"])
    elif(layout_synthesis_routing_cfg["algorithm"]=="haroutingsmart"):
        routedCircuit, finalMapping = router.routeHardwareAwareRoutingSmart(circuit, initialMapping, 
        layout_synthesis_routing_cfg["lookaheadDepth"], layout_synthesis_routing_cfg["lookaheadWeight"], 
        layout_synthesis_routing_cfg["swapNumberWeight"], layout_synthesis_routing_cfg["swapErrorWeight"], 
        layout_synthesis_routing_cfg["swapTimeWeight"], layout_synthesis_routing_cfg["isRZvirtual"])
    else:
        sys.exit("Error! The provided 'algorithm' inside the 'Routing' section of layout_synthesis.cfg is not valid.")

    # From the routed circuit obtain back the lists lines and meas:
    circuitQasm = routedCircuit.toQASM(True, layout_synthesis_routing_cfg["translateSwap"], False, False, backend)
    with open("tmp.qasm", "w") as tmpQasmFile:
        tmpQasmFile.write(circuitQasm)
    f = open("tmp.qasm", "r")
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

    # Delete the tmp.qasm file:
    os.remove("tmp.qasm")

    return (lines, meas, nq)

########################################################################################################
############################################ INPUTS ####################################################
########################################################################################################

argn = len(argv)

### Input parameters:

#   1) Name of the .qasm file to optimize (must be in working directory)

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


### Reading of .qasm file name to determine target technology. If file is not an output from Step 2, ask the user about the target technology.

if (qasm[-21:-18] == "_M_"):

    tech = "M"
    autodetect = 1

elif (qasm[-21:-18] == "_Q_"):

    tech = "Q"
    autodetect = 1

elif (qasm[-21:-18] == "_I_"):

    tech = "I"
    autodetect = 1


elif (qasm[-21:-18] == "_S_"):

    tech = "S"
    autodetect = 1

else:

    tech = input("Automatic target technology recognition based on file name failed. Please define the quantum technology to be implemented. Type 'M' for NMR Molecular technology, 'Q' for Quantum Dot technology, 'I' for Trapped Ions technology, or 'S' for Superconductive technology \n")

    if (tech != 'M') and (tech != 'I') and (tech != 'S') and (tech != 'Q'):
        print("\n Unrecognized quantum technology. Be sure to use the right input parameter, and try again.\n")
        sys.exit(0)

    autodetect = 0

   
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

### Reading of ion_translation.cfg file for generic translation parameters    

config = configparser.RawConfigParser()
config.read('./cfg/ion_translation.cfg')

cfg = []
i = 0

for section in config.sections():
    for option in config.options(section):
        text = '{} {}'.format(option, config.get(section,option))
        cfg.append(text[8:])
        i += 1

# If iontran parameter unrecognized, set it as false

iontran = cfg[0].replace(' ','')
if iontran != 'T':
    iontran = 'F'

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

IT3 = cfg[2].replace(' ','')
IT3 = round(int(IT3))

if IT3 < 1:
    IT3 = "1"

### Reading the layout_synthesis.cfg file to retrieve the configurtations for the layout synthesis library:
config = configparser.ConfigParser()
config.read("./cfg/layout_synthesis.cfg")

layout_synthesis_basic_cfg = {}
try:
    layout_synthesis_basic_cfg["backendConfigurationFile"] = config["Basic"]["backendConfigurationFile"]
except NameError:
    sys.exit("Error! Missing 'backendConfigurationFile' inside the 'Basic' section of layout_synthesis.cfg.")
try:
    layout_synthesis_basic_cfg["CZtoRZZ"] = config["Basic"]["CZtoRZZ"].lower() == "true"
except KeyError:
    sys.exit("Error! Missing 'CZtoRZZ' inside the 'Basic' section of layout_synthesis.cfg.")
try:
    layout_synthesis_basic_cfg["CXtoRXX"] = config["Basic"]["CXtoRXX"].lower() == "true"
except KeyError:
    sys.exit("Error! Missing 'CXtoRXX' inside the 'Basic' section of layout_synthesis.cfg.")

layout_synthesis_placement_cfg = {}
try:
    layout_synthesis_placement_cfg["algorithm"] = config["Placement"]["algorithm"].lower()
except KeyError:
    sys.exit("Error! Missing 'algorithm' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["swapNumberWeight"] = float(config["Placement"]["swapNumberWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapNumberWeight' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["swapErrorWeight"] = float(config["Placement"]["swapErrorWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapErrorWeight' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["swapTimeWeight"] = float(config["Placement"]["swapTimeWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapTimeWeight' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["isRZvirtual"] = config["Placement"]["isRZvirtual"].lower() == "true"
except KeyError:
    sys.exit("Error! Missing 'isRZvirtual' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["Ti"] = float(config["Placement"]["Ti"])
except KeyError:
    sys.exit("Error! Missing 'Ti' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["Tf"] = float(config["Placement"]["Tf"])
except KeyError:
    sys.exit("Error! Missing 'Tf' inside the 'Placement' section of layout_synthesis.cfg.")
try:
    layout_synthesis_placement_cfg["delta"] = float(config["Placement"]["delta"])
except KeyError:
    sys.exit("Error! Missing 'delta' inside the 'Placement' section of layout_synthesis.cfg.")

layout_synthesis_routing_cfg = {}
try:
    layout_synthesis_routing_cfg["algorithm"] = config["Routing"]["algorithm"].lower()
except KeyError:
    sys.exit("Error! Missing 'algorithm' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["swapNumberWeight"] = float(config["Routing"]["swapNumberWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapNumberWeight' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["swapErrorWeight"] = float(config["Routing"]["swapErrorWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapErrorWeight' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["swapTimeWeight"] = float(config["Routing"]["swapTimeWeight"])
except KeyError:
    sys.exit("Error! Missing 'swapTimeWeight' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["isRZvirtual"] = config["Routing"]["isRZvirtual"].lower() == "true"
except KeyError:
    sys.exit("Error! Missing 'isRZvirtual' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["heuristic"] = config["Routing"]["heuristic"].lower()
except KeyError:
    sys.exit("Error! Missing 'heuristic' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["lookaheadDepth"] = float(config["Routing"]["lookaheadDepth"])
except KeyError:
    sys.exit("Error! Missing 'lookaheadDepth' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["lookaheadWeight"] = float(config["Routing"]["lookaheadWeight"])
except KeyError:
    sys.exit("Error! Missing 'lookaheadWeight' inside the 'Routing' section of layout_synthesis.cfg.")
try:
    layout_synthesis_routing_cfg["translateSwap"] = config["Routing"]["translateSwap"].lower() == "true"
except KeyError:
    sys.exit("Error! Missing 'translateSwap' inside the 'Routing' section of layout_synthesis.cfg.")

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

# No need to cleanse spaces, format is done in Step 2

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
########################################## CX TRANSLATION ##############################################
########################################################################################################
#
#
############################ REFERENCE LIBRARIES: step3_cxtemplates.py, step3_cxtranslate.py


########################################## NMR/QUANTUM DOT CASE ####################################################

if ( (tech == "M") or (tech == 'Q') ):

    ##### Reading of .cfgs

    # Manfredi's 'nmrlayout' list of lists generation from the layout_synthesis.cfg file:
    # The 'nmrlayout' is renamed to 'layout' since it can be the layout of a NMR or quantum dots backend.
    backend = Backend.fromConfigurationFile(layout_synthesis_basic_cfg["backendConfigurationFile"])
    layout =  [[0]*backend.n_nodes for i in range(backend.n_nodes)]
    for node_i in backend.nodes:
        for node_j in backend.nodes:
            if(tech=='M'):
                J = backend.getJCoupling(node_i, node_j)
            else: # tech=='Q':
                J = backend.getExchangeInteraction(node_i, node_j)
            s = 0 if (J is None) else int( sign(J) )
            layout[node_i.id][node_j.id] = s

    # Check if set layout is compatible with number of qubits in the input circuit. If not, produce an error and exit

    if ( len(layout) ) < nq:

        print("\n Set layout does not match with input circuit's number of qubits. Please, edit the layout_synthesis.cfg file or select a different input file and try again. \n")
        sys.exit(0)

    ##### Optimization

    ### Optimize CXs using templates

    for i in range(0,IT3):

        cxdistribution(lines, nq, nullsum)
        cxparallel(lines, nq, nullsum)
        cxmirror1(lines, nq, nullsum)
        cxmirror2(lines, nq, nullsum)

    ### Layout synthesis library integration:
    lines, meas, nq = placeAndRoute(lines, meas)
    
    # If during the placement and routing phase non-floating point 'pi' angles were added, evaluatie the expression in a 
    # floating point value (with precision equal to Threshold 1):
    newLines = []
    for line in lines:
        result = re.match("([rx, ry, rz, rxx, RXX, ryy, RYY, rzz, RZZ]+)\((.*pi.*)\)(\s*.+)", line)
        if(result): # The current line is a Rxx, Ryy or Rzz gate:
            gateName = result.group(1)
            angle = result.group(2)
            controlTargetNodes = result.group(3)

            l = len(str(pi))
            pi = float(pi)
            rotation = eval(angle)
            rotation = round(rotation, l-1)
            rotation = str(rotation)

            newLines.append("{0}({1}){2}".format(gateName, rotation, controlTargetNodes))
        else:
            newLines.append(line)
    pi = str(pi)

    lines = newLines

    ### Translate CXs into CZs

    cxtocz(lines, nq, nullsum, pi, halfpi, quarterpi, subcircuit)
    czharmonizer(lines, nq, nullsum)

    ### If required, transform two-qubit gates using RZZ gate
    # The Manfredi's old 'cztranslation' parameter was substituted with the CZtoRZZ one.

    if(layout_synthesis_basic_cfg["CZtoRZZ"]): 
        nmrcz(lines, nq, nullsum, halfpi, subcircuit, layout)

    ### Special RZZ Template application + Eulercombo
    finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 0) # Added to ensure that the eulercombo can be executed.
    specialtempl1(lines, nq, subcircuit, nullsum)
    eulercombo(lines, nq, subcircuit, nullsum)
    eulerzyz(lines, nq, subcircuit)
    specialfinalz(lines, nq, subcircuit)
    specialinitialz(lines, nq, subcircuit)

##################################### TRAPPED IONS CASE ################################################

elif (tech == "I"):

    ##### Reading of .cfgs

    # Manfredi's 'ionlayout' list of lists generation from the layout_synthesis.cfg file:
    backend = Backend.fromConfigurationFile(layout_synthesis_basic_cfg["backendConfigurationFile"])
    ionlayout =  [[0]*backend.n_nodes for i in range(backend.n_nodes)]
    for node_i in backend.nodes:
        for node_j in backend.nodes:
            signX = backend.getSignX(node_i, node_j)
            s = 0 if (signX is None) else int(signX)
            ionlayout[node_i.id][node_j.id] = s
    # Check if set layout is compatible with number of qubits in the input circuit. If not, produce an error and exit

    if ( len(ionlayout) ) < nq:
        print("\n Set layout does not match with input circuit's number of qubits. Please, edit the layout_synthesis.cfg file or select a different input file and try again. \n")
        sys.exit(0)

    ##### Optimization

    ### Optimize CXs using templates

    for i in range(0,IT3):

        cxdistribution(lines, nq, nullsum)
        cxparallel(lines, nq, nullsum)
        cxmirror1(lines, nq, nullsum)
        cxmirror2(lines, nq, nullsum)

    ### If gates are in R form, revert them in RX, RY, RZ form to optimize more easily

    if iontran == 'T':
        iontranslator_reverse(lines, halfpi)

    ### Layout synthesis library integration:
    lines, meas, nq = placeAndRoute(lines, meas)

    ### If required, transform two-qubit gates using RXX gate
    # The Manfredi's old 'ioncxtranslation' parameter was substituted with the CXtoRXX one.

    if(layout_synthesis_basic_cfg["CXtoRXX"]):
        ioncx(lines, nq, nullsum, halfpi, quarterpi, ionlayout)
    
    ### Special RXX Template application + Eulercombo
    finalcombo(lines, nq, pi, halfpi, quarterpi, nullsum, subcircuit, 0) # Added to ensure that the eulercombo can be executed.
    specialtempl2(lines, nq, nullsum)
    eulercombo(lines, nq, subcircuit, nullsum)
    eulerzyz(lines, nq, subcircuit)

    ### If required, revert gates in R form once again
    if iontran == 'T':
        iontranslator(lines, halfpi)


##################################### SUPERCONDUCTING CASE #############################################

elif (tech == "S"):

    ### Optimize CXs using templates

    for i in range(0,IT3):

        cxdistribution(lines, nq, nullsum)
        cxparallel(lines, nq, nullsum)
        cxmirror1(lines, nq, nullsum)
        cxmirror2(lines, nq, nullsum)

    ### Layout synthesis library integration:
    lines, meas, nq = placeAndRoute(lines, meas)

    ### Last merging effort

    supercondmerge(lines, nq, halfpi)


########################################################################################################
############################################ OUTPUTS ###################################################
########################################################################################################

### Generate an optimized .qasm file from "lines" circuit list

if autodetect == 1:         # If input file was generated by Step 2, substitute "_techoptimized" with "_finaloptimized"

    newqasm = qasm[:-19] + "_finaloptimized.qasm"

else:                       # If input file was not recognized as generated by Step 2, simply append "_finaloptimized" to the name

    newqasm = qasm[:-5] + "_" + tech + "_finaloptimized.qasm"

output = open(newqasm, "w")

for x in lines:

    output.write("%s\n" % x)

# If not a subcircuit, re-add measurements at the end

if subcircuit == 0:

    l = len(meas)
    for i in range(0,l):
        output.write(meas[i]+"\n")

output.close()

print("\n OPTIMIZATION DONE. FINAL OPTIMIZED QASM FILE IS: " + newqasm + "\n")

sys.exit(0)


