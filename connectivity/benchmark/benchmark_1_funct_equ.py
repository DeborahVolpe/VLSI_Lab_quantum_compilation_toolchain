from qiskit import *
from qiskit.compiler import transpile
import sys
import numpy as np
import collections
import os
from qiskit.quantum_info.analysis import hellinger_fidelity

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
            sys.exit("[Benchmark 1]: Error! cannot find the original quantum circuit.")
        print("[Benchmark 1]: Current transformed quantum circuit: " + transformedQasmFile)
        print("[Benchmark 1]: Current original quantum circuit: " + originalQasmFile)

        # Contruct the QuantumCircuit from the originalQasmFile and the transformedQasmFile:
        originalQc = QuantumCircuit.from_qasm_file(originalQasmFile)
        transformedQc = QuantumCircuit.from_qasm_file(transformedQasmFile)

        #originalQc.draw("mpl")
        #transformedQc.draw("mpl")
        #mpl.show(block=True) # In this way the script loops until all the figures are closed

        # Start simulation on the qasm_simulator and retrive results:
        qasmSimulator = Aer.get_backend("qasm_simulator") # The "qasm_simulator" after execution returns a dictionary 
                                                          # containing the obtained bitstreams(of the classical 
                                                          # register) with their number of occurence.
        resOriginal = execute(originalQc, qasmSimulator, shots=numShots).result().get_counts()
        resTransformed = execute(transformedQc, qasmSimulator, shots=numShots).result().get_counts()
        fidelityHellinger = hellinger_fidelity(resOriginal, resTransformed)

        # Order the dictionaries in ascending order of keys:
        resOriginal = collections.OrderedDict(sorted(resOriginal.items()))
        resTransformed = collections.OrderedDict(sorted(resTransformed.items()))

        # The KLD is computed on the common support to the two distributions: 
        (resOriginal, resTransformed, sumMeasuresOutsideCommonSupportOriginal, sumMeasuresOutsideCommonSupportRouted) =\
                                                                           keep_common_keys(resOriginal, resTransformed)
        
        if( len(resOriginal)>0 and len(resTransformed)>0 ):
            # Distribute the non common measures following the Gianni's advice:
            tmp1 = sumMeasuresOutsideCommonSupportOriginal
            while(tmp1>0):
                randomEigenState = np.random.choice( list(resOriginal.keys()) ) # Uniform distribution.
                resOriginal[randomEigenState] += delta
                tmp1 -= delta
            tmp2 = sumMeasuresOutsideCommonSupportRouted
            while(tmp2>0):
                randomEigenState = np.random.choice( list(resTransformed.keys()) ) # Uniform distribution.
                resTransformed[randomEigenState] += delta
                tmp2 -= delta
        else: # No common measured classical state:
            kld = 1.0 # Max divergence
            fidelity = 0.0 # Min fidelity

        # Print KLD, fidelity (approximated) and Hellinger fidelity on console and on the report file:
        kld = compute_kl_divergence(resOriginal, resTransformed, numShots)
        print( "[Benchmark 1]: KLD = {0} / {1} / {2}".format(kld, sumMeasuresOutsideCommonSupportOriginal/numShots, 
                                                sumMeasuresOutsideCommonSupportRouted/numShots) )
        if( (sumMeasuresOutsideCommonSupportOriginal/numShots) < 0.05 and
            (sumMeasuresOutsideCommonSupportRouted/numShots) < 0.05):
            fidelity = compute_fidelity(resOriginal, resTransformed, numShots)
        else:
            fidelity = 0.0 # Min fidelity
        print("[Benchmark 1]: Fidelity (approximated) = {0}".format(fidelity))
        print("[Benchmark 1]: Hellinger fidelity = {0}\n".format(fidelityHellinger))

        f = open(reportFilePath, "a")
        f.write("name={0};KLD={1}/{2}/{3};fidelity={4};fidelityHellinger={5}\n".format(qasmFileName, kld, 
            sumMeasuresOutsideCommonSupportOriginal/numShots, sumMeasuresOutsideCommonSupportRouted/numShots, fidelity,
            fidelityHellinger))
        f.close()

if __name__=="__main__":

    ## This script performs the functional equivalence for all the circuits in argv[2] (transformed folder) against
    ## the original circuits (same name) in argv[1]. The report file is generated as argv[3].

    if( len(sys.argv)<4 ):
        sys.exit("[Benchmark 1]: error, usage: benchmark_1_funct_equ.py originalCircuitsFolder transformedCircuitsFolder reportFilePath.")

    # Folders:
    originalCircuitsFolder = sys.argv[1]
    transformedCircuitsFolder = sys.argv[2]
    reportFilePath = sys.argv[3]

    ## Settings:
    numShots = 20000
    delta = 1 # The number of measures (outside the common support) randomly added to one eigenstate measured.
   
    main()