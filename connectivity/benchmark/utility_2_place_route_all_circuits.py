import os
import sys
import configparser

sys.path.append("./layout_synthesis/")
sys.path.append("./")
from layout_synthesis.backend import Backend
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer
from layout_synthesis.router import Router


def main():

    technologies = os.listdir(routedCircuitsFolder)
    for technology in technologies:

        backendCfg = config["Backends"][technology]

        sizes = os.listdir(routedCircuitsFolder + "/" + technology)
        for size in sizes:

            if( (technology=="M" or technology=="Q") and (size=="medium" or size=="large") ):
                continue

            rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
            routedPath = routedCircuitsFolder +  "/" + technology + "/" + size
    
            for qasmFileName in os.listdir(rebasedPath): # For all the qasm files in the rebased circuits folder:
                # Get path to the rebased quantum circuit:
                rebasedQasmFile = rebasedPath + "/" + qasmFileName

                # Initialise the quantum circuit:
                circuit = Circuit(rebasedQasmFile)

                # Backend:
                backend = Backend.fromConfigurationFile(backendCfg)

                # Placement:
                placer = Placer(backend)
                if(placementAlgorithm.lower()=="trivialmapping"):
                    initialMapping = placer.getTrivialMapping(circuit)
                elif(placementAlgorithm.lower()=="sadensemapping"):
                    initialMapping = placer.getSimulatedAnnealingDenseMapping(circuit, Ti, Tf, delta)
                elif(placementAlgorithm.lower()=="sahamapping"):
                    initialMapping = placer.getSimulatedAnnealingHaMapping(circuit, [swapNumberWeight, swapErrorWeight,
                    swapTimeWeight, isRZvirtual], Ti, Tf, delta)
                else:
                    sys.exit("[Utility 2]: error! {0} is not a valid placement algorithm.".format(placementAlgorithm))
                placer.place(circuit, initialMapping)

                # Router:
                router = Router(backend)
                routedCircuit, finalMapping = None, None
                if(routingAlgorithm.lower()=="basicrouting"):
                    routedCircuit, finalMapping = router.routeBasicRouting(circuit, initialMapping)
                elif(routingAlgorithm.lower()=="harouting"):
                    routedCircuit, finalMapping = router.routeHardwareAwareRouting(circuit, initialMapping, heuristic,
                    lookaheadDepth, lookaheadWeight, swapNumberWeight, swapErrorWeight, swapTimeWeight, backend.technology,
                    isRZvirtual)
                elif(routingAlgorithm.lower()=="haroutingsmart"):
                    routedCircuit, finalMapping = router.routeHardwareAwareRoutingSmart(circuit, initialMapping, lookaheadDepth,
                    lookaheadWeight, swapNumberWeight, swapErrorWeight, swapTimeWeight, isRZvirtual)
                else:
                    sys.exit("[Utility 2]: error! {0} is not a valid routing algorithm.".format(routingAlgorithm))



                # Write the output OpenQASM 2.0 file:
                qasmLines = routedCircuit.toQASM(True, translateSwap)
                f = open(routedPath + "/" + qasmFileName, "w")
                f.writelines(qasmLines)
                f.close()

                print("[Utility 2]: current quantum circuit correctly placed&routed in {0}"\
                                                                               .format(routedPath + "/" + qasmFileName))
                print()

if __name__=="__main__":

    # Read the configuration file:
    config = configparser.ConfigParser()
    config.read("./benchmark/place&route_common_settings.cfg")

    # Read the rebased and placed folders:
    rebasedCircuitsFolder = config["Basic"]["rebasedFolder"]

    # Read common settings:
    Ti = float( config["CommonSettings"]["Ti"] )
    Tf = float( config["CommonSettings"]["Tf"] )
    delta = float( config["CommonSettings"]["delta"] )
    translateSwap = config["CommonSettings"]["translateSwap"].lower() == "true"
    heuristic = config["CommonSettings"]["heuristic"]

    # Configure the other settings based on the placement and routing modality:
    if( len(sys.argv)<2 ):
        sys.exit("[Utility 2]: error, no placement and routing modality specified.")

    # Configure the other settings based on the placement and routing modality:
    modality = sys.argv[1]

    if(modality=="trivialMapping_basicRouting"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "basicRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False # Not used.
    elif(modality=="saDenseMapping_basicRouting"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saDenseMapping"
        routingAlgorithm = "basicRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False # Not used.
    elif(modality=="trivialMapping_haRoutingS0.0E0.5T0.5D20W0.5_nonRZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.0
        swapErrorWeight = 0.5
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False
    elif(modality=="trivialMapping_haRoutingS0.0E0.5T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.0
        swapErrorWeight = 0.5
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False
    elif(modality=="trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="trivialMapping_haRoutingS0.5E0.5T0.0D20W0.5_nonRZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False
    elif(modality=="trivialMapping_haRoutingS0.5E0.5T0.0D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saDenseMapping_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saDenseMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False
    elif(modality=="saDenseMapping_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saDenseMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = False
    elif(modality=="saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saHaMappingS0.5E0.5T0.0_haRoutingS0.5E0.5T0.0D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="trivialMapping_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRoutingSmart"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="trivialMapping_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRoutingSmart"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saHaMappingS0.5E0.0T0.5_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRoutingSmart"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saHaMappingS0.5E0.5T0.0_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRoutingSmart"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.5
        swapTimeWeight = 0.0
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "trivialMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    elif(modality=="saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual"):
        routedCircuitsFolder = config["OutputFolders"][modality]
        placementAlgorithm = "saHaMapping"
        routingAlgorithm = "haRouting"
        swapNumberWeight = 0.5
        swapErrorWeight = 0.0
        swapTimeWeight = 0.5
        lookaheadDepth = 20
        lookaheadWeight = 0.5
        isRZvirtual = True
    else:
        sys.exit("[Utility 2]: error, the placement and routing modality specified is invalid.")

    main()