OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[2];

// h q[1];
ry(pi/2) q[1];
rx(pi) q[1];

// x q[2];
rx(pi) q[2];

cz q[1],q[2];

// h q[1];
ry(pi/2) q[1];
rx(pi) q[1];

// x q[2];
rx(pi) q[2];

measure q[1] -> c[0];
measure q[2] -> c[1];
