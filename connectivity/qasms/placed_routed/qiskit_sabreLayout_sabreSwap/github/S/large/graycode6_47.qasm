OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
cx q[12],q[13];
cx q[15],q[12];
measure q[13] -> c[0];
measure q[12] -> c[1];
swap q[12],q[15];
cx q[10],q[12];
measure q[12] -> c[2];
measure q[19] -> c[6];
measure q[18] -> c[7];
measure q[20] -> c[8];
measure q[22] -> c[9];
measure q[11] -> c[10];
measure q[16] -> c[11];
measure q[23] -> c[12];
measure q[0] -> c[13];
measure q[7] -> c[14];
swap q[7],q[10];
swap q[4],q[7];
cx q[1],q[4];
cx q[2],q[1];
measure q[1] -> c[4];
measure q[2] -> c[5];
measure q[4] -> c[3];
measure q[5] -> c[15];