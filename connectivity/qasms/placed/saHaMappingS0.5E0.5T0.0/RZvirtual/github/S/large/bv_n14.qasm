OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[13];
u2(0,pi)  q[9];
u2(0,pi)  q[14];
u2(0,pi)  q[8];
u2(0,pi)  q[13];
u2(0,pi)  q[5];
u2(0,pi)  q[10];
u2(0,pi)  q[3];
u2(0,pi)  q[6];
u2(0,pi)  q[11];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
u3(pi,0,pi)  q[2];
u2(0,pi)  q[2];
cx q[9], q[2];
u2(0,pi)  q[9];
cx q[14], q[2];
u2(0,pi)  q[14];
cx q[8], q[2];
u2(0,pi)  q[8];
cx q[13], q[2];
u2(0,pi)  q[13];
cx q[5], q[2];
u2(0,pi)  q[5];
cx q[10], q[2];
u2(0,pi)  q[10];
cx q[3], q[2];
u2(0,pi)  q[3];
cx q[6], q[2];
u2(0,pi)  q[6];
cx q[11], q[2];
u2(0,pi)  q[11];
cx q[1], q[2];
cx q[0], q[2];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
cx q[4], q[2];
u2(0,pi)  q[4];
cx q[7], q[2];
u2(0,pi)  q[7];
measure q[9] -> c[0];
measure q[14] -> c[1];
measure q[8] -> c[2];
measure q[13] -> c[3];
measure q[5] -> c[4];
measure q[10] -> c[5];
measure q[3] -> c[6];
measure q[6] -> c[7];
measure q[11] -> c[8];
measure q[1] -> c[9];
measure q[0] -> c[10];
measure q[4] -> c[11];
measure q[7] -> c[12];

