OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
u2(0.0*pi,1.0*pi) q[0];
cx q[0],q[1];
measure q[0] -> c[0];
cx q[1],q[2];
measure q[1] -> c[1];
cx q[2],q[3];
measure q[2] -> c[2];
measure q[3] -> c[3];
