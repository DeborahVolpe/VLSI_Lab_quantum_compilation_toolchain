import re
from turtle import color
import matplotlib.pyplot as plt
from matplotlib.pyplot import cm
import numpy as np

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

def computeAveragesMetrics(metricsDict):

    avgExecutionTime = 0.0
    avgCircuitCost = 0.0
    avgSwapCount = 0.0
    avgNumNonAllowedInteraction = 0.0

    for key in metricsDict.keys():
        avgExecutionTime += metricsDict[key]["executionTime"]
        avgCircuitCost += metricsDict[key]["circuitCost"]
        avgSwapCount += metricsDict[key]["swapCount"]
        avgNumNonAllowedInteraction += metricsDict[key]["numNonAllowedInteractions"]

    avgExecutionTime = avgExecutionTime / len(metricsDict.keys())
    avgCircuitCost = avgCircuitCost / len(metricsDict.keys())
    avgSwapCount = avgSwapCount / len(metricsDict.keys())
    avgNumNonAllowedInteraction = avgNumNonAllowedInteraction / len(metricsDict.keys())

    return (avgExecutionTime, avgCircuitCost, avgSwapCount, avgNumNonAllowedInteraction)

def routingStrategiesPlot(avgExecutionTimes, avgCircuitCosts, avgSwapCounts):

    nReportFiles = len(reportFilePaths)

    # The x-axis ticks:
    x_axis_ticks = range(1,  nReportFiles+1 )

    ## Execution times:

    # Plot the bar chart:
    plt.figure(figsize=(8.9, 6.9))
    barContainer1 = plt.bar(x=x_axis_ticks, height=avgExecutionTimes, width=0.40, color=cm.tab20(np.linspace(0, 1, nReportFiles+1)))
    
    # Add the bar labels:
    i = 0
    for label in labels:
        barContainer1[i].set_label(label)
        i +=1

    # Axes labels:
    plt.xlabel("Routing strategy")
    plt.ylabel("Average execution time [s]")

    # Set the x-axis ticks:
    plt.xticks(ticks=range(1,49), labels=[None]*48)

    # Display legend:
    plt.legend()

    ## Circuit cost function:
    plt.figure(figsize=(8.9, 6.9))
    barContainer2 = plt.bar(x=x_axis_ticks, height=avgCircuitCosts, width=0.40, color=cm.tab20(np.linspace(0, 1, nReportFiles+1)))
    
    # Add the bar labels:
    i = 0
    for label in labels:
        barContainer2[i].set_label(label)
        i +=1

    # Axes labels:
    plt.xlabel("Routing strategy")
    plt.ylabel("Average circuit cost funtion C")

    # Set the x-axis ticks:
    plt.xticks(ticks=range(1,49), labels=[None]*48)

    # Display legend:
    plt.legend()

    ## Swap counts:
    plt.figure(figsize=(8.9, 6.9))
    barContainer3 = plt.bar(x=x_axis_ticks, height=avgSwapCounts, width=0.40, color=cm.tab20(np.linspace(0, 1, nReportFiles+1)))
    
    # Add the bar labels:
    i = 0
    for label in labels:
        barContainer3[i].set_label(label)
        i +=1

    # Axes labels:
    plt.xlabel("Routing strategy")
    plt.ylabel("Average swap count")

    # Set the x-axis ticks:
    plt.xticks(ticks=range(1,49), labels=[None]*48)

    # Display legend:
    plt.legend()

    # Display the plot:
    plt.show()

