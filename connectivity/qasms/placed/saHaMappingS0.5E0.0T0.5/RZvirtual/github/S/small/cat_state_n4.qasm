OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi)  q[13];
cx q[13], q[14];
cx q[14], q[16];
cx q[16], q[19];
measure q[13] -> c[0];
measure q[14] -> c[1];
measure q[16] -> c[2];
measure q[19] -> c[3];

