OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
swap q[1],q[2];
u2(0,pi) q[4];
cx q[4],q[1];
cx q[1],q[2];
measure q[4] -> c[0];
measure q[1] -> c[1];
swap q[2],q[1];
cx q[1],q[0];
measure q[1] -> c[2];
measure q[0] -> c[3];
