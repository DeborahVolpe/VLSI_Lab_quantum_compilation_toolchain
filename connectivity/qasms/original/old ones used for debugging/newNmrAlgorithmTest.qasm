OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

x q[0];

h q[1];
cx q[1],q[3];
y q[2];
h q[0];

measure q->c;