def placementStrategiesPlot(avgNumNonAllowedInteractions):

    nReportFiles = len(reportFilePaths)
    
     # The x-axis ticks:
    x_axis_ticks = range(1,  nReportFiles+1 )

    # Plot the bar chart:
    plt.figure(figsize=(8, 4))
    barContainer = plt.bar(x=x_axis_ticks, height=avgNumNonAllowedInteractions, width=0.20,
                                                                    color=cm.tab10(np.linspace(0, 1, nReportFiles+1)))
    
    # Add the bar labels:
    i = 0
    for label in labels:
        barContainer[i].set_label(label)
        i +=1

    # Axes labels:
    plt.xlabel("Placement strategy")
    plt.ylabel("Average number of non-allowed two-qubit interactions")

    # Set the x-axis ticks:
    #plt.xticks(x_axis_ticks)
    plt.xticks(ticks=range(1,19), labels=[None]*18)

    # Display legend:
    plt.legend(loc="best")

    # Display the plot:
    plt.show()
    
def main():

    avgExecutionTimes = []
    avgCircuitCosts = []
    avgSwapCounts = []
    avgNumNonAllowedInteractions = []

    for reportFilePath in reportFilePaths:

        metricsDict = getMetricsDictionary(reportFilePath)

        # Compute the averages of the metrics:
        avgExecutionTime, avgCircuitCost, avgSwapCount, avgNumNonAllowedInteraction = \
                                                                                     computeAveragesMetrics(metricsDict)

        # Append the averages to the list:
        avgExecutionTimes.append(avgExecutionTime)
        avgCircuitCosts.append(avgCircuitCost)
        avgSwapCounts.append(avgSwapCount)
        avgNumNonAllowedInteractions.append(avgNumNonAllowedInteraction)

    # Plotting:
    if(plotPlacementStrateges):
        placementStrategiesPlot(avgNumNonAllowedInteractions)
    else:
        routingStrategiesPlot(avgExecutionTimes, avgCircuitCosts, avgSwapCounts)

if __name__=="__main__":

    # Settings:

    plotPlacementStrateges = False # True for plotting placement starategies, False for routing ones.

    reportFilePaths = [
        "./benchmark/results/bench2/bench2_trivialMapping_I_large.txt",
        "./benchmark/results/bench2/bench2_saHaMappingS0.5E0.0T0.5_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_trivialMapping_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_trivialMapping_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_saHaMappingS0.5E0.0T0.5_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_denseLayoutUseErrors_sabreSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_denseLayoutUseErrors_stochasticSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_noiseAdaptiveLayout_sabreSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_noiseAdaptiveLayout_stochasticSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_sabreLayout_sabreSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_qiskit_sabreLayout_stochasticSwap_I_large.txt",
        "./benchmark/results/bench2/bench2_tket_linePlacement_lexiRoute_I_large.txt",
        "./benchmark/results/bench2/bench2_tket_graphPlacement_lexiRoute_I_large.txt",
        "./benchmark/results/bench2/bench2_tket_noiseAwarePlacementWithNodeErrors_lexiRoute_I_large.txt"]

    labels = [
              "Trivial Mapping",
              "SaHaMapping(S0.5E0.0T0.5)",
              "Trivial Mapping + \nHaRouting(S0.5E0.0T0.5D20) [broken connectivity]",
              "saHaMapping(S0.5E0.0T0.5D20) + \nHaRouting(S0.5E0.0T0.5D20) [broken connectivity]",
              "Trivial Mapping + \nHaRoutingSmart(S0.5E0.0T0.5)",
              "Trivial Mapping + \nHaRoutingSmart(S0.5E0.5T0.0)",
              "SaHaMapping(S0.5E0.0T0.5) + \nHaRoutingSmart(S0.5E0.0T0.5)",
              "Qiskit DenseLayout(hardware-aware) + \nSabreSwap",
              "Qiskit DenseLayout(hardware-aware) + \nStochasticSwap",
              "Qiskit NoiseAdaptiveLayout + SabreSwap",
              "Qiskit NoiseAdaptiveLayout + StochasticSwap",
              "Qiskit SabreLayout + SabreSwap",
              "Qiskit SabreLayout + StochasticSwap",
              "TKET LinePlacement + LexiRouteRouting",
              "TKET GraphPlacement + LexiRouteRouting",
              "TKET NoiseAwarePlacement(with nodes_errors) + \nLexiRouteRouting"]

    main()
