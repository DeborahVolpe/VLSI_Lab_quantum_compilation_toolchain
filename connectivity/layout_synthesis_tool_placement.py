import sys
import getopt
import os

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import Backend
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer

def printHelper() -> None:
    class color:
        PURPLE = '\033[95m'
        CYAN = '\033[96m'
        DARKCYAN = '\033[36m'
        BLUE = '\033[94m'
        GREEN = '\033[92m'
        YELLOW = '\033[93m'
        RED = '\033[91m'
        BOLD = '\033[1m'
        UNDERLINE = '\033[4m'
        END = '\033[0m'

    print(color.UNDERLINE + "Usage:" + color.END)
    print("python3 layout_synthesis_tool_placement.py -opt1 ... -optN inputQasmFile outputQasmFolder "\
          "backendConfigurationFile\n")

    print(color.UNDERLINE + "Required arguments (in order):" + color.END)
    print(color.BOLD + "\tinputQasmFile:" + color.END + " the relative (to the working directory) or absolute path "\
          "to the OpenQASM 2.0 description of the quantum circuit target of the placement. Any quantum gates available"\
          " in the OpenQASM 2.0 language can be used. All the barriers and comments present in the description are "\
          "ignored and not included in the output placed circuit.")
    print(color.BOLD + "\toutputQasmFolder:" + color.END + " the relative (to the working directory) or absolute path "\
          "to the folder where to store the output OpenQASM 2.0 descriptiohe  of the quantum circuit after the"\
          " placement operation is performed.")
    print(color.BOLD + "\tbackendConfigurationFile:" + color.END + " the relative (to the working directory) or "\
          "absolute path to the .cfg configuration file describing the NISQ device target of the placement step. This "\
          "can be a superconducting, NMR, ion trap or quantum dot device.")
    
    print(color.UNDERLINE + "Optional arguments (to be placed always before the required ones):" + \
          color.END)
    print(color.BOLD + "\t-a:" + color.END + " the initial mapping generation algorithm to use in order to perform "\
          "the placement step. Avaialble strategies are: 'TrivialMapping', 'SaDenseMapping', 'SaHaMapping' (all case"\
          " insensitive). ['TrivialMapping' by default]")
    print(color.BOLD + "\t--swapNumberWeight:" + color.END + " the coefficient to be multiplied to the S matrix in the"\
          " D matrix computation (used for the SaHaMapping algorithm). [0.5 by default]")
    print(color.BOLD + "\t--swapErrorWeight:" + color.END + " the coefficient to be multiplied to the E matrix in the"\
          " D matrix computation (used for the SaHaMapping algorithm). [0.5 by default]")
    print(color.BOLD + "\t--swapTimeWeight:" + color.END + " the coefficient to be multiplied to the T matrix in the"\
          " D matrix computation (used for the SaHaMapping algorithm). [0.0 by default]")
    print(color.BOLD + "\t--isRZvirtual:" + color.END + " used only for NMR, quantum dot and ion trap technology: "\
        "True if the RZ gates are implemented virtually, False otherwise (used for the SaHaMapping "\
        "algorithm). [False by default]")
    print(color.BOLD + "\t--Ti:" + color.END + " initial temperature for the simulated annealing metaheuristic. "\
        "(used for the SaDenseMapping and SaHaMapping algorithms). [10 by default]")
    print(color.BOLD + "\t--Tf:" + color.END + " final temperature for the simulated annealing metaheuristic. "\
        "(used for the SaDenseMapping and SaHaMapping algorithms). [1e-6 by default]")
    print(color.BOLD + "\t--delta:" + color.END + " cooling factor for the simulated annealing metaheuristic. "\
        "(used for the SaDenseMapping and SaHaMapping algorithms). [0.9 by default]")

