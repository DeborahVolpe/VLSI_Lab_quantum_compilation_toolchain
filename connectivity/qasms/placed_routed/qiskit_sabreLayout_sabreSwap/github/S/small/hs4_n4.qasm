OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[10];
u2(0,pi) q[10];
u2(0,pi) q[12];
u3(pi,0,pi) q[12];
cx q[12],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u3(pi,0,pi) q[12];
u2(0,pi) q[12];
cx q[12],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u2(0,pi) q[12];
u2(0,pi) q[19];
u3(pi,0,pi) q[19];
u2(0,pi) q[20];
u2(0,pi) q[20];
cx q[19],q[20];
u3(pi,0,pi) q[19];
u2(0,pi) q[19];
u2(0,pi) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
cx q[19],q[20];
u2(0,pi) q[19];
u2(0,pi) q[20];
u2(0,pi) q[20];
measure q[19] -> c[0];
measure q[20] -> c[1];
measure q[12] -> c[2];
measure q[10] -> c[3];
