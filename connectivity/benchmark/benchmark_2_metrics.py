import os
import sys
import re
import math

sys.path.append("./layout_synthesis/")
sys.path.append("./")
from layout_synthesis.backend import Backend
from layout_synthesis.circuit import Circuit

def getQuantumDotSingleQubitErrorRate(node, theta, isRZ, isRZvirtual):

    RxyErrorRates_halfpi = [0.0006238895199088823, 0.0008318742987123429, 0.0008900678195845613, 0.0007912098202952356,
                            0.0006043542061132667] # Each index is for a node id.

    # Compute the error rate:
    E = -1.0
    if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
        
        E = abs(( RxyErrorRates_halfpi[node]*theta)/(math.pi/2) )
    else: # If the single-qubit gate is Rz(theta):
        
        if(not isRZvirtual): # If the Rz gate is implemented virtually:
            # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
            RxSuccessRate = 1 - RxyErrorRates_halfpi[node]
            RySuccessRate = 1 - abs((RxyErrorRates_halfpi[node]*theta)/(math.pi/2))
            E = 1 - (RxSuccessRate * RySuccessRate * RxSuccessRate )
        else: # If the Rz gate is not implemented virtually:
            E = 0.0 # Virtual implementation => 0.0 error rate.    

    return E

def getQuantumDotCzErrorRate(node1, node2, isRZvirtual):
    CzErrorRates_RZvirtual = [  [-1.0, 0.0002959758454301742, -1.0, -1.0, -1.0],
                                [0.0002959758454301742, -1.0, 0.0003878551343897696, -1.0, -1.0],
                                [-1.0, 0.0003878551343897696, -1.0, 0.00027020135946898005, -1.0],
                                [-1.0, -1.0, 0.00027020135946898005, -1.0, 0.00047824862828604875],
                                [-1.0, -1.0, -1.0, 0.00047824862828604875, -1.0]  ]
    CzErrorRates_nonRZvirtual =  [  [-1.0, 0.0031541697919003076, -1.0, -1.0, -1.0],
                                    [0.0031541697919003076, -1.0, 0.002798418721651874, -1.0, -1.0],
                                    [-1.0, 0.002798418721651874, -1.0, 0.0031300081437326543, -1.0],
                                    [-1.0, -1.0, 0.0031300081437326543, -1.0, 0.0029900319694301514],
                                    [-1.0, -1.0, -1.0, 0.0029900319694301514, -1.0]   ]

    error_rate = CzErrorRates_RZvirtual[node1][node2] if isRZvirtual else CzErrorRates_nonRZvirtual[node1][node2]

    return error_rate

def getNmrSingleQubitErrorRate(node, theta, isRZ, isRZvirtual):

    RxyErrorRates_halfpi = [0.001075650696837016, 0.0015442553580364837, 
                            0.0013470332564786691, 0.00024251349135073763] # Each index is for a node id.

    # Compute the error rate:
    E = -1.0
    if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
        
        E = abs(( RxyErrorRates_halfpi[node]*theta)/(math.pi/2) )
    else: # If the single-qubit gate is Rz(theta):
        
        if(not isRZvirtual): # If the Rz gate is implemented virtually:
            # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
            RxSuccessRate = 1 - RxyErrorRates_halfpi[node]
            RySuccessRate = 1 - abs((RxyErrorRates_halfpi[node]*theta)/(math.pi/2))
            E = 1 - (RxSuccessRate * RySuccessRate * RxSuccessRate )
        else: # If the Rz gate is not implemented virtually:
            E = 0.0 # Virtual implementation => 0.0 error rate.    

    return E

