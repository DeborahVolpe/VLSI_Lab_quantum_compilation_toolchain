OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u3(pi,0,pi)  q[7];
cx q[10], q[4];
u3(pi,0,pi)  q[3];
cx q[2], q[4];
cx q[6], q[4];
cx q[7], q[4];
cx q[3], q[4];
measure q[4] -> c[0];
measure q[2] -> c[1];
measure q[7] -> c[2];
measure q[10] -> c[3];
measure q[3] -> c[4];
measure q[6] -> c[5];
measure q[9] -> c[6];
measure q[0] -> c[7];
measure q[12] -> c[8];
measure q[18] -> c[9];
measure q[5] -> c[10];
measure q[8] -> c[11];
measure q[13] -> c[12];
measure q[1] -> c[13];
measure q[11] -> c[14];
measure q[14] -> c[15];
