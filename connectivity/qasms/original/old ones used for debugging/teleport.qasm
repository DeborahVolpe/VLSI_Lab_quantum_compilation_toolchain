OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];

x q[0];

h q[1];
cx q[1],q[2];
cx q[0],q[1];
cx q[1],q[2];
cx q[2],q[0];
cx q[0],q[4];
h q[0];

measure q->c;