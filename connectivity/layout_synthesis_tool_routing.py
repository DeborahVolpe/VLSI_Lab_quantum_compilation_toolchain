import sys
import getopt
import os

sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import Backend
from layout_synthesis.circuit import Circuit
from layout_synthesis.router import Router

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
    print("python3 layout_synthesis_tool_routing.py -opt1 ... -optN inputQasmFile outputQasmFolder "\
          "backendConfigurationFile initialMapping\n")

    print(color.UNDERLINE + "Required arguments (in order):" + color.END)
    print(color.BOLD + "\tinputQasmFile:" + color.END + " the relative (to the working directory) or absolute path "\
          "to the OpenQASM 2.0 description of the placed quantum circuit, target of the routing procedure. Any quantum"\
          " gates available in the OpenQASM 2.0 language can be used. All the barriers and comments present in the "\
          "description are ignored and not included in the output routed circuit")
    print(color.BOLD + "\toutputQasmFolder:" + color.END + " the relative (to the working directory) or absolute path "\
          "of the folder where to store the output OpenQASM 2.0 description of the quantum circuit, after the routing"\
          " operation is performed.")
    print(color.BOLD + "\tbackendConfigurationFile:" + color.END + " the relative (to the working directory) or absolute"\
          " path of the .cfg configuration file describing the NISQ device target of the routing step. "\
          "This can be a superconducting, NMR, ion trap or quantum dot device.")
    print(color.BOLD + "\tinitialMapping:" + color.END + " the initial mapping applied during the placement step. Must"\
          " be passed as: \"ni, nj, ..., nk\". Each n_index is a node in the target NISQ device and each position in "\
          "the list correspond to a logical qubit, startig from 0.")
    
    print(color.UNDERLINE + "Optional arguments (to be placed always before the required ones):" + \
          color.END)
    print(color.BOLD + "\t-a:" + color.END + " the routing algorithm to use. Avaialble strategies are: 'BasicRouting',"\
          " 'HaRouting', 'HaRoutingSmart' (all case insensitive). ['BasicRouting' by default]")
    print(color.BOLD + "\t--swapNumberWeight:" + color.END + " The coefficient to be multiplied to the S matrix in the"\
          " D matrix computation (used for the HaRouting and HaRoutingSmart algorithms). [0.5 by default]")
    print(color.BOLD + "\t--swapErrorWeight:" + color.END + " The coefficient to be multiplied to the E matrix in the"\
          " D matrix computation (used for the HaRouting and HaRoutingSmart algorithms). [0.5 by default]")
    print(color.BOLD + "\t--swapTimeWeight:" + color.END + " The coefficient to be multiplied to the T matrix in the"\
          " D matrix computation (used for the HaRouting and HaRoutingSmart algorithms). [0.0 by default]")
    print(color.BOLD + "\t--isRZvirtual:" + color.END + " Used only for NMR, quantum dot and ion trap technology: True"\
          " if the RZ gates are implemented virtually, False otherwise (used for the HaRouting and HaRoutingSmart "\
          " algorithms). [False by default]")
    print(color.BOLD + "\t--heuristic:" + color.END + " the heuristic cost function to use to estimate the cost of a "\
          "swap gate. Available options are: 'basic' and 'lookahead' (all case insensitive) (used for the HaRouting "\
          "algorithm). ['basic' by default]")
    print(color.BOLD + "\t--lookaheadDepth:" + color.END + " the number of layers to use for the lookahead layer "\
          "(used for the HaRouting and HaRoutingSmart algorithm). [20 by default]")
    print(color.BOLD + "\t--lookaheadWeight:" + color.END + " the weight parameter specifying the impact of the "\
          "lookahead layer in the 'lookahead' heuristic cost function (used for the HaRouting and HaRoutingSmart "\
          "algorithm). [0.5 by default]")
    print(color.BOLD + "\t--translateSwap:" + color.END + " if 'True' the swap gates are translated based on the "\
          "native gates available in the backend quantum technology (CX gates for superconducting and ion trap devices"\
            ", CZ gates for NMR and quantum dot ones). They are not translated otherwise. [False by default]")
    print(color.BOLD + "\t--CZtoRZZ:" + color.END + " if 'True', for NMR and quantum dot technologies, the CZ gates "\
          "composing a swap, if the swap gates are trasnslated, are decomposed in RZZ and RZ gates. They are not "\
          "decomposed otherwise. [False by default]")
    print(color.BOLD + "\t--CXtoRXX:" + color.END + " if True, for ion trap technology, the CX gates composing a swap "\
          "are further decomposed using Rxx, Ry and Rx gates (with the optional parameter v fixed to 1). They are not "\
          "further decomposed otherwise. [False by default]")

