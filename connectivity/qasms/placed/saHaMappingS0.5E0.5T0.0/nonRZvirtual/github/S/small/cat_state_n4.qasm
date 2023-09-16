OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi)  q[0];
cx q[0], q[1];
cx q[1], q[4];
cx q[4], q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[4] -> c[2];
measure q[7] -> c[3];

