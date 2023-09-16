import sys, os, configparser

def main():

    for outputFolder in outputFolders:

        outputFolderPath = config["OutputFolders"][outputFolder]

        technologies = os.listdir(outputFolderPath)
        for technology in technologies:

            backendCfg = config["Backends"][technology]

            sizes = os.listdir(outputFolderPath + "/" + technology)
            for size in sizes:

                outputPath = outputFolderPath + "/" + technology + "/" + size
                rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
                reportFilePath = "./benchmark/results/bench2/bench2_" + outputFolder + "_" + technology + "_" + size + ".txt"

                # Compute isRZvirtual:
                isRZvirtual = "True" # Fixed to True.
                # if( "_RZvirtual" in outputFolder ):
                #     isRZvirtual = "True"

                # Compute the K factor:
                if(technology=="M"):
                    K = "0.9893"
                elif(technology=="Q"):
                    K = "0.9994"
                elif(technology=="S"):
                    K = "0.9892"
                elif(technology=="I"):
                    K = "0.9789"

                cmd = "python ./benchmark/benchmark_2_metrics.py " + rebasedPath + " " + outputPath + " " + \
                       reportFilePath + " " + backendCfg + " " + isRZvirtual + " " + K
                print(cmd)
                os.system(cmd)
                print()

if __name__=="__main__":

    # Read the configuration file:
    config = configparser.ConfigParser()
    config.optionxform = str
    config.read("./benchmark/place&route_common_settings.cfg")

    # Read the rebased circuits folder:
    rebasedCircuitsFolder = config["Basic"]["rebasedFolder"]

    # Retrive the list of all the output folders:
    outputFolders = list(config["OutputFolders"])

    main()