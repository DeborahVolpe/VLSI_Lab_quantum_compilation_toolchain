OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi) q[24];
u1(pi/4) q[24];
u2(0,pi) q[24];
u1(pi/2) q[24];
u2(0,pi) q[26];
cx q[26],q[25];
cx q[24],q[25];
u2(0,pi) q[24];
measure q[24] -> c[0];
measure q[25] -> c[1];
measure q[26] -> c[2];
