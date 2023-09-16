import configparser
import sys, os
import re, math

from pytket.passes import PlacementPass, RoutingPass
from pytket.placement import LinePlacement, GraphPlacement, NoiseAwarePlacement
from pytket.architecture import Architecture
from pytket.circuit import Node
from pytket.qasm import circuit_from_qasm, circuit_to_qasm
from pytket.transform import Transform

sys.path.append("./")
sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import Backend
from qiskit.test.mock import FakeToronto

def main():

    for modality in modalities:
        routedCircuitsFolder = config["TketRoutingOutputFolders"][modality]

        technologies = os.listdir(routedCircuitsFolder)
        for technology in technologies:

            if(technology=="S"):
                fakeToronto = FakeToronto()
                q = [Node("q", i) for i in range(27)]
                couplingList = []
                for pair in  fakeToronto.configuration().coupling_map:
                    couplingList.append( (q[pair[0]], q[pair[1]]) )
                architecture = Architecture(couplingList)

                # CX error rates:
                link_errors = {}
                for ginfo in fakeToronto.properties().gates:
                    if ginfo.gate == "cx":
                        for item in ginfo.parameters:
                            if item.name == "gate_error":
                                #print("{0} ; errorRate= {1}".format(ginfo.name, item.value))
                                result = re.match("cx(\d+)_(\d+)", ginfo.name)
                                if(result):
                                    qubit1 = int( result.group(1) )
                                    qubit2 = int( result.group(2) )
                                    link_errors[(q[qubit1], q[qubit2])] = item.value
                # Node errors:
                node_errors={}
                # Taken from FakeToronto system properties (X error rate):
                u2_error_rates = [  0.00024166799076583536, 0.0003495703265694083, 0.0002773169904089553, 0.0005031790505459628, 
                                    0.00018479223708742784, 0.0003166920353994419, 0.0003241609645344915, 0.0001724695953754067, 
                                    0.00026411379370617366, 0.0003704479133386757, 0.0003840399578953424, 0.00024728432982112084,
                                    0.002523954525042867, 0.00027753488984767614, 0.00020112334633970674, 0.0011206840664690302,
                                    0.0068728648161664905, 0.00048789126004628876, 0.0014587017961780109, 0.0004888454777597242,
                                    0.0004240544498125384, 0.000340682807101656, 0.0008272172422089674, 0.0004224135565150761,
                                    0.00019990197525710963, 0.0002641139688726229, 0.00026882708444198695 ]
                for i in range(27):
                    node_errors[ q[i] ] = u2_error_rates[i]

            elif(technology=="Q"):
                # CZ error rates RZ virtual:
                CzErrorRates_RZvirtual = [  [-1.0, 0.0002959758454301742, -1.0, -1.0, -1.0],
                                            [0.0002959758454301742, -1.0, 0.0003878551343897696, -1.0, -1.0],
                                            [-1.0, 0.0003878551343897696, -1.0, 0.00027020135946898005, -1.0],
                                            [-1.0, -1.0, 0.00027020135946898005, -1.0, 0.00047824862828604875],
                                            [-1.0, -1.0, -1.0, 0.00047824862828604875, -1.0]  ]
                q = [Node("q", i) for i in range(5)]
                couplingList = [(q[0], q[1]), (q[1], q[2]), (q[2], q[3]), (q[3], q[4])]
                
                link_errors = {(q[0], q[1]):CzErrorRates_RZvirtual[0][1], (q[1], q[2]):CzErrorRates_RZvirtual[1][2], 
                               (q[2], q[3]):CzErrorRates_RZvirtual[2][3], (q[3], q[4]):CzErrorRates_RZvirtual[3][4]}
                architecture = Architecture(couplingList)

                # Node errors:
                node_errors={}
                RxyErrorRates_halfpi = [0.0006238895199088823, 0.0008318742987123429, 0.0008900678195845613, 
                                        0.0007912098202952356, 0.0006043542061132667]
                for i in range(5):
                    node_errors[ q[i] ] = RxyErrorRates_halfpi[i]
            elif(technology=="M"):
                 # CZ error rates RZ virtual:
                CzErrorRates_RZvirtual = [  [-1.0, 0.0010068615488580956, 0.05990282623911669, 0.01174502452087467],
                                            [0.0010068615488580956, -1.0, 0.0009818225957169968, 0.04595954833391991],
                                            [0.05990282623911669, 0.0009818225957169968, -1.0, 0.001784288060825312],
                                            [0.01174502452087467, 0.04595954833391991, 0.001784288060825312, -1.0]  ]
                q = [Node("q", i) for i in range(4)]
                couplingList = []
                link_errors = {}
                for i in range(4):
                    for j in range(4):
                        if(i!=j):
                            couplingList.append((q[i], q[j]))
                            link_errors[(q[i], q[j])] = CzErrorRates_RZvirtual[i][j]
                architecture = Architecture(couplingList)

                # Node errors:
                node_errors={}
                RxyErrorRates_halfpi = [0.001075650696837016, 0.0015442553580364837, 
                                        0.0013470332564786691, 0.00024251349135073763]
                for i in range(4):
                    node_errors[ q[i] ] = RxyErrorRates_halfpi[i]
            elif(technology=="I"):
                q = [Node("q", i) for i in range(17)]
                backend = Backend.fromConfigurationFile(config["Backends"]["I"])
                couplingList = []
                link_errors = {}
                for i in range(17):
                    for j in range(17):
                        if(i!=j):
                            couplingList.append((q[i], q[j]))
                            link_errors[(q[i], q[j])] = backend.getCXErrorRate(backend.nodes[i], backend.nodes[j])
                architecture = Architecture(couplingList)

                # Node errors:
                node_errors={}
                for i in range(17):
                    node_errors[ q[i] ] = backend.getSingleQubitGateTime(backend.nodes[i], math.pi/2, False, False)

            # Layout to apply (depends on the placement modality):
            if(modality=="tket_linePlacement_lexiRoute"):
                placementPass = PlacementPass( LinePlacement(architecture) )
                routingPass = RoutingPass( architecture )
            elif(modality=="tket_graphPlacement_lexiRoute"):
                placementPass = PlacementPass( GraphPlacement(architecture) )
                routingPass = RoutingPass( architecture )
            elif(modality=="tket_noiseAwarePlacement_lexiRoute"):
                placementPass = PlacementPass( NoiseAwarePlacement(architecture, link_errors=link_errors) )
                routingPass = RoutingPass( architecture )
            elif(modality=="tket_noiseAwarePlacementWithNodeErrors_lexiRoute"):
                placementPass = PlacementPass( NoiseAwarePlacement(architecture, node_errors=node_errors, link_errors=link_errors) )
                routingPass = RoutingPass( architecture )
            else:
                sys.exit("[Utility 9]: error, the placement modality specified is invalid.")


            sizes = os.listdir(routedCircuitsFolder + "/" + technology)
            for size in sizes:

                rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
                routedPath = routedCircuitsFolder +  "/" + technology + "/" + size

                for qasmFileName in os.listdir(rebasedPath): # For all the qasm files in the rebased circuits folder:

                    if(qasmFileName=="qrng_n4.qasm"):
                        continue # SKip this circuit because Tket has some problem placing it!

                    # Get path to the rebased quantum circuit:
                    rebasedQasmFile = rebasedPath + "/" + qasmFileName
                    # Get path to the placed + routed quantum circuit:
                    routedQasmFile = routedPath + "/" + qasmFileName
                    print("[Utility 9]: current quantum circuit to be placed: {0}".format(rebasedQasmFile))

                    # Quantum Circuit:
                    circ = circuit_from_qasm(rebasedQasmFile)
                
                    # Apply placement + routing pass:
                    placementPass.apply(circ)
                    routingPass.apply(circ)
                    decomposeBridge = Transform.DecomposeBRIDGE()
                    decomposeBridge.apply(circ)
                    
                    # Write output:
                    circuit_to_qasm(circ, routedQasmFile)

                    print("[Utility 9]: current quantum circuit correctly placed.\n")

if __name__=="__main__":

    # Do not touch:

    # Read the configuration file:
    config = configparser.ConfigParser()
    config.optionxform = str
    config.read("./benchmark/place&route_common_settings.cfg")

    # Read the rebased circuits folder:
    rebasedCircuitsFolder = config["Basic"]["rebasedFolder"]

    # Retrieve the list of all the tket placement + routing modalities:
    modalities = list(config["TketRoutingOutputFolders"])

    main()
