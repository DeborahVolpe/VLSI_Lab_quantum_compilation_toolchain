OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u3(pi,0,pi)  q[11];
u1(pi/2)  q[8];
u1(pi/2)  q[11];
u2(0,pi)  q[11];
cx q[11], q[8];
u2(0,pi)  q[11];
u2(0,pi)  q[8];
cx q[11], q[8];
u2(0,pi)  q[11];
measure q[11] -> c[0];
measure q[8] -> c[1];

