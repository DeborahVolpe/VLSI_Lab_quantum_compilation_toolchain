OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
swap q[15],q[18];
u2(0,pi) q[24];
cx q[24],q[23];
cx q[23],q[21];
cx q[21],q[18];
measure q[24] -> c[0];
measure q[23] -> c[1];
measure q[21] -> c[2];
measure q[18] -> c[3];
