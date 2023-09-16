from qiskit import *
import os
import numpy as np
from itertools import combinations

''' Creation of the QASM file describing the circuit generated in Qiskit '''
def createqasmfile(qc, technology, optimizationlevel=2, qasmfilename='test.qasm', specificGatesMolecularTechnologies=False): 

    parametersFileName = technology+"_params" # non serve il .m

    if technology in ['cr7ni', 'vanadyl']:
        if technology == 'cr7ni':
            couplingMap = [[0,1],[1,0],[1,2],[2,1]]
        else:
            couplingMap = [[0,1],[1,0]]
        if specificGatesMolecularTechnologies == True:
            qc_transpiled = transpile(qc, basis_gates=['rx','ry','rz','cp'], coupling_map = couplingMap, optimization_level=optimizationlevel)
        else:
            qc_transpiled = transpile(qc, basis_gates=['rx', 'ry', 'rz', 'cz'], coupling_map = couplingMap, optimization_level=optimizationlevel)
        qc_transpiled.qasm(filename=qasmfilename)
    
    elif technology in ['crotonic_acid', 'diethyl_fluoromanolate', 'phosphonate', 'cr7mn', 'cytosine', 'dummy_quantum_dot']:
        if specificGatesMolecularTechnologies == True:
            qc_transpiled = transpile(qc, basis_gates=['rx','ry','rz','rzz'], optimization_level=optimizationlevel)
        else:
            qc_transpiled = transpile(qc, basis_gates=['rx', 'ry', 'rz', 'cz'], optimization_level=optimizationlevel)
        qc_transpiled.qasm(filename=qasmfilename)
        
    elif technology in ['quantumcomputingtechnology']:
        qc_transpiled = transpile(qc, basis_gates=['rx', 'ry', 'rz', 'cz'], optimization_level=optimizationlevel)

    elif technology in ['iontrap']:
        qc_transpiled = transpile(qc, basis_gates=['rx', 'ry', 'rxx'], optimization_level=2)
        qc_transpiled.qasm(filename=qasmfilename)

    else:
        pass

    return parametersFileName

def writetbfile(technology_filename, qasm_filename, qc=None):   
    f = open('tb_interface.m', 'w')
    f.write("clear\nclose all\nclc\n\nsetup_interface\n")    
    
    #if technology_filename.startswith(("crotonic_acid", "cytosine", "phosphonate", "diethyl_fluoromanolate")):
    if technology_filename.startswith(("crotonic_acid", "cytosine")):
        f.write("[dev, connectivity_dev] = %s(amplitudeFixed, integrationHamiltonianFlag);\n" %technology_filename)
    elif technology_filename.startswith("quantumcomputingtechnology"):
        f.write("[dev, connectivity_dev] = {0}({1}, amplitudeFixed);\n" .format(technology_filename, qc.num_qubits))
    elif technology_filename.startswith("dummy_quantum_dot"):
        f.write("[dev, connectivity_dev] = %s();\n" %technology_filename)
    else:
        f.write("[dev, connectivity_dev] = %s(amplitudeFixed);\n" %technology_filename)
        
    f.write("qs = QuantumComputingSystem(dev);\nnetlist = netlistgenMolecules(qs, virtualZ_flag, connectivity_dev, '%s', 'netlist_dev.m', writeMeasurementResultsOnFile, debug_mode);" % qasm_filename)
    f.write("\ntic\nrun(netlist)\nelapsed_cpu_time = toc;\n")
    f.write("\nrho=qs.GetDensityMatrix;\n")
    f.write("simulationTime = regexprep(regexprep(string(datetime), ' ', '_'), ':', '--');\n")
    f.write("if save_workspace == true\n\tfilename = strcat('./results/workspaces/workspace_', qs.device.name,'_', simulationTime,'.mat');\n\tsave(filename);\nend\n")
    f.write("fileLogName = strcat('./results/log_files/',qs.device.name,'_', simulationTime,'.log');\n")
    f.write("flog = fopen(fileLogName, 'w');\n")
    f.write("fprintf(flog, 'Probability distribution associated with density matrix is \\n');\n")
    f.write("fprintf(flog, '%f ', qs.GetProbabilityDistributionDensityMatrix);\n")
    f.write("fprintf(flog, '\\nFidelity is \\n');\n")
    f.write("fprintf(flog, '%f ', qs.GetFidelity);\n")
    f.write("fprintf(flog, '\\nQuantum circuit execution time is equal to\\n');\n")
    f.write("fprintf(flog, '%f us', qs.GetTotalExecutionDelay);\n")
    f.write("fclose(flog);\n")
    f.close()
    
def executecircuit():
	command_MATLAB = "\"run tb_interface.m, exit\""
	os.system('matlab -batch %s' % command_MATLAB)

def getresults(filename='probability_distribution_last_sim.txt'):
	d = {}
	with open(filename) as f:
	    count = 0
	    for line in f:
	        probabilities = line.split()
	        for prob in probabilities:
	            tmp = '{0:0%db}' % int(np.log2(len(probabilities)))
	            d[tmp.format(count)] = prob
	            count+=1
	return d
