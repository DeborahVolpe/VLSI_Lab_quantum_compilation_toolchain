OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[3];
u1(pi/4) q[5];
u1(pi/4) q[13];
u1(pi/4) q[14];
cx q[12],q[15];
u1(pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[15];
u1(pi/4) q[15];
swap q[12],q[15];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
cx q[12],q[13];
u2(0,pi) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[12],q[15];
cx q[12],q[13];
u1(pi/4) q[12];
cx q[12],q[15];
u1(pi/4) q[13];
swap q[14],q[13];
u3(pi,0,pi) q[16];
swap q[14],q[16];
u2(0,pi) q[18];
u1(pi/4) q[18];
swap q[15],q[18];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[18],q[15];
u1(pi/4) q[15];
swap q[12],q[15];
cx q[18],q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u1(-pi/4) q[18];
swap q[18],q[15];
cx q[15],q[12];
u2(0,pi) q[12];
swap q[13],q[12];
swap q[14],q[13];
swap q[12],q[13];
cx q[18],q[15];
u1(pi/4) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[16],q[14];
swap q[16],q[19];
cx q[19],q[20];
u1(pi/4) q[19];
u2(0,pi) q[20];
u1(pi/4) q[20];
swap q[19],q[20];
swap q[19],q[16];
cx q[16],q[14];
u1(-pi/4) q[14];
cx q[19],q[16];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[14],q[16];
swap q[16],q[14];
u1(-pi/4) q[19];
cx q[19],q[16];
u2(0,pi) q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[16],q[19];
u1(pi/4) q[16];
swap q[16],q[14];
u1(pi/4) q[19];
cx q[20],q[19];
swap q[20],q[19];
cx q[16],q[19];
u1(-pi/4) q[19];
swap q[19],q[20];
cx q[19],q[16];
u1(pi/4) q[16];
cx q[19],q[20];
u1(-pi/4) q[19];
u1(-pi/4) q[20];
swap q[20],q[19];
cx q[16],q[19];
swap q[19],q[20];
cx q[19],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[14],q[13];
swap q[11],q[14];
cx q[20],q[19];
u1(pi/4) q[19];
u1(pi/4) q[20];
cx q[20],q[19];
u2(0,pi) q[22];
u1(pi/4) q[22];
swap q[19],q[22];
cx q[19],q[20];
u1(-pi/4) q[20];
cx q[22],q[19];
u1(pi/4) q[19];
swap q[20],q[19];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[20],q[19];
swap q[19],q[20];
u1(-pi/4) q[22];
cx q[22],q[19];
u2(0,pi) q[19];
swap q[16],q[19];
cx q[16],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[11];
u1(-pi/4) q[11];
cx q[13],q[14];
u1(pi/4) q[14];
swap q[14],q[13];
cx q[14],q[11];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[13],q[14];
cx q[14],q[11];
cx q[13],q[14];
u2(0,pi) q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[14],q[13];
cx q[11],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
swap q[13],q[14];
cx q[14],q[16];
cx q[13],q[14];
u1(pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
cx q[16],q[14];
swap q[13],q[14];
cx q[14],q[16];
cx q[13],q[14];
u1(pi/4) q[13];
swap q[12],q[13];
cx q[14],q[13];
u1(pi/4) q[14];
swap q[14],q[13];
cx q[12],q[13];
u2(0,pi) q[16];
u1(pi/4) q[16];
swap q[16],q[14];
swap q[14],q[11];
swap q[19],q[22];
cx q[20],q[19];
swap q[8],q[11];
cx q[8],q[5];
swap q[22],q[25];
cx q[19],q[22];
u1(pi/4) q[19];
u2(0,pi) q[22];
u1(pi/4) q[22];
swap q[19],q[22];
cx q[25],q[22];
swap q[25],q[22];
cx q[19],q[22];
u1(-pi/4) q[22];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/4) q[19];
cx q[22],q[25];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[19],q[22];
swap q[22],q[25];
cx q[22],q[19];
u2(0,pi) q[19];
cx q[25],q[22];
measure q[15] -> c[0];
measure q[22] -> c[4];
swap q[25],q[22];
cx q[22],q[19];
cx q[19],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
swap q[16],q[14];
swap q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
cx q[14],q[13];
u1(pi/4) q[13];
swap q[14],q[13];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[14];
cx q[13],q[12];
cx q[14],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[14],q[13];
cx q[12],q[13];
u1(pi/4) q[13];
swap q[13],q[14];
u1(pi/4) q[19];
swap q[16],q[19];
cx q[16],q[14];
swap q[14],q[16];
cx q[13],q[14];
u1(-pi/4) q[14];
swap q[16],q[14];
cx q[14],q[13];
u1(pi/4) q[13];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
cx q[13],q[14];
swap q[16],q[14];
cx q[14],q[13];
u2(0,pi) q[13];
cx q[16],q[14];
u1(pi/4) q[14];
cx q[19],q[16];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
u1(-pi/4) q[16];
swap q[19],q[16];
cx q[14],q[16];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[16],q[19];
u1(-pi/4) q[16];
u1(-pi/4) q[19];
swap q[16],q[19];
cx q[14],q[16];
swap q[19],q[16];
cx q[16],q[14];
u2(0,pi) q[14];
u3(pi,0,pi) q[14];
u1(pi/4) q[14];
swap q[13],q[14];
cx q[14],q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[11],q[8];
u1(pi/4) q[14];
cx q[19],q[16];
measure q[16] -> c[1];
u1(-pi/4) q[8];
swap q[5],q[8];
cx q[8],q[11];
u1(pi/4) q[11];
cx q[8],q[5];
u1(-pi/4) q[5];
u1(-pi/4) q[8];
swap q[8],q[11];
cx q[8],q[5];
cx q[11],q[8];
u2(0,pi) q[8];
u2(0,pi) q[8];
u1(pi/4) q[8];
swap q[8],q[5];
cx q[8],q[11];
u1(pi/4) q[11];
cx q[14],q[11];
swap q[11],q[14];
measure q[18] -> c[5];
measure q[22] -> c[6];
measure q[20] -> c[7];
measure q[12] -> c[9];
measure q[8] -> c[10];
swap q[5],q[8];
swap q[3],q[5];
cx q[8],q[11];
u1(-pi/4) q[11];
swap q[14],q[11];
cx q[11],q[8];
cx q[11],q[14];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[11],q[14];
u1(pi/4) q[8];
cx q[8],q[11];
swap q[14],q[11];
cx q[11],q[8];
cx q[14],q[11];
u1(pi/4) q[11];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[14],q[13];
cx q[14],q[11];
cx q[13],q[14];
u1(-pi/4) q[14];
swap q[11],q[14];
cx q[14],q[13];
u1(pi/4) q[13];
cx q[14],q[11];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[14],q[13];
cx q[14],q[11];
cx q[13],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[13],q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u1(pi/4) q[11];
u1(pi/4) q[14];
cx q[13],q[14];
swap q[14],q[13];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[13],q[14];
cx q[14],q[11];
u1(pi/4) q[11];
cx q[14],q[13];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
swap q[14],q[13];
cx q[11],q[14];
swap q[13],q[14];
cx q[14],q[11];
u2(0,pi) q[11];
cx q[13],q[14];
measure q[14] -> c[3];
u2(0,pi) q[8];
cx q[11],q[8];
u2(0,pi) q[11];
u1(pi/4) q[11];
u1(pi/4) q[8];
cx q[8],q[5];
cx q[11],q[8];
u1(-pi/4) q[8];
swap q[5],q[8];
cx q[8],q[11];
u1(pi/4) q[11];
cx q[8],q[5];
u1(-pi/4) q[5];
u1(-pi/4) q[8];
swap q[8],q[11];
cx q[8],q[5];
cx q[11],q[8];
u2(0,pi) q[8];
u3(pi,0,pi) q[8];
measure q[8] -> c[8];
swap q[5],q[8];
cx q[8],q[11];
measure q[11] -> c[2];
measure q[19] -> c[11];
measure q[13] -> c[12];
measure q[8] -> c[13];
measure q[7] -> c[14];
measure q[1] -> c[15];
