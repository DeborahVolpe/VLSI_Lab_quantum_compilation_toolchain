// Quantum code for the specified SAT problem.

include "qelib1.inc";

// Declare all needed (qu)bits
qreg q[11];
creg c[4];

// Prepare uniform superposition
h q[1];
h q[2];
h q[3];
h q[4];

// Marking with oracle evaluation
x q[5];
x q[6];
x q[7];
x q[8];
x q[4];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[5];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[2];
x q[3];
x q[4];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[6];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[1];
x q[2];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[7];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[1];
x q[2];
ccx q[2], q[3], q[8];
x q[2];
x q[3];
ccx q[5], q[6], q[9];
ccx q[7], q[9], q[10];
ccx q[8], q[10], q[0];
ccx q[7], q[9], q[10];
ccx q[5], q[6], q[9];
x q[2];
x q[3];
ccx q[2], q[3], q[8];
x q[1];
x q[2];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[7];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[1];
x q[2];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[6];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[2];
x q[3];
x q[4];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[5];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
x q[4];

// Amplitude amplification
h q[1];
h q[2];
h q[3];
h q[4];
x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
h q[0];
ccx q[1], q[2], q[9];
ccx q[3], q[9], q[10];
ccx q[4], q[10], q[0];
ccx q[3], q[9], q[10];
ccx q[1], q[2], q[9];
h q[0];
x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];

// Measurements
measure q[1] -> c[0];
measure q[2] -> c[1];
measure q[3] -> c[2];
measure q[4] -> c[3];