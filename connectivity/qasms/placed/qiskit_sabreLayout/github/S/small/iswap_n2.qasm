OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u3(pi,0,pi) q[5];
u1(pi/2) q[5];
u2(0,pi) q[5];
u1(pi/2) q[8];
cx q[5],q[8];
u2(0,pi) q[5];
u2(0,pi) q[8];
cx q[5],q[8];
u2(0,pi) q[5];
measure q[5] -> c[0];
measure q[8] -> c[1];