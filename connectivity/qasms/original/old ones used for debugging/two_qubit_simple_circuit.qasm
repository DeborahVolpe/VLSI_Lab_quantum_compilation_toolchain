OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0];
x q[1];
cz q[0], q[1];
cx q[0], q[2];
y q[2];

measure q[2] -> c[2];

