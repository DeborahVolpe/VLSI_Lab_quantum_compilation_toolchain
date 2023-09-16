OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi)  q[11];
u2(0,pi)  q[5];
u1(pi/4)  q[11];
cx q[5], q[8];
u2(0,pi)  q[11];
u1(pi/2)  q[11];
cx q[11], q[8];
u2(0,pi)  q[11];
measure q[11] -> c[0];
measure q[8] -> c[1];
measure q[5] -> c[2];

