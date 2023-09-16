OPENQASM 2.0;
include "qelib1.inc";

qreg q[8];
creg c[4];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[4];
measure q[1] -> c[0];
cx q[4],q[7];
measure q[4] -> c[1];
cx q[7],q[6];
measure q[7] -> c[2];
measure q[6] -> c[3];