def parseArguments(requiredArguments, optionalArguments, opts, args) -> None:

    # Parse the optional arguments:
    listRoutingAlgoritms = ["basicrouting", "harouting", "haroutingsmart"]
    for opt, arg in opts:

        if(opt=="-h"): # Help command optional argument:
            printHelper()
            sys.exit()
        elif(opt=="-a"): # Routing algorithm optional argument: 
            # Check that the provided routing algorithm is a valid one: 
            if(not str(arg).lower() in listRoutingAlgoritms):
                sys.exit("[LS tool - Routing]: error! {0} is not a valid routing strategy. Use -h for a list of"\
                         " valid arguments".format( str(arg) ) )
            # Set the provided routing algorithm:
            optionalArguments["routingAlgorithm"] = arg
        elif(opt=="--swapNumberWeight"):
            optionalArguments["swapNumberWeight"] = float(arg)
        elif(opt=="--swapErrorWeight"):
            optionalArguments["swapErrorWeight"] = float(arg)
        elif(opt=="--swapTimeWeight"):
            optionalArguments["swapTimeWeight"] = float(arg)
        elif(opt=="--isRZvirtual"):
            optionalArguments["isRZvirtual"] = arg.lower()=="true"
        elif(opt=="--heuristic"):
            if not arg.lower() in ["basic", "lookahead"]:
                sys.exit("[LS tool - Routing]: error! The provided heuristic {0} is not a valid one.  Use -h for the "\
                    "list of valid arguments.".format(arg))
            else:
                optionalArguments["heuristic"] = arg.lower()
        elif(opt=="--lookaheadDepth"):
            optionalArguments["lookaheadDepth"] = int(arg)
        elif(opt=="--lookaheadWeight"):
            optionalArguments["lookaheadWeight"] = float(arg)
        elif(opt=="--translateSwap"):
            optionalArguments["translateSwap"] = arg.lower()=="true"
        elif(opt=="--CZtoRZZ"):
            optionalArguments["CZtoRZZ"] = arg.lower()=="true"
        elif(opt=="--CXtoRXX"):
            optionalArguments["CXtoRXX"] = arg.lower()=="true"

    # Parse the required arguments:
    if( len(args) != len(requiredArguments) ):
        sys.exit("[LS tool - Routing]: error! Wrong number of required arguments passed. Use -h for the list of valid"\
                 "arguments.")

    requiredArguments["inputQasmFile"] = args[0]
    requiredArguments["outputQasmFolder"] = args[1]
    requiredArguments["backendConfigurationFile"] = args[2]
    requiredArguments["initialMapping"] = [int(s) for s in args[3].split(',')]

    if( (not os.path.exists(requiredArguments["inputQasmFile"])) or 
        (not os.path.isfile(requiredArguments["inputQasmFile"])) ):
        sys.exit("[LS tool - Routing]: error! {0} cannot be found or is not a file.".format( 
                 requiredArguments["inputQasmFile"] ) )
    if( (not os.path.exists(requiredArguments["outputQasmFolder"])) or 
        (not os.path.isdir(requiredArguments["outputQasmFolder"])) ):
        sys.exit("[LS tool - Routing]: error! {0} directory does not exist or is not a directory.".format( 
                                                                               requiredArguments["outputQasmFolder"] ) )
    if( (not os.path.exists(requiredArguments["backendConfigurationFile"])) or 
        (not os.path.isfile(requiredArguments["backendConfigurationFile"])) ):
        sys.exit("[LS tool - Routing]: error! {0} cannot be found or is not a file.".format( 
                 requiredArguments["backendConfigurationFile"] ) )

