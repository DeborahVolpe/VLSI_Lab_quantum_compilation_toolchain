OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[4];
u2(0,pi) q[14];
u2(0,pi) q[16];
u2(0,pi) q[23];
measure q[14] -> c[0];
measure q[23] -> c[1];
measure q[4] -> c[2];
measure q[16] -> c[3];
