from qiskit import *
from qiskit.quantum_info import state_fidelity
import collections
import numpy as np
from itertools import product
import os
import xlsxwriter

import sys
sys.path.append("./layout_synthesis/")
from layout_synthesis.backend import SuperconductingBackend
from layout_synthesis.router import Router
from layout_synthesis.circuit import Circuit
from layout_synthesis.placer import Placer


def keep_common_keys(dict_in1, dict_in2):  
    common_keys = list(dict_in1.keys() & dict_in2.keys())
    dict_out1 = {}
    dict_out2 = {}
    for common_key in common_keys:
        dict_out1[common_key] = dict_in1[common_key]
        dict_out2[common_key] = dict_in2[common_key]
    dict_out1 = collections.OrderedDict(sorted(dict_out1.items()))
    dict_out2 = collections.OrderedDict(sorted(dict_out2.items()))

    sumMeasuresOutsideCommonSupportDict1 = 0
    for key in dict_in1.keys():
        if(not key in common_keys ):
            sumMeasuresOutsideCommonSupportDict1 += dict_in1[key]
    sumMeasuresOutsideCommonSupportDict2 = 0
    for key in dict_in2.keys():
        if(not key in common_keys ):
            sumMeasuresOutsideCommonSupportDict2 += dict_in2[key]

    return (dict_out1, dict_out2, sumMeasuresOutsideCommonSupportDict1, sumMeasuresOutsideCommonSupportDict2)
    
def compute_kl_divergence(dict_ref, dict_transpiled, N):
    kld = 0
    for eigenstate in dict_ref.keys():
        opt_i = dict_transpiled[eigenstate]
        ref_i = dict_ref[eigenstate]
        kld += opt_i/N * np.log2(opt_i/ref_i)
    return abs(kld)
    
def compute_fidelity(dict_ref, dict_transpiled, N):
    fid = 0
    for eigenstate in dict_ref.keys():
        opt_i = dict_transpiled[eigenstate]
        ref_i = dict_ref[eigenstate]
        fid += np.sqrt(opt_i * ref_i)/N
    return abs(fid)

# Simulators used for functional equivalence:
qasmSimulator = Aer.get_backend("qasm_simulator") # The "qasm_simulator" after execution returns a dictionary containing
                                                  # the obtained bitstreams(of the classical register) with their number 
                                                  # of occurence.
statevectorSimulator = Aer.get_backend("statevector_simulator") # The "statevector_simulator" after execution returns 
                                                                # the 2^n dimensions final quantum state vector of the 
                                                                # quantum circuit.

# Settings:
originalCircuitsFolder = "./qasm/manfredi_main_circuits_optimized"
numShots = 500000
backend = SuperconductingBackend.fromConfigurationFile("./backends/S/ibmq_toronto.cfg") # Backend.
computeFidelityAccurate = False # If True the statevector_simulator is used to compute the fidelity in an accurate way,
                                # otherwise it is not computed.
writeOutputFile = True # If True a .xlsx output file is created storing the results.
outputFilePath = "C:/Users/russo/Git-projects/quantum-compiler/connectivity/results_test_equivalence.xlsx"
delta = 1 # The number of measures(outside the common support) randomly added to one eigenstate measured.

# Initialize xlsxwriter:
if(writeOutputFile):
    # Create a workbook and add a worksheet.
    workbook = xlsxwriter.Workbook(outputFilePath)
    worksheet = workbook.add_worksheet()

