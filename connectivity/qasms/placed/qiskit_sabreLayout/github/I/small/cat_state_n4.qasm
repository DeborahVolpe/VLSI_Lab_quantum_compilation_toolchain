OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[11];
cx q[11],q[10];
cx q[10],q[8];
measure q[5] -> c[0];
measure q[11] -> c[1];
measure q[10] -> c[2];
measure q[8] -> c[3];
