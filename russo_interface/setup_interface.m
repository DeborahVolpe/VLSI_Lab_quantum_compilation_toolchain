% Simulation setup, required for properly constructing objects involved in
% simulation

amplitudeFixed = true; % when asserted, gate pulses have fixed amplitude and variable duration
virtualZ_flag = true; % when asserted, virtual-Z gates are employed
save_workspace = true; % when asserted simulation workspace is saved
integrationHamiltonianFlag = false; % when asserted, NMR Quantum Computers Hamiltonians are integrated
debug_mode = false; % when asserted, it shows the eigenstates probability distribution at each step (quantum gate) of simulation
writeMeasurementResultsOnFile = true; % when asserted, it shows the final eigenstates probability distribution on a text file