def getNmrCzErrorRate(node1, node2, isRZvirtual):
    
    CzErrorRates_RZvirtual = [  [-1.0, 0.0010068615488580956, 0.05990282623911669, 0.01174502452087467],
                                [0.0010068615488580956, -1.0, 0.0009818225957169968, 0.04595954833391991],
                                [0.05990282623911669, 0.0009818225957169968, -1.0, 0.001784288060825312],
                                [0.01174502452087467, 0.04595954833391991, 0.001784288060825312, -1.0]  ]
    CzErrorRates_nonRZvirtual =  [  [-1.0, 0.018619752003483536, 0.10127986900723451, 0.02675318056794751],
                                    [0.018619752003483536, -1.0, 0.017477876412628657, 0.18491681639608504],
                                    [0.22027407165933643, 0.31758074466622077, -1.0,  0.06729716305291877],
                                    [0.02675318056794751, 0.06729716305291877, 0.02065193596924242, -1.0]  ]

    error_rate = CzErrorRates_RZvirtual[node1][node2] if isRZvirtual else CzErrorRates_nonRZvirtual[node1][node2]

    return error_rate

def getUErrorRate(gateQasm, node, isRZvirtual):
    
    # Taken from FakeToronto system properties (X error rate):
    u2_error_rates = [  0.00024166799076583536, 0.0003495703265694083, 0.0002773169904089553, 0.0005031790505459628, 
                        0.00018479223708742784, 0.0003166920353994419, 0.0003241609645344915, 0.0001724695953754067, 
                        0.00026411379370617366, 0.0003704479133386757, 0.0003840399578953424, 0.00024728432982112084,
                        0.002523954525042867, 0.00027753488984767614, 0.00020112334633970674, 0.0011206840664690302,
                        0.0068728648161664905, 0.00048789126004628876, 0.0014587017961780109, 0.0004888454777597242,
                        0.0004240544498125384, 0.000340682807101656, 0.0008272172422089674, 0.0004224135565150761,
                        0.00019990197525710963, 0.0002641139688726229, 0.00026882708444198695 ]

    error_rate = 2 * u2_error_rates[node] # If the gate is not u1, u2 or u3, approximate it to u3 (worst case).

    result = re.match("^\s*(u[123])", gateQasm)
    if(result):
        gateName = result.group(1)
        if(gateName=="u1" and isRZvirtual):
            error_rate = 0.0
        elif(gateName=="u2"):
            error_rate = u2_error_rates[node]
        else: # All the other single qubit gates (and also U1 with no RZ virtual) are treated as U3:
            error_rate = 2 * u2_error_rates[node]

    return error_rate

def getUGateTime(gateQasm, isRZvirtual):

    # From the FakeToronto system properties (X gate time):
    u2GateTime = 568.8888888888889e-9 # in seconds

    gateTime = 2 * u2GateTime # If the gate is not u1, u2 or u3, approximate it to u3 (worst case).

    result = re.match("^\s*(u[123])", gateQasm)
    if(result):
        gateName = result.group(1)
        if(gateName=="u1" and isRZvirtual):
            gateTime = 0.0 
        elif(gateName=="u2"):
            gateTime = u2GateTime
        else: # All the other single qubit gates (and also U1 with no RZ virtual) are treated as U3:
            gateTime = 2 * u2GateTime

    return gateTime

