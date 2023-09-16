import configparser
import sys, os
from qiskit import QuantumCircuit
from qiskit.providers.models import BackendProperties
from qiskit.test.mock import FakeToronto
from qiskit.transpiler.passes import DenseLayout, ApplyLayout, FullAncillaAllocation, EnlargeWithAncilla, SabreLayout,\
                                     NoiseAdaptiveLayout, StochasticSwap, SabreSwap
from qiskit.transpiler.passmanager import PassManager
from qiskit.transpiler import CouplingMap

sys.path.append("./")
sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import Backend

def getIonTrapProperties(couplingList):

    backend = Backend.fromConfigurationFile(config["Backends"]["I"])

    coupling_map = couplingList
    unique_qubits = list(set().union(*coupling_map))

    properties = {
        "backend_name": "ion_trap_experimental",
        "backend_version": "0.0.0",
        "last_update_date": "2000-01-01 00:00:00Z",
        "qubits": [
            [
                {"date": "2000-01-01 00:00:00Z", "name": "T1", "unit": "\u00b5s", "value": 0.0},
                {"date": "2000-01-01 00:00:00Z", "name": "T2", "unit": "\u00b5s", "value": 0.0},
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "frequency",
                    "unit": "GHz",
                    "value": 0.0,
                },
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "readout_error",
                    "unit": "",
                    "value": 0.0,
                },
                {"date": "2000-01-01 00:00:00Z", "name": "operational", "unit": "", "value": 1},
            ]
            for _ in range(len(unique_qubits))
        ],
        "gates": [
            {
                "gate": "cx",
                "name": "CX" + str(pair[0]) + "_" + str(pair[1]),
                "parameters": [
                    {
                        "date": "2000-01-01 00:00:00Z",
                        "name": "gate_error",
                        "unit": "",
                        "value": backend.getCXErrorRate(backend.nodes[pair[0]], backend.nodes[pair[1]]),
                    }
                ],
                "qubits": [pair[0], pair[1]],
            }
            for pair in coupling_map
        ],
        "general": [],
    }

    return BackendProperties.from_dict(properties)

def getNmrProperties(couplingList):

    CzErrorRates_RZvirtual = [  [-1.0, 0.0010068615488580956, 0.05990282623911669, 0.01174502452087467],
                                [0.0010068615488580956, -1.0, 0.0009818225957169968, 0.04595954833391991],
                                [0.05990282623911669, 0.0009818225957169968, -1.0, 0.001784288060825312],
                                [0.01174502452087467, 0.04595954833391991, 0.001784288060825312, -1.0]  ]

    coupling_map = couplingList
    unique_qubits = list(set().union(*coupling_map))

    properties = {
        "backend_name": "crotonic_acid",
        "backend_version": "0.0.0",
        "last_update_date": "2000-01-01 00:00:00Z",
        "qubits": [
            [
                {"date": "2000-01-01 00:00:00Z", "name": "T1", "unit": "\u00b5s", "value": 0.0},
                {"date": "2000-01-01 00:00:00Z", "name": "T2", "unit": "\u00b5s", "value": 0.0},
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "frequency",
                    "unit": "GHz",
                    "value": 0.0,
                },
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "readout_error",
                    "unit": "",
                    "value": 0.0,
                },
                {"date": "2000-01-01 00:00:00Z", "name": "operational", "unit": "", "value": 1},
            ]
            for _ in range(len(unique_qubits))
        ],
        "gates": [
            {
                "gate": "cx",
                "name": "CX" + str(pair[0]) + "_" + str(pair[1]),
                "parameters": [
                    {
                        "date": "2000-01-01 00:00:00Z",
                        "name": "gate_error",
                        "unit": "",
                        "value": CzErrorRates_RZvirtual[pair[0]][pair[1]],
                    }
                ],
                "qubits": [pair[0], pair[1]],
            }
            for pair in coupling_map
        ],
        "general": [],
    }

    return BackendProperties.from_dict(properties)

def getQuantumDotsProperties(couplingList):

    CzErrorRates_RZvirtual = [  [-1.0, 0.0002959758454301742, -1.0, -1.0, -1.0],
                                [0.0002959758454301742, -1.0, 0.0003878551343897696, -1.0, -1.0],
                                [-1.0, 0.0003878551343897696, -1.0, 0.00027020135946898005, -1.0],
                                [-1.0, -1.0, 0.00027020135946898005, -1.0, 0.00047824862828604875],
                                [-1.0, -1.0, -1.0, 0.00047824862828604875, -1.0]  ]

    coupling_map = couplingList
    unique_qubits = list(set().union(*coupling_map))

    properties = {
        "backend_name": "5nodes_quantum_dot",
        "backend_version": "0.0.0",
        "last_update_date": "2000-01-01 00:00:00Z",
        "qubits": [
            [
                {"date": "2000-01-01 00:00:00Z", "name": "T1", "unit": "\u00b5s", "value": 0.0},
                {"date": "2000-01-01 00:00:00Z", "name": "T2", "unit": "\u00b5s", "value": 0.0},
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "frequency",
                    "unit": "GHz",
                    "value": 0.0,
                },
                {
                    "date": "2000-01-01 00:00:00Z",
                    "name": "readout_error",
                    "unit": "",
                    "value": 0.0,
                },
                {"date": "2000-01-01 00:00:00Z", "name": "operational", "unit": "", "value": 1},
            ]
            for _ in range(len(unique_qubits))
        ],
        "gates": [
            {
                "gate": "cx",
                "name": "CX" + str(pair[0]) + "_" + str(pair[1]),
                "parameters": [
                    {
                        "date": "2000-01-01 00:00:00Z",
                        "name": "gate_error",
                        "unit": "",
                        "value": CzErrorRates_RZvirtual[pair[0]][pair[1]],
                    }
                ],
                "qubits": [pair[0], pair[1]],
            }
            for pair in coupling_map
        ],
        "general": [],
    }

    return BackendProperties.from_dict(properties)

