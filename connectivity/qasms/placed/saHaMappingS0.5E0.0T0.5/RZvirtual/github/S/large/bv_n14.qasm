OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[13];
u2(0,pi)  q[14];
u2(0,pi)  q[7];
u2(0,pi)  q[18];
u2(0,pi)  q[6];
u2(0,pi)  q[15];
u2(0,pi)  q[19];
u2(0,pi)  q[10];
u2(0,pi)  q[4];
u2(0,pi)  q[13];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[21];
u2(0,pi)  q[16];
u3(pi,0,pi)  q[12];
u2(0,pi)  q[12];
cx q[14], q[12];
u2(0,pi)  q[14];
cx q[7], q[12];
u2(0,pi)  q[7];
cx q[18], q[12];
u2(0,pi)  q[18];
cx q[6], q[12];
u2(0,pi)  q[6];
cx q[15], q[12];
u2(0,pi)  q[15];
cx q[19], q[12];
u2(0,pi)  q[19];
cx q[10], q[12];
u2(0,pi)  q[10];
cx q[4], q[12];
u2(0,pi)  q[4];
cx q[13], q[12];
u2(0,pi)  q[13];
cx q[1], q[12];
cx q[0], q[12];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
cx q[21], q[12];
u2(0,pi)  q[21];
cx q[16], q[12];
u2(0,pi)  q[16];
measure q[14] -> c[0];
measure q[7] -> c[1];
measure q[18] -> c[2];
measure q[6] -> c[3];
measure q[15] -> c[4];
measure q[19] -> c[5];
measure q[10] -> c[6];
measure q[4] -> c[7];
measure q[13] -> c[8];
measure q[1] -> c[9];
measure q[0] -> c[10];
measure q[21] -> c[11];
measure q[16] -> c[12];
