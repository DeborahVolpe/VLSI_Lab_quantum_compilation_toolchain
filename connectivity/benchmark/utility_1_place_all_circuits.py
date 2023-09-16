import os, sys
import configparser

def main():

    technologies = os.listdir(placedCircuitsFolder)
    for technology in technologies:

        backend = config["Backends"][technology]

        sizes = os.listdir(placedCircuitsFolder + "/" + technology)
        for size in sizes:

            rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
            placedPath = placedCircuitsFolder +  "/" + technology + "/" + size

            for qasmFileName in os.listdir(rebasedPath): # For all the qasm files in the rebased circuits folder:

                # Get path to the rebased quantum circuit:
                rebasedQasmFile = rebasedPath + "/" + qasmFileName
            
                # Compute the command for running the layout synthesis placement tool: 
                cmd = "python layout_synthesis_tool_placement.py -a {0} --swapNumberWeight {1} --swapErrorWeight {2} "\
                    "--swapTimeWeight {3} --isRZvirtual {4} --Ti {5} --Tf {6} --delta {7} {8} {9} {10}".format(algorithm,
                    swapNumberWeight, swapErrorWeight, swapTimeWeight, isRZvirtual, Ti, Tf, delta, rebasedQasmFile,
                    placedPath, backend )

                # Execute the layout synthesis placement tool:
                print(cmd)
                os.system(cmd)

                # Rename the output file, removing the _placed suffix (for later benchmarking):
                qasmFileNameNoExt = os.path.splitext( os.path.basename(rebasedQasmFile) )[0]
                os.rename(placedPath + "/" + qasmFileNameNoExt + "_placed.qasm", placedPath + "/" +qasmFileNameNoExt + ".qasm")

                print("[Utility 1]: current quantum circuit correctly placed.\n")

if __name__=="__main__":

    # Do not touch:

    # Read the configuration file:
    config = configparser.ConfigParser()
    config.read("./benchmark/place&route_common_settings.cfg")

    # Read the rebased circuits folder:
    rebasedCircuitsFolder = config["Basic"]["rebasedFolder"]

    # Read common settings:
    Ti = config["CommonSettings"]["Ti"]
    Tf = config["CommonSettings"]["Tf"]
    delta = config["CommonSettings"]["delta"]

    # Configure the other settings based on the placement modality:
    if( len(sys.argv)<2 ):
        sys.exit("[Utility 1]: error, no placement modality specified.")
    
    modality = sys.argv[1] # For modality, it is intended the algrithm (or algorithms) applied.
    
    if(modality=="trivialMapping"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "trivialMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.5"
        swapTimeWeight = "0.0"
        isRZvirtual = "False" # Not used
    elif(modality=="saDenseMapping"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "saDenseMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.5"
        swapTimeWeight = "0.0"
        isRZvirtual = "False" # Not used
    elif(modality=="saHaMappingS0.5E0.0T0.5_nonRZvirtual"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "saHaMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.0"
        swapTimeWeight = "0.5"
        isRZvirtual = "False"
    elif(modality=="saHaMappingS0.5E0.0T0.5_RZvirtual"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "saHaMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.0"
        swapTimeWeight = "0.5"
        isRZvirtual = "True"
    elif(modality=="saHaMappingS0.5E0.5T0.0_nonRZvirtual"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "saHaMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.5"
        swapTimeWeight = "0.0"
        isRZvirtual = "False"
    elif(modality=="saHaMappingS0.5E0.5T0.0_RZvirtual"):
        placedCircuitsFolder = config["OutputFolders"][modality]
        algorithm = "saHaMapping"
        swapNumberWeight = "0.5"
        swapErrorWeight = "0.5"
        swapTimeWeight = "0.0"
        isRZvirtual = "True"
    else:
        sys.exit("[Utility 1]: error, the placement modality specified is invalid.")

    main()