OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[4];
cx q[4],q[11];
cx q[11],q[15];
measure q[7] -> c[0];
measure q[4] -> c[1];
measure q[11] -> c[2];
measure q[15] -> c[3];