def computeMetrics(circuit, backend):

    circuitDepth = circuit.nLayers

    totalGateTime = 0.0
    swapCount = 0
    gateCount = 0
    sumSingleQubitFidelity = 0.0
    sumTwoQubitFidelity = 0.0
    numNonAllowedInteractions = 0
    while( len(circuit.dag.nodes)>0 ):

        for vertex in circuit.extractLayer1():

            gateCount += 1

            if(vertex.isSingleQubitGate):
                
                if(backend.technology=="M" or backend.technology=="Q" or backend.technology=="I"): # For NMR, quantum 
                                                                                                   # dot and ion trap:
                    result = re.match("^\s*(r[xyz])\((.+)\)", vertex.gateName.lower())
                    if(result):

                        targetNode = backend.nodes[vertex.targetQubitId]

                        # Gate time:
                        isRZ = True if result.group(1)=="rz" else False
                        pi = math.pi
                        theta = eval(result.group(2))
                        totalGateTime += backend.getSingleQubitGateTime(targetNode, theta, isRZ, isRZvirtual)

                        # Gate fidelity:
                        gateError = 0.0
                        if(backend.technology == "M"):
                            gateError = getNmrSingleQubitErrorRate(vertex.targetQubitId, theta, isRZ, isRZvirtual)
                        elif(backend.technology == "I"):
                            gateError = backend.getSingleQubitErrorRate(targetNode, theta, isRZ, isRZvirtual)
                        else: # Q:
                            gateError = getQuantumDotSingleQubitErrorRate(vertex.targetQubitId, theta, isRZ, \
                                                                                                            isRZvirtual)
                        sumSingleQubitFidelity += math.log(1 - gateError)
                else: # For superconducting technologies:

                    # Gate time:
                    totalGateTime += getUGateTime(vertex.gateName.lower(), isRZvirtual)

                    # Gate error:
                    gateError = getUErrorRate(vertex.gateName.lower(), vertex.targetQubitId, isRZvirtual)
                    sumSingleQubitFidelity += math.log(1 - gateError)
            else: # Two-qubit gates:
                controlNode = backend.nodes[vertex.controlQubitId]
                targetNode = backend.nodes[vertex.targetQubitId]

                # Check if the interaction is allowed in the target hardware:
                if( backend.getDistance(controlNode, targetNode)>1 ):
                    numNonAllowedInteractions += 1
                    continue # The non-allowed interactions cannot contribute to the execution time and error rate.

                if(backend.technology=="M" or backend.technology=="Q"): # For NMR and QuantumDot backends:
                    if(vertex.gateName.lower()=="cz"):

                        # Gate time:
                        totalGateTime += backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

                        # Gate error:
                        gateError = 0.0
                        if(backend.technology=="M"):
                            gateError = getNmrCzErrorRate(controlNode.id, targetNode.id, isRZvirtual)
                        else: # Q:
                            gateError = getQuantumDotCzErrorRate(controlNode.id, targetNode.id, isRZvirtual)
                        sumTwoQubitFidelity += math.log(1 - gateError)
                    elif(vertex.gateName.lower()=="swap"):

                        # Swap count:
                        swapCount += 1

                        # Gate time:
                        totalGateTime += backend.getSwapGateTime(controlNode, targetNode, isRZvirtual)

                        # Gate error:
                        gateError = backend.getSwapErrorRate(controlNode, targetNode, isRZvirtual)
                        sumTwoQubitFidelity += math.log(1 - gateError)
                    else: # For all the other two-qubits gates:
                        
                        print("Found a non-CZ two-quibit gate in a .qasm file for NMR/quantum dots backend.")

                        # Gate time:
                        totalGateTime += backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

                        # Error rate:
                        gateError = 0.0
                        if(backend.technology=="M"):
                            gateError = getNmrCzErrorRate(controlNode.id, targetNode.id, isRZvirtual)
                        else: # Q:
                            gateError = getQuantumDotCzErrorRate(controlNode.id, targetNode.id, isRZvirtual)
                        sumTwoQubitFidelity += math.log(1 - gateError)                       
                        
                else: # For Superconducting and IonTrap backends:
                    if(vertex.gateName.lower()=="cx"):

                        # Gate time:
                        totalGateTime += backend.getCXGateTime(controlNode, targetNode)

                        # Error rate:
                        errorRate = backend.getCXErrorRate(controlNode, targetNode)
                        sumTwoQubitFidelity += math.log(1 - errorRate)
                    elif(vertex.gateName.lower()=="swap"):

                        # Swap count:
                        swapCount += 1

                        # Gate time:
                        totalGateTime += backend.getSwapGateTime(controlNode, targetNode)

                        # Error rate:
                        errorRate = backend.getSwapErrorRate(controlNode, targetNode)
                        sumTwoQubitFidelity += math.log(1 - errorRate)
                    else: # For all the other two-qubits gates:

                        print("Found a non-CZ two-qubit gate in a .qasm file for superconducting/ion trap backend.")

                        # Gate time:
                        totalGateTime += backend.getCXGateTime(controlNode, targetNode)

                        # Error rate:
                        errorRate = backend.getCXErrorRate(controlNode, targetNode)
                        sumTwoQubitFidelity += math.log(1 - errorRate)
    
    return (numNonAllowedInteractions, circuitDepth, gateCount, swapCount, totalGateTime, sumSingleQubitFidelity, sumTwoQubitFidelity)

