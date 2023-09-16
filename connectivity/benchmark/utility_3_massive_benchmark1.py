import sys, os, configparser

def main():

    for outputFolder in outputFolders:

        outputFolderPath = config["OutputFolders"][outputFolder]

        technologies = os.listdir(outputFolderPath)
        for technology in technologies:

            sizes = os.listdir(outputFolderPath + "/" + technology)
            for size in sizes:

                outputPath = outputFolderPath + "/" + technology + "/" + size
                rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
                reportFilePath = "./benchmark/results/bench1/bench1_" + outputFolder + "_" + technology + "_" + size + ".txt"

                cmd = "python ./benchmark/benchmark_1_funct_equ.py " + rebasedPath + " " + outputPath + " " + reportFilePath
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