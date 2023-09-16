OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u3(pi,0,pi)  q[24];
u1(pi/2)  q[25];
u1(pi/2)  q[24];
u2(0,pi)  q[24];
cx q[24], q[25];
u2(0,pi)  q[24];
u2(0,pi)  q[25];
cx q[24], q[25];
u2(0,pi)  q[24];
measure q[24] -> c[0];
measure q[25] -> c[1];