def main() -> None:

    print("Layout Synthesis tool. Routing step.\n")
    
    # Required arguments:
    requiredArguments = {"inputQasmFile":None, "outputQasmFolder":None, "backendConfigurationFile":None,
                         "initialMapping":None}

    # Optional arguments (the hardcoded values are the default ones):
    optionalArguments = {"routingAlgorithm":"BasicRouting", "swapNumberWeight":0.5, "swapErrorWeight":0.5, 
                         "swapTimeWeight":0.0, "isRZvirtual":False, "heuristic":"basic", "lookaheadDepth":20,
                         "lookaheadWeight":0.5, "translateSwap":False, "CZtoRZZ":False, "CXtoRXX":False}
    
    # Retrieve and parse the required and optional arguments arguments:
    opts, args = getopt.getopt(sys.argv[1:], "a:h", ["swapNumberWeight=", "swapErrorWeight=", "swapTimeWeight=", 
                                                     "isRZvirtual=", "heuristic=", "lookaheadDepth=", 
                                                     "lookaheadWeight=", "translateSwap=", "CZtoRZZ=", "CXtoRXX="])
    parseArguments(requiredArguments, optionalArguments, opts, args)

    # Quantum circuit:
    qasmFile = requiredArguments["inputQasmFile"]
    circuit = Circuit(qasmFile) 

    # Backend:
    backend = Backend.fromConfigurationFile(requiredArguments["backendConfigurationFile"])

    # Router:
    router = Router(backend)

    # Tranform the user specified initial mapping required argument, from a list of integer into a list of nodes:
    try:
        requiredArguments["initialMapping"] = [backend.nodes[id] for id in requiredArguments["initialMapping"]]
    except IndexError:
        sys.exit("[LS tool - Routing]: error! one or more node IDs specified in the initial mapping, do not belong to "\
                 "the target backend. ")
    
    # Get the routed quantum circuit and final mapping using the specified routing strategy:
    routedCircuit, finalMapping = None, None
    if(optionalArguments["routingAlgorithm"].lower()=="basicrouting"):
        routedCircuit, finalMapping = router.routeBasicRouting(circuit, requiredArguments["initialMapping"])
    elif(optionalArguments["routingAlgorithm"].lower()=="harouting"):
        routedCircuit, finalMapping = router.routeHardwareAwareRouting(circuit, requiredArguments["initialMapping"],
        optionalArguments["heuristic"], optionalArguments["lookaheadDepth"], optionalArguments["lookaheadWeight"], 
        optionalArguments["swapNumberWeight"], optionalArguments["swapErrorWeight"], 
        optionalArguments["swapTimeWeight"], backend.technology, optionalArguments["isRZvirtual"])
    elif(optionalArguments["routingAlgorithm"].lower()=="haroutingsmart"):
        routedCircuit, finalMapping = router.routeHardwareAwareRoutingSmart(circuit, 
        requiredArguments["initialMapping"], optionalArguments["lookaheadDepth"], optionalArguments["lookaheadWeight"],
        optionalArguments["swapNumberWeight"], optionalArguments["swapErrorWeight"], 
        optionalArguments["swapTimeWeight"], optionalArguments["isRZvirtual"])

    # Write the routed quantum circuit in a .qasm file in the specified output folder:
    qasmFileNameNoExt = os.path.splitext( os.path.basename(qasmFile) )[0]
    with open(requiredArguments["outputQasmFolder"] + "/" + qasmFileNameNoExt + "_routed.qasm", "w") as text_file:
        print(routedCircuit.toQASM(True, optionalArguments["translateSwap"], optionalArguments["CZtoRZZ"], 
                                                                 optionalArguments["CXtoRXX"], backend), file=text_file)
    print("[LS tool - Routing]: {0} file created."\
                              .format(requiredArguments["outputQasmFolder"] + qasmFileNameNoExt + "_routed.qasm"))

if __name__ == "__main__":

    main()