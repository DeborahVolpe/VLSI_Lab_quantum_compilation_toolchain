OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[13];
u2(0,pi) q[5];
u2(0,pi) q[6];
u3(pi,0,pi) q[7];
u2(0,pi) q[7];
cx q[6],q[7];
u2(0,pi) q[6];
u2(0,pi) q[8];
u2(0,pi) q[9];
u2(0,pi) q[10];
cx q[10],q[7];
swap q[7],q[10];
u2(0,pi) q[7];
u2(0,pi) q[11];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[14];
swap q[11],q[14];
swap q[8],q[11];
swap q[5],q[8];
u2(0,pi) q[15];
swap q[12],q[15];
cx q[12],q[10];
swap q[12],q[13];
cx q[12],q[10];
swap q[10],q[12];
u2(0,pi) q[10];
u2(0,pi) q[13];
cx q[15],q[12];
u2(0,pi) q[15];
u2(0,pi) q[16];
u2(0,pi) q[19];
u2(0,pi) q[22];
measure q[6] -> c[0];
measure q[7] -> c[1];
measure q[13] -> c[2];
swap q[12],q[13];
cx q[14],q[13];
swap q[13],q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u2(0,pi) q[13];
cx q[16],q[14];
swap q[11],q[14];
u2(0,pi) q[16];
swap q[16],q[19];
cx q[8],q[11];
u2(0,pi) q[8];
swap q[8],q[9];
measure q[10] -> c[3];
measure q[15] -> c[4];
measure q[13] -> c[5];
measure q[14] -> c[6];
swap q[11],q[14];
cx q[16],q[14];
swap q[11],q[14];
u2(0,pi) q[16];
cx q[8],q[11];
swap q[11],q[14];
swap q[14],q[16];
u2(0,pi) q[8];
swap q[5],q[8];
swap q[8],q[11];
measure q[19] -> c[7];
swap q[19],q[22];
cx q[19],q[16];
u2(0,pi) q[19];
measure q[9] -> c[8];
measure q[14] -> c[9];
swap q[14],q[16];
cx q[11],q[14];
u2(0,pi) q[11];
measure q[5] -> c[10];
measure q[19] -> c[11];
measure q[11] -> c[12];
