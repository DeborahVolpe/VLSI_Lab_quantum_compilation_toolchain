OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[2];
u3(pi,0,pi) q[2];
u2(0,pi) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u3(pi,0,pi) q[2];
u2(0,pi) q[2];
u2(0,pi) q[3];
u2(0,pi) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
u2(0,pi) q[3];
u2(0,pi) q[24];
u3(pi,0,pi) q[24];
u2(0,pi) q[25];
u2(0,pi) q[25];
cx q[24],q[25];
u3(pi,0,pi) q[24];
u2(0,pi) q[24];
u2(0,pi) q[25];
u2(0,pi) q[25];
u2(0,pi) q[25];
cx q[24],q[25];
u2(0,pi) q[24];
u2(0,pi) q[25];
u2(0,pi) q[25];
measure q[24] -> c[0];
measure q[25] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];