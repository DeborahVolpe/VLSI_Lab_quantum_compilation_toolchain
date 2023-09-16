#!/bin/bash

# To be executed in ./benchmark directory!

for qasm_file in $(ls ./original_QCs/); do
	IFS='.' read -ra tmp <<<"$qasm_file"
    qasm_reference="./original_QCs/$qasm_file"
    qasm_finaloptimized="./finaloptimized_I/${tmp[0]}_I_finaloptimized.qasm"
    python3 benchmark_step3.py $qasm_reference $qasm_finaloptimized I true
done
