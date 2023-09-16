OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u1(pi/16) q[23];
u3(pi,0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
u1(-pi/4) q[24];
cx q[25],q[24];
u1(pi/4) q[24];
u2(0,pi) q[25];
u3(pi,0,pi) q[26];
u1(pi/8) q[26];
swap q[25],q[26];
cx q[25],q[24];
u1(-pi/8) q[24];
cx q[25],q[24];
u1(pi/8) q[24];
cx q[23],q[24];
u1(-pi/16) q[24];
cx q[23],q[24];
u1(pi/8) q[23];
u1(pi/16) q[24];
swap q[23],q[24];
u1(pi/4) q[25];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u1(pi/4) q[26];
swap q[25],q[26];
cx q[24],q[25];
u1(-pi/8) q[25];
cx q[24],q[25];
u1(pi/4) q[24];
u1(pi/8) q[25];
swap q[24],q[25];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u1(pi/4) q[26];
measure q[23] -> c[0];
measure q[24] -> c[1];
measure q[26] -> c[2];
measure q[25] -> c[3];