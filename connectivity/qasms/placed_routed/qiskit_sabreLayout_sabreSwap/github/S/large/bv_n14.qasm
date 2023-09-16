OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[13];
u2(0,pi) q[3];
u2(0,pi) q[4];
u2(0,pi) q[5];
u3(pi,0,pi) q[7];
u2(0,pi) q[7];
u2(0,pi) q[8];
u2(0,pi) q[10];
cx q[10],q[7];
u2(0,pi) q[10];
cx q[4],q[7];
u2(0,pi) q[4];
u2(0,pi) q[11];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[14];
u2(0,pi) q[15];
u2(0,pi) q[16];
u2(0,pi) q[17];
u2(0,pi) q[18];
measure q[10] -> c[0];
swap q[7],q[10];
swap q[10],q[12];
cx q[15],q[12];
cx q[10],q[12];
u2(0,pi) q[10];
u2(0,pi) q[15];
measure q[4] -> c[1];
measure q[15] -> c[2];
swap q[15],q[18];
cx q[15],q[12];
cx q[13],q[12];
u2(0,pi) q[13];
u2(0,pi) q[15];
swap q[18],q[17];
measure q[10] -> c[3];
measure q[15] -> c[4];
swap q[18],q[15];
cx q[15],q[12];
u2(0,pi) q[15];
measure q[13] -> c[5];
swap q[12],q[13];
cx q[14],q[13];
u2(0,pi) q[14];
measure q[15] -> c[6];
measure q[14] -> c[7];
swap q[13],q[14];
cx q[11],q[14];
u2(0,pi) q[11];
cx q[16],q[14];
u2(0,pi) q[16];
measure q[11] -> c[8];
swap q[14],q[11];
swap q[11],q[8];
cx q[5],q[8];
cx q[11],q[8];
u2(0,pi) q[11];
u2(0,pi) q[5];
measure q[16] -> c[9];
measure q[5] -> c[10];
swap q[5],q[8];
cx q[3],q[5];
u2(0,pi) q[3];
measure q[11] -> c[11];
measure q[3] -> c[12];