def main():
    
    # Create an empty report file:
    f = open(reportFilePath, "w").close()

    for qasmFileName in os.listdir(transformedCircuitsFolder): # For all the qasm files in the transformed circuits 
                                                               # folder:
        # Get path to the transformed quantum circuit:
        transformedQasmFile = transformedCircuitsFolder + "/" + qasmFileName
        # Get the path to the current original quantum circuit (it must have the same file name):
        originalQasmFile = originalCircuitsFolder + "/" + qasmFileName
        if( not os.path.exists(originalQasmFile) ):
            sys.exit("[Benchmark 2]: Error! cannot find the original quantum circuit.")
        print("[Benchmark 2]: Current transformed quantum circuit: " + transformedQasmFile)
        print("[Benchmark 2]: Current original quantum circuit: " + originalQasmFile)

        # Backend:
        backend = Backend.fromConfigurationFile(backendCfg)

        # Transformed circuit:
        circuitTransformed = Circuit(transformedQasmFile)
        transformed_numNonAllowedInteractions, transformed_circuitDepth, transformed_gateCount, transformed_swapCount,\
            transformed_totalGateTime, transformed_sumSingleQubitFidelity, transformed_sumTwoQubitFidelity = \
            computeMetrics(circuitTransformed, backend)

        # Original circuit:
        circuitOriginal = Circuit(originalQasmFile)
        original_numNonAllowedInteractions, original_circuitDepth, original_gateCount, original_swapCount, \
            original_totalGateTime, original_sumSingleQubitFidelity, original_sumTwoQubitFidelity = \
            computeMetrics(circuitOriginal, backend)

        # Compute the compression factors:
        CF_circuitDepth = original_circuitDepth/transformed_circuitDepth
        CF_gateCount = original_gateCount / transformed_gateCount

        # Compute the transformed circuit cost:
        transformed_circuitCost = -transformed_circuitDepth * math.log(K) - transformed_sumSingleQubitFidelity - \
                                   transformed_sumTwoQubitFidelity
        
        # Report:
        print()

        f = open(reportFilePath, "a")
        f.write( "name={0};numNonAllowedInteractions={1};circuitDepth={2};swapCount={3};executionTime={4};CF_circuitDepth={5};CF_gateCount={6};"\
                 "circuitCost={7}\n".format(qasmFileName, transformed_numNonAllowedInteractions, 
                 transformed_circuitDepth,transformed_swapCount, transformed_totalGateTime, CF_circuitDepth, 
                 CF_gateCount, transformed_circuitCost) 
                )
        f.close()

if __name__=="__main__":

    ## This script computes the main circuits metrics (number of swap gates, total execution time, ...) for 
    # all the circuits in argv[2] (transformed folder) while also computing the % of difference against the original
    # circuits (same name) in argv[1]. The report file is generated as argv[3]. argv[4] is the path to the backend .cfg
    # file and argv[5] tells if the RZ are implemented virtually or not.

    if( len(sys.argv)<7 ):
        sys.exit("[Benchmark 2]: error, usage: benchmark_2_metrics.py originalCircuitsFolder transformedCircuitsFolder reportFilePath backendCfgPath isRZvirtual.")

    # Folders:
    originalCircuitsFolder = sys.argv[1]
    transformedCircuitsFolder = sys.argv[2]
    reportFilePath = sys.argv[3]

    # Settings:
    backendCfg = sys.argv[4]
    isRZvirtual = sys.argv[5].lower()=="true"
    K = float( sys.argv[6] )

    main()