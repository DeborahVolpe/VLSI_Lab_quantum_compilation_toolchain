OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi)  q[1];
u2(0,pi)  q[7];
u1(pi/4)  q[1];
cx q[7], q[4];
u2(0,pi)  q[1];
u1(pi/2)  q[1];
cx q[1], q[4];
u2(0,pi)  q[1];
measure q[1] -> c[0];
measure q[4] -> c[1];
measure q[7] -> c[2];

