OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[2];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[13],q[11];
ry(pi/2) q[13];
rx(pi) q[13];
measure q[13] -> c[0];
measure q[11] -> c[1];
