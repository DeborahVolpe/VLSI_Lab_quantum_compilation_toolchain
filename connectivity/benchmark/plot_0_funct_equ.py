from cProfile import label
import re
import matplotlib.pyplot as plt
import numpy as np

def main():

    # Parse the report file:
    f = open(reportFilePath, "r")
    circuits = {}
    for line in f:

        result = re.match("^\s*name=([\w\.-]+);KLD=([\d+\.e-]+)\/([\d+\.e-]+)\/([\d+\.e-]+);fidelity=([\d+\.e-]+);fidelityHellinger=([\d+\.e-]+)", line )
        if(result):
            qasmName = result.group(1)
            KLD = result.group(2)
            fidelity = result.group(5)
            fidelityHellinger = result.group(6)

            circuits[qasmName] = (float(KLD), float(fidelity), float(fidelityHellinger))
    f.close()


    sorted_names=sorted(circuits.keys(), key=lambda x:x.lower())
    sorted_klds = []
    sorted_fidelities = []
    sorted_fidelitiesHellinger = []
    for name in sorted_names:
        sorted_klds.append( circuits[name][0] )
        sorted_fidelities.append( circuits[name][1] )
        sorted_fidelitiesHellinger.append( circuits[name][2] )

    # Plotting:

    xpoints = list( range(0, len(circuits)) )


    # Points:
    plt.figure(figsize=(7, 4))
    plt.plot(xpoints, sorted_fidelitiesHellinger, 'o', color="green", label="Hellinger fidelity", markersize=8)
    plt.plot(xpoints, sorted_fidelities, 'x', color="blue", label="Fidelity (approximated)", markersize=10)
    plt.plot(xpoints, sorted_klds, '*', color="red", label="Kullback–Leibler divergence (KLD)", markersize=8)

    # Lines:
    plt.axhline(linestyle="--", y=0.95, c="orange", label="Lowest acceptable fidelity")

    plt.axhline(linestyle="-.", y=0.05, c="orange", label="Highest acceptable KLD")

    # Axes:
    #plt.axvline(x=0, c="black")
    #plt.axhline(y=0, c="black")
    plt.xlim(-0.1, len(circuits))
    plt.ylim(-0.1,1.2)

    # Axes labels:
    plt.xlabel("Quantum circuit under test")

    plt.legend()
    plt.show()

if __name__=="__main__":

    # Settings:
    reportFilePath = "./results/bench1_sadensemapping_haroutings0.5E0.0T0.5D20W0.5_Q_small.txt"

    main()