OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

x q[0];

h q[1];
cx q[2],q[0];
y q[2];
h q[0];

measure q->c;
