OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
u2(0,pi)  q[6];
u2(0,pi)  q[7];
u3(pi,0,pi)  q[1];
u2(0,pi)  q[4];
u3(pi,0,pi)  q[6];
u2(0,pi)  q[7];
cx q[1], q[4];
cx q[6], q[7];
u3(pi,0,pi)  q[1];
u2(0,pi)  q[4];
u3(pi,0,pi)  q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
u2(0,pi)  q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
cx q[1], q[4];
cx q[6], q[7];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
u2(0,pi)  q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
measure q[1] -> c[0];
measure q[4] -> c[1];
measure q[6] -> c[2];
measure q[7] -> c[3];