OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u2(0,pi) q[1];
u3(pi,0,pi) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
measure q[1] -> c[0];
measure q[2] -> c[1];
