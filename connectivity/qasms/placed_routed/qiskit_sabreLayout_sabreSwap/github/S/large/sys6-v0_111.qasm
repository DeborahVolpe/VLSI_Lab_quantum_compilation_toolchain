OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[7];
u1(pi/4) q[10];
cx q[10],q[7];
u1(pi/4) q[11];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
cx q[10],q[7];
u1(-pi/4) q[10];
u1(pi/4) q[12];
u1(-pi/4) q[7];
swap q[10],q[7];
cx q[12],q[10];
swap q[7],q[10];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[7],q[10];
cx q[10],q[7];
u1(pi/4) q[7];
u1(pi/4) q[13];
u2(0,pi) q[14];
u1(pi/4) q[14];
u1(pi/4) q[15];
cx q[12],q[15];
swap q[12],q[15];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[18];
u1(pi/4) q[18];
cx q[18],q[15];
u1(-pi/4) q[15];
swap q[15],q[18];
cx q[12],q[15];
u1(pi/4) q[15];
swap q[12],q[15];
cx q[15],q[18];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
swap q[18],q[15];
cx q[12],q[15];
swap q[15],q[18];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
swap q[13],q[12];
cx q[14],q[13];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[12];
u1(pi/4) q[14];
cx q[14],q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[12],q[13];
u2(0,pi) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[11];
cx q[16],q[14];
u1(-pi/4) q[14];
swap q[11],q[14];
cx q[14],q[16];
cx q[14],q[11];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[14],q[11];
u1(pi/4) q[16];
cx q[16],q[14];
swap q[11],q[14];
cx q[14],q[16];
cx q[11],q[14];
u2(0,pi) q[11];
u1(pi/4) q[11];
u1(pi/4) q[14];
u2(0,pi) q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[18],q[15];
u1(pi/4) q[15];
swap q[15],q[12];
u2(0,pi) q[18];
u1(pi/4) q[18];
swap q[18],q[15];
u1(pi/4) q[19];
swap q[16],q[19];
measure q[10] -> c[0];
swap q[10],q[7];
cx q[12],q[10];
cx q[15],q[12];
u1(-pi/4) q[12];
swap q[15],q[12];
cx q[10],q[12];
u1(pi/4) q[12];
swap q[12],q[15];
cx q[10],q[12];
u1(-pi/4) q[10];
u1(-pi/4) q[12];
cx q[15],q[12];
swap q[15],q[12];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
swap q[12],q[15];
cx q[12],q[10];
cx q[10],q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[18],q[15];
u1(-pi/4) q[15];
swap q[15],q[18];
cx q[12],q[15];
u1(pi/4) q[15];
swap q[12],q[15];
cx q[15],q[18];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
swap q[18],q[15];
cx q[12],q[15];
swap q[15],q[18];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[13],q[14];
swap q[14],q[13];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[11],q[14];
cx q[13],q[14];
u1(pi/4) q[14];
swap q[14],q[11];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
cx q[11],q[14];
swap q[11],q[14];
cx q[13],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[16];
swap q[14],q[16];
cx q[18],q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[18];
u1(pi/4) q[18];
cx q[18],q[15];
u1(-pi/4) q[15];
swap q[18],q[15];
cx q[12],q[15];
u1(pi/4) q[15];
swap q[15],q[12];
cx q[15],q[18];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
swap q[18],q[15];
cx q[12],q[15];
swap q[15],q[18];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[18],q[15];
cx q[15],q[18];
u1(pi/4) q[18];
cx q[19],q[16];
u1(-pi/4) q[16];
swap q[16],q[14];
cx q[16],q[19];
cx q[16],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
u1(pi/4) q[19];
cx q[19],q[16];
swap q[16],q[14];
cx q[16],q[19];
cx q[14],q[16];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[14],q[11];
cx q[14],q[13];
u1(pi/4) q[13];
cx q[12],q[13];
swap q[13],q[12];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[13];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[12];
u1(pi/4) q[14];
cx q[14],q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[12],q[13];
u2(0,pi) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
swap q[13],q[12];
u2(0,pi) q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[14],q[16];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[14],q[16];
cx q[14],q[11];
u1(pi/4) q[11];
cx q[14],q[16];
u1(-pi/4) q[14];
swap q[11],q[14];
u1(-pi/4) q[16];
cx q[14],q[16];
cx q[11],q[14];
u2(0,pi) q[14];
swap q[14],q[11];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[19];
measure q[10] -> c[1];
measure q[15] -> c[2];
swap q[18],q[15];
cx q[12],q[15];
cx q[13],q[12];
u1(-pi/4) q[12];
swap q[12],q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
swap q[12],q[13];
u1(-pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[12],q[15];
swap q[13],q[14];
cx q[15],q[12];
u1(pi/4) q[12];
cx q[13],q[12];
cx q[14],q[13];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[12];
u1(pi/4) q[14];
cx q[14],q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[12],q[13];
cx q[13],q[12];
u2(0,pi) q[14];
measure q[15] -> c[3];
measure q[13] -> c[4];
measure q[12] -> c[5];
measure q[16] -> c[7];
swap q[19],q[16];
cx q[14],q[16];
measure q[14] -> c[6];
swap q[14],q[11];
cx q[14],q[16];
measure q[14] -> c[8];
measure q[16] -> c[9];
measure q[8] -> c[10];
measure q[20] -> c[11];
measure q[23] -> c[12];
measure q[0] -> c[13];
measure q[4] -> c[14];
measure q[3] -> c[15];
