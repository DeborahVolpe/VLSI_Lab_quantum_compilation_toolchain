import sys, os

def main():

    for technology in technologies:

        for size in sizes:

            if( (technology=="M" or technology=="Q") and (size=="medium" or size=="large") ):
                continue

            rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
            transformedPath = transformedCircuitsFolder + "/" + algorithm + "/" + circuitSet + "/" + technology + "/" + size
            reportFilePath = "./benchmark/results/bench1_" + algorithm + "_" + circuitSet + "_" + technology + "_" + size

            cmd = "python ./benchmark/benchmark_1_funct_equ.py " + rebasedPath + " " + transformedPath + " " + reportFilePath
            print(cmd)
            os.system(cmd)

if __name__=="__main__":

    # Settings:
    sizes = ["small", "medium", "large"]
    technologies = ["M", "Q", "S", "I"] 
    circuitSet = "github"
    algorithm = "saHaMapping_S0.5E0.0T0.5"
    rebasedCircuitsFolder = "./qasms/rebased/" + circuitSet
    transformedCircuitsFolder = "./qasms/placed"

    main()