def parseArguments(requiredArguments, optionalArguments, opts, args) -> None:

    # Parse the optional arguments:
    listPlacementAlgoritms = ["trivialmapping", "sadensemapping", "sahamapping"]
    for opt, arg in opts:

        if(opt=="-h"): # Help command optional argument:
            printHelper()
            sys.exit()
        elif(opt=="-a"): # Placement algorithm optional argument: 
            # Check that the provided placement algorithm is a valid one: 
            if(not str(arg).lower() in listPlacementAlgoritms):
                sys.exit("[LS tool - Placement]: error! {0} is not a valid placement strategy. Use -h for a list of " \
                         "valid arguments".format( str(arg) ) )
            # Set the provided placement algorithm:
            optionalArguments["placementAlgorithm"] = arg
        elif(opt=="--swapNumberWeight"):
            optionalArguments["swapNumberWeight"] = float(arg)
        elif(opt=="--swapErrorWeight"):
            optionalArguments["swapErrorWeight"] = float(arg)
        elif(opt=="--swapTimeWeight"):
            optionalArguments["swapTimeWeight"] = float(arg)
        elif(opt=="--isRZvirtual"):
            optionalArguments["isRZvirtual"] = arg.lower()=="true"
        elif(opt=="--Ti"):
            optionalArguments["Ti"] = float(arg)
        elif(opt=="--Tf"):
            optionalArguments["Tf"] = float(arg)
        elif(opt=="--delta"):
            optionalArguments["delta"] = float(arg)

    # Parse the required arguments:
    if( len(args) != len(requiredArguments) ):
        sys.exit("[LS tool - Placement]: error! Wrong number of required arguments passed. Use -h for the list of "\
                 "arguments.")

    requiredArguments["inputQasmFile"] = args[0]
    requiredArguments["outputQasmFolder"] = args[1]
    requiredArguments["backendConfigurationFile"] = args[2]

    if( (not os.path.exists(requiredArguments["inputQasmFile"])) or 
        (not os.path.isfile(requiredArguments["inputQasmFile"])) ):
        sys.exit("[LS tool - Placement]: error! {0} cannot be found or is not a file.".format( 
                 requiredArguments["inputQasmFile"] ) )
    if( (not os.path.exists(requiredArguments["outputQasmFolder"])) or 
        (not os.path.isdir(requiredArguments["outputQasmFolder"])) ):
        sys.exit("[LS tool - Placement]: error! {0} directory does not exist or is not a directory.".format( 
                                                                               requiredArguments["outputQasmFolder"] ) )
    if( (not os.path.exists(requiredArguments["backendConfigurationFile"])) or 
        (not os.path.isfile(requiredArguments["backendConfigurationFile"])) ):
        sys.exit("[LS tool - Placement]: error! {0} cannot be found or is not a file.".format( 
                 requiredArguments["backendConfigurationFile"] ) )

def main() -> None:

    print("Layout Synthesis tool. Placement step.\n")
    
    # Required arguments:
    requiredArguments = {"inputQasmFile":None, "outputQasmFolder":None, "backendConfigurationFile":None}

    # Optional arguments (the hardcoded values are the default ones):
    optionalArguments = {"placementAlgorithm":"TrivialMapping", "swapNumberWeight":0.5, "swapErrorWeight":0.5, 
                         "swapTimeWeight":0.0, "isRZvirtual":False, "Ti":10, "Tf":1e-6, "delta":0.9}
    
    # Retrieve and parse the arguments:
    opts, args = getopt.getopt(sys.argv[1:], "a:h", ["swapNumberWeight=", "swapErrorWeight=", "swapTimeWeight=", 
                                                     "isRZvirtual=", "Ti=", "Tf=", "delta="])
    parseArguments(requiredArguments, optionalArguments, opts, args)

    # Quantum circuit:
    qasmFile = requiredArguments["inputQasmFile"]
    circuit = Circuit(qasmFile) 

    # Backend:
    backend = Backend.fromConfigurationFile(requiredArguments["backendConfigurationFile"])

    # Placer:
    placer = Placer(backend)
    
    # Get the user desired initial mapping, by default use the TrivialMapping:
    initialMapping = placer.getTrivialMapping(circuit)
    
    if(optionalArguments["placementAlgorithm"].lower()=="trivialmapping"):
        pass # It is the dafault mapping strategy.
    elif(optionalArguments["placementAlgorithm"].lower()=="sadensemapping"):
        initialMapping = placer.getSimulatedAnnealingDenseMapping(circuit, optionalArguments["Ti"], 
                                                                    optionalArguments["Tf"], optionalArguments["delta"])
    elif(optionalArguments["placementAlgorithm"].lower()=="sahamapping"):
        initialMapping = placer.getSimulatedAnnealingHaMapping(circuit, [optionalArguments["swapNumberWeight"], 
           optionalArguments["swapErrorWeight"], optionalArguments["swapTimeWeight"], optionalArguments["isRZvirtual"]],
                                           optionalArguments["Ti"], optionalArguments["Tf"], optionalArguments["delta"])

    # Perform the placement step:
    placer.place( circuit, initialMapping )

    # Write the placed quantum circuit in a .qasm file in the specified output folder:
    qasmFileNameNoExt = os.path.splitext( os.path.basename(qasmFile) )[0]
    with open(requiredArguments["outputQasmFolder"] + "/" + qasmFileNameNoExt + "_placed.qasm", "w") as text_file:
        print(circuit.toQASM(True), file=text_file)
    print("[LS tool - Routing]: {0} file created."\
                              .format(requiredArguments["outputQasmFolder"] + "/" + qasmFileNameNoExt + "_placed.qasm"))

if __name__ == "__main__":

    main()