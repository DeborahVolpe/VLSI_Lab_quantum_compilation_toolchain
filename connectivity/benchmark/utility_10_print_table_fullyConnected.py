import re

def getMetricsDictionary(reportFilePath):

    # Parse the report file:
    f = open(reportFilePath, "r")
    metricsDict = {}
    for line in f:

        result = re.match("^\s*name=([\w\.-]+);numNonAllowedInteractions=(\d+);circuitDepth=(\d+);swapCount=(\d+);executionTime=([\d+\.e-]+);CF_circuitDepth=([\d+\.e-]+);CF_gateCount=([\d+\.e-]+);circuitCost=([\d+\.e-]+)", line )
        if(result):

            # Extract the bench2 information:
            qasmName = result.group(1)
            numNonAllowedInteractions = int(result.group(2))
            circuitDepth = int(result.group(3))
            swapCount = int(result.group(4))
            executionTime = float(result.group(5))
            CF_circuitDepth = float(result.group(6))
            CF_gateCount = float(result.group(7))
            circuitCost = float(result.group(8))

            values = {}
            values["numNonAllowedInteractions"] = numNonAllowedInteractions
            values["circuitDepth"] = circuitDepth
            values["swapCount"] = swapCount
            values["executionTime"] = executionTime
            values["CF_circuitDepth"] = CF_circuitDepth
            values["CF_gateCount"] = CF_gateCount
            values["circuitCost"] = circuitCost

            metricsDict[qasmName] = values
    f.close()

    return metricsDict

# Compute the metrics dictionary:
metricsDict = getMetricsDictionary("./benchmark/results/bench2/bench2_trivialMapping_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual_M_small.txt")

# Extract the sorted (alphabetically) circuit names:
sorted_names=sorted(metricsDict.keys(), key=lambda x:x.lower())

# Print table:
print("Circuit names:")
for name in sorted_names:
    print(name)
print("Swap count:")
for name in sorted_names:
    print(metricsDict[name]["swapCount"])
print("Execution time:")
for name in sorted_names:
    print( "{0:.6f}".format(metricsDict[name]["executionTime"]) )
