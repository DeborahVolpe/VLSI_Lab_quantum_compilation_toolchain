OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[5];
u2(0,pi) q[21];
u2(0,pi) q[22];
u2(0,pi) q[24];
u2(0,pi) q[25];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
cx q[21],q[26];
u1(-pi/2) q[21];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
cx q[21],q[26];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[24],q[26];
u2(0,pi) q[24];
u2(0,pi) q[26];
cx q[24],q[26];
u2(0,pi) q[24];
u2(0,pi) q[26];
cx q[24],q[26];
cx q[22],q[26];
cx q[24],q[26];
u2(0,pi) q[24];
u2(0,pi) q[26];
cx q[24],q[26];
u2(0,pi) q[24];
u2(0,pi) q[26];
cx q[24],q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
cx q[22],q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[25],q[26];
cx q[22],q[26];
u2(0,pi) q[22];
cx q[24],q[26];
cx q[22],q[26];
u2(0,pi) q[22];
u2(0,pi) q[26];
cx q[22],q[26];
u2(0,pi) q[22];
u2(0,pi) q[26];
cx q[22],q[26];
cx q[24],q[26];
cx q[22],q[26];
u2(0,pi) q[22];
u2(0,pi) q[26];
cx q[22],q[26];
u2(0,pi) q[22];
u2(0,pi) q[26];
cx q[22],q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[22];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[21],q[26];
cx q[24],q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[21],q[26];
cx q[25],q[26];
u2(0,pi) q[26];
cx q[25],q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[25];
cx q[24],q[25];
u2(0,pi) q[25];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[21],q[26];
cx q[25],q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u1(-pi/2) q[25];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
cx q[21],q[26];
u2(0,pi) q[21];
u2(0,pi) q[26];
measure q[24] -> c[0];
measure q[25] -> c[1];
measure q[26] -> c[2];
measure q[22] -> c[3];
measure q[21] -> c[4];