def main():

    for modality in modalities:
        routedCircuitsFolder = config["QiskitRoutingOutputFolders"][modality]

        technologies = os.listdir(routedCircuitsFolder)
        for technology in technologies:

            if(technology=="S"):
                fakeToronto = FakeToronto()
                couplingMap = CouplingMap( fakeToronto.configuration().coupling_map )
                backendProperties = fakeToronto.properties()
            elif(technology=="Q"):
                couplingList = [[0,1], [1,2], [2,3], [3,4]]
                couplingMap = CouplingMap(couplingList)
                backendProperties = getQuantumDotsProperties(couplingList)
                # for ginfo in backendProperties.gates:
                #     if ginfo.gate == "cx":
                #         for item in ginfo.parameters:
                #             if item.name == "gate_error":
                #                 print("{0} ; errorRate= {1}".format(ginfo.name, item.value))
            elif(technology=="M"):
                couplingList = []
                for i in range(4):
                    for j in range(4):
                        if(i!=j):
                            couplingList.append([i, j])
                couplingMap = CouplingMap(couplingList)
                backendProperties = getNmrProperties(couplingList)
                # for ginfo in backendProperties.gates:
                #     if ginfo.gate == "cx":
                #         for item in ginfo.parameters:
                #             if item.name == "gate_error":
                #                 print("{0} ; errorRate= {1}".format(ginfo.name, item.value))
            elif(technology=="I"):
                couplingList = []
                for i in range(17):
                    for j in range(17):
                        if(i!=j):
                            couplingList.append([i, j])
                couplingMap = CouplingMap(couplingList)
                backendProperties = getIonTrapProperties(couplingList)
                # for ginfo in backendProperties.gates:
                #     if ginfo.gate == "cx":
                #         for item in ginfo.parameters:
                #             if item.name == "gate_error":
                #                 print("{0} ; errorRate= {1}".format(ginfo.name, item.value))


            # Layout to apply (depends on the placement modality):
            if(modality=="qiskit_denseLayout_stochasticSwap"):
                layout = DenseLayout(couplingMap) 
                routing = StochasticSwap(couplingMap)
            elif(modality=="qiskit_denseLayout_sabreSwap"):
                layout = DenseLayout(couplingMap) 
                routing = SabreSwap(couplingMap, "decay")
            elif(modality=="qiskit_denseLayoutUseErrors_stochasticSwap"):
                layout = DenseLayout(couplingMap, backendProperties)
                routing = StochasticSwap(couplingMap)
            elif(modality=="qiskit_denseLayoutUseErrors_sabreSwap"):
                layout = DenseLayout(couplingMap, backendProperties)
                routing = SabreSwap(couplingMap, "decay")
            elif(modality=="qiskit_sabreLayout_stochasticSwap"):
                layout = SabreLayout(couplingMap)
                routing = StochasticSwap(couplingMap)
            elif(modality=="qiskit_sabreLayout_sabreSwap"):
                layout = SabreLayout(couplingMap)
                routing = SabreSwap(couplingMap, "decay")
            elif(modality=="qiskit_noiseAdaptiveLayout_stochasticSwap"):
                layout = NoiseAdaptiveLayout(backendProperties)
                routing = StochasticSwap(couplingMap)
            elif(modality=="qiskit_noiseAdaptiveLayout_sabreSwap"):
                layout = NoiseAdaptiveLayout(backendProperties)
                routing = SabreSwap(couplingMap, "decay")
            else:
                sys.exit("[Utility 8]: error, the placement modality specified is invalid.")


            sizes = os.listdir(routedCircuitsFolder + "/" + technology)
            for size in sizes:

                rebasedPath = rebasedCircuitsFolder + "/"  + technology + "/" + size
                routedPath = routedCircuitsFolder +  "/" + technology + "/" + size

                for qasmFileName in os.listdir(rebasedPath): # For all the qasm files in the rebased circuits folder:

                    # Get path to the rebased quantum circuit:
                    rebasedQasmFile = rebasedPath + "/" + qasmFileName
                    # Get path to the routed quantum circuit:
                    routedQasmFile = routedPath + "/" + qasmFileName
                    print("[Utility 8]: current quantum circuit to be placed&routed: {0}".format(rebasedQasmFile))

                    # Quantum Circuit:
                    circ = QuantumCircuit.from_qasm_file(rebasedQasmFile)
                
                    # Apply layout + Swap:
                    passManager = PassManager()
                    passManager.append(layout)
                    fullAncillaAllocation = FullAncillaAllocation(couplingMap)
                    enlargeWithAncilla = EnlargeWithAncilla()
                    passManager.append(fullAncillaAllocation)
                    passManager.append(enlargeWithAncilla)
                    applyLayout = ApplyLayout()
                    passManager.append(applyLayout)
                    passManager.append(routing)
                    routedCirc = passManager.run(circ)

                    # Write output:
                    routedCirc.qasm(filename=routedQasmFile)

                    print("[Utility 8]: current quantum circuit correctly placed&routed.\n")

if __name__=="__main__":

    # Do not touch:

    # Read the configuration file:
    config = configparser.ConfigParser()
    config.optionxform = str
    config.read("./benchmark/place&route_common_settings.cfg")

    # Read the rebased circuits folder:
    rebasedCircuitsFolder = config["Basic"]["rebasedFolder"]

    # Retrieve the list of all the qiskit placement+routing modalities:
    modalities = list(config["QiskitRoutingOutputFolders"])

    main()
