OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[24];
cx q[24],q[25];
cx q[25],q[26];
swap q[25],q[26];
cx q[25],q[22];
measure q[24] -> c[0];
measure q[26] -> c[1];
measure q[25] -> c[2];
measure q[22] -> c[3];