count = 0 # Counts the current number of quantum circuits simulated.
for qasmFileName in os.listdir(originalCircuitsFolder): # For all the qasm files in the original circuits folder:

    print("Original quantum circuit: " + qasmFileName)
    # Write results into the output file:
    if(writeOutputFile):
        worksheet.write(count, 0, qasmFileName)

    # Get the file name + path of the original quantum circuits:
    qasmFile = originalCircuitsFolder + "/" + qasmFileName

    # Place and Route the original quantum circuit:
    # NOTE: Modify this part for checking the desired placing and routing algorithms.
    originalQc = Circuit(qasmFile)
    if(originalQc.nq > backend.n_nodes):
        print("Skipped because the circuit have an higher number of logical qubits in respect to the backend nodes")
        print("")
        continue # Skip the quantum circuits that have an higher number of qubits in respect to the backend nodes.

    originalQc.nq = backend.n_nodes # To allow the computation of the fidelity(not approximated).
    placer = Placer(backend)
    initialMapping = placer.getTrivialMapping(originalQc)
    placer.place( originalQc, initialMapping )
    router = Router(backend)
    routedQc, finalMapping = router.routeHardwareAwareRouting(originalQc, initialMapping, "lookahead", 
                                                              100, 0.5, 0, 0, 1)

    # Compute the KLD and fidelity(approximated) comparing the original(not placed) and the routed quantum circuits: 

    # Generete the original and routed Qiskit circuits:
    originalQcQiskit = QuantumCircuit.from_qasm_file( qasmFile ) 
    routedQcQiskit = QuantumCircuit.from_qasm_str( routedQc.DAGtoQASM() )

    # Start simulation on the qasm_simulator and retrive results:
    resOriginal = execute(originalQcQiskit, qasmSimulator, shots=numShots).result().get_counts()
    resRouted = execute(routedQcQiskit, qasmSimulator, shots=numShots).result().get_counts()

    # Order the dictionaries in ascending order of keys:
    resOriginal = collections.OrderedDict(sorted(resOriginal.items()))
    resRouted = collections.OrderedDict(sorted(resRouted.items()))

    # The KLD is computed on the common support to the two distributions: 
    (resOriginal, resRouted, sumMeasuresOutsideCommonSupportOriginal, sumMeasuresOutsideCommonSupportRouted) = \
                                                                                keep_common_keys(resOriginal, resRouted)

    # Distribute the non common measures following the Gianni's advice:
    while(sumMeasuresOutsideCommonSupportOriginal>0):
        randomEigenState = np.random.choice(resOriginal.keys()) # Uniform distribution.
        resOriginal[randomEigenState] += delta
        sumMeasuresOutsideCommonSupportOriginal -= delta
    while(sumMeasuresOutsideCommonSupportRouted>0):
        randomEigenState = np.random.choice(resRouted.keys()) # Uniform distribution.
        resRouted[randomEigenState] += delta
        sumMeasuresOutsideCommonSupportRouted -= delta

    # Print KLD and fidelity(approximated):
    kld = compute_kl_divergence(resOriginal, resRouted, numShots)
    print( "KLD = {0} - {1} - {2}".format(kld, sumMeasuresOutsideCommonSupportOriginal/numShots, 
                                              sumMeasuresOutsideCommonSupportRouted/numShots) )
    fidelity = compute_fidelity(resOriginal, resRouted, numShots)
    print("Fidelity(approximated) = {0}".format(fidelity))
    # Write results into the output file:
    if(writeOutputFile):
        worksheet.write(count, 1, kld)
        worksheet.write(count, 2, sumMeasuresOutsideCommonSupportOriginal/numShots)
        worksheet.write(count, 3, sumMeasuresOutsideCommonSupportRouted/numShots)
        worksheet.write(count, 4, fidelity)

    # Compute the fidelity in a more precise way using the statevector_simulator comparing the placed and the
    # routed quantum circuits:
    if(not computeFidelityAccurate):
        print("\n\n")
        count = count + 1
        continue # Skip to the next quantum circuit

    nq = routedQcQiskit.num_qubits

    # The fidelity is computed comparing the placed circuit and the routed circuit to ensure that the two quantum states
    # under comparison are of the same dimension:
    placedQcQiskit = QuantumCircuit.from_qasm_str( originalQc.DAGtoQASM() )
    
    # Remove the measures operations from the two quantum circuits:
    placedQcQiskit.remove_final_measurements()
    routedQcQiskit.remove_final_measurements()

    # Start the simulation on the statevector_simulator and retrive the final state vector of the two quantum circuits:
    outputStateOriginal = execute(placedQcQiskit, statevectorSimulator, shots=numShots).result()\
                                  .get_statevector(placedQcQiskit)
    outputStateRouted = execute(routedQcQiskit, statevectorSimulator, shots=numShots).result()\
                                  .get_statevector(routedQcQiskit)

    # It is not possible to use directly the output state of the routed circuit because the final mapping must be taken
    # into account in order to compute the fidelity:

    print("Original quantum circuit state:")
    print(outputStateOriginal)
    print("\nRouted quantum circuit state:")
    print(outputStateRouted)
    print("")

    # Generate all the possible basis states for a 'nq' qubits quantum circuit:
    b = ['0', '1']
    basisStates = [''.join(p) for p in product(b, repeat=nq)]

    # Get the output state of the routed circuit while considering the final mapping:
    swappedBasisStates = []
    for basisState in basisStates:
        swappedBasisState = [None]*nq
        i = nq-1
        for c in basisState:
            swappedBasisState[finalMapping[i].id] = c
            i=i-1
        swappedBasisState.reverse()
        swappedBasisStates.append( ''.join(swappedBasisState) )

    outputStateRoutedSwapped = []
    for basisState in swappedBasisStates:
        amplitudeIndex = int(basisState, 2)
        outputStateRoutedSwapped.append( outputStateRouted[amplitudeIndex] )

    # Convert the array to a numpy array:
    outputStateRoutedSwapped = np.array(outputStateRoutedSwapped)
    print("\nRouted quantum circuit state(swaps considered):")
    print(outputStateRoutedSwapped)

    # Compute the fidelty("closeness") between the two output quantum states:
    f = state_fidelity(outputStateOriginal, outputStateRoutedSwapped, validate=True) # Using Qiskit.
    f_mine = np.abs(outputStateRoutedSwapped.conj().dot(outputStateOriginal)) ** 2 # Using my implementation.
    print("Fidelity(accurate using qiskit): " + str(f))
    print("Fidelity(accurate my implementation): " + str(f_mine))
    print("\n\n")

    count = count + 1

# Finalize xlsxwriter:
if(writeOutputFile):
    workbook.close()
