OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[2];
u2(0,pi) q[6];
u2(0,pi) q[10];
u2(0,pi) q[15];
measure q[15] -> c[0];
measure q[2] -> c[1];
measure q[10] -> c[2];
measure q[6] -> c[3];
