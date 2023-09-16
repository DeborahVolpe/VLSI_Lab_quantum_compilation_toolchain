OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[4];
u2(0.0*pi,1.0*pi) q[22];
cx q[22],q[25];
measure q[22] -> c[0];
cx q[25],q[24];
measure q[25] -> c[1];
cx q[24],q[23];
measure q[24] -> c[2];
measure q[23] -> c[3];
