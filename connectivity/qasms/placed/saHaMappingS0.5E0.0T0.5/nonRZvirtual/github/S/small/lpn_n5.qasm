OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[5];
u2(0,pi)  q[14];
u2(0,pi)  q[19];
u2(0,pi)  q[12];
u2(0,pi)  q[16];
u2(0,pi)  q[19];
cx q[12], q[13];
u2(0,pi)  q[16];
cx q[14], q[13];
u2(0,pi)  q[12];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
measure q[14] -> c[0];
measure q[19] -> c[1];
measure q[13] -> c[2];
measure q[12] -> c[3];
measure q[16] -> c[4];
