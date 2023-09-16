#!/bin/bash

# To be executed in ./benchmark directory!

for qasm_file in $(ls ./original_QCs/); do
	IFS='.' read -ra tmp <<<"$qasm_file"
    qasm_reference="./original_QCs/$qasm_file"
	qasm_optimized="./optimized_QCs/${tmp[0]}_optimized.qasm"
    qasm_techoptimized="./techoptimized_I/${tmp[0]}_I_techoptimized.qasm"
    python3 benchmark_step2.py $qasm_reference $qasm_optimized $qasm_techoptimized I true
done
