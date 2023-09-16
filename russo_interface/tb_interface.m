clear
close all
clc

setup_interface
[dev, connectivity_dev] = crotonic_acid_params(amplitudeFixed, integrationHamiltonianFlag);
qs = QuantumComputingSystem(dev);
netlist = netlistgenMolecules(qs, virtualZ_flag, connectivity_dev, './qasms/test_qasm.qasm', 'netlist_dev.m', writeMeasurementResultsOnFile, debug_mode);
tic
run(netlist)
elapsed_cpu_time = toc;

rho=qs.GetDensityMatrix;
simulationTime = regexprep(regexprep(string(datetime), ' ', '_'), ':', '--');
if save_workspace == true
	filename = strcat('./results/workspaces/workspace_', qs.device.name,'_', simulationTime,'.mat');
	save(filename);
end
fileLogName = strcat('./results/log_files/',qs.device.name,'_', simulationTime,'.log');
flog = fopen(fileLogName, 'w');
fprintf(flog, 'Probability distribution associated with density matrix is \n');
fprintf(flog, '%f ', qs.GetProbabilityDistributionDensityMatrix);
fprintf(flog, '\nFidelity is \n');
fprintf(flog, '%f ', qs.GetFidelity);
fprintf(flog, '\nQuantum circuit execution time is equal to\n');
fprintf(flog, '%f us', qs.GetTotalExecutionDelay);
fclose(flog);
