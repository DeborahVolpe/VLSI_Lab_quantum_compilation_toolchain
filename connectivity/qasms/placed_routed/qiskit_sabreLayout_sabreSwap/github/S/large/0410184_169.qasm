OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[7];
u1(pi/4) q[10];
cx q[10],q[7];
cx q[11],q[8];
u1(pi/4) q[8];
cx q[14],q[16];
swap q[13],q[14];
u1(pi/4) q[16];
cx q[15],q[18];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(pi/4) q[18];
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
swap q[12],q[15];
cx q[13],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[14],q[13];
swap q[14],q[16];
cx q[18],q[15];
swap q[15],q[18];
cx q[12],q[15];
u1(-pi/4) q[15];
swap q[18],q[15];
cx q[15],q[12];
u1(pi/4) q[12];
cx q[15],q[18];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
swap q[15],q[18];
cx q[12],q[15];
swap q[18],q[15];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[14],q[13];
cx q[18],q[15];
u3(pi,0,pi) q[18];
cx q[15],q[18];
u1(pi/4) q[15];
u1(pi/4) q[18];
cx q[18],q[15];
cx q[7],q[10];
u1(pi/4) q[10];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[19],q[20];
swap q[16],q[19];
u1(pi/4) q[20];
cx q[22],q[25];
cx q[22],q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
swap q[19],q[16];
cx q[16],q[14];
u1(-pi/4) q[14];
swap q[13],q[14];
cx q[14],q[16];
cx q[14],q[13];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
swap q[14],q[13];
u1(pi/4) q[16];
cx q[16],q[14];
swap q[13],q[14];
cx q[14],q[16];
cx q[13],q[14];
u3(pi,0,pi) q[13];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[14];
cx q[13],q[14];
swap q[11],q[14];
swap q[12],q[13];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[19],q[22];
swap q[16],q[19];
cx q[14],q[16];
cx q[14],q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[22];
u1(pi/4) q[22];
swap q[19],q[22];
u1(pi/4) q[25];
cx q[25],q[22];
swap q[22],q[25];
cx q[19],q[22];
u1(-pi/4) q[22];
swap q[25],q[22];
cx q[22],q[19];
u1(pi/4) q[19];
cx q[22],q[25];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[19],q[22];
swap q[25],q[22];
cx q[22],q[19];
u2(0,pi) q[19];
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
cx q[20],q[19];
u3(pi,0,pi) q[20];
cx q[19],q[20];
u1(pi/4) q[19];
u1(pi/4) q[20];
cx q[20],q[19];
cx q[25],q[22];
u3(pi,0,pi) q[25];
cx q[22],q[25];
u1(pi/4) q[22];
u1(pi/4) q[25];
cx q[25],q[22];
swap q[8],q[11];
swap q[11],q[14];
cx q[14],q[16];
cx q[13],q[14];
u1(-pi/4) q[14];
swap q[14],q[13];
cx q[16],q[14];
u1(pi/4) q[14];
swap q[13],q[14];
cx q[16],q[14];
u1(-pi/4) q[14];
cx q[13],q[14];
swap q[14],q[13];
u1(-pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[14];
measure q[14] -> c[13];
swap q[13],q[14];
swap q[13],q[12];
cx q[14],q[16];
cx q[16],q[14];
swap q[14],q[11];
u2(0,pi) q[16];
u1(pi/4) q[16];
swap q[16],q[19];
cx q[19],q[20];
cx q[16],q[19];
u1(pi/4) q[19];
swap q[19],q[16];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(-pi/4) q[19];
swap q[16],q[19];
u1(-pi/4) q[20];
cx q[19],q[20];
cx q[16],q[19];
u2(0,pi) q[19];
swap q[19],q[16];
cx q[14],q[16];
cx q[14],q[11];
measure q[11] -> c[11];
swap q[11],q[8];
measure q[14] -> c[12];
cx q[20],q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u3(pi,0,pi) q[20];
swap q[22],q[19];
cx q[22],q[25];
cx q[19],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[19],q[22];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
cx q[25],q[22];
swap q[25],q[22];
cx q[19],q[22];
u2(0,pi) q[22];
swap q[19],q[22];
cx q[16],q[19];
cx q[25],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
swap q[22],q[19];
swap q[19],q[16];
swap q[14],q[16];
cx q[14],q[13];
cx q[11],q[14];
u1(-pi/4) q[13];
u1(pi/4) q[14];
swap q[14],q[11];
cx q[14],q[13];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
swap q[14],q[13];
cx q[11],q[14];
swap q[11],q[14];
cx q[13],q[14];
u2(0,pi) q[14];
cx q[19],q[20];
measure q[19] -> c[10];
swap q[19],q[22];
swap q[16],q[19];
cx q[16],q[14];
swap q[14],q[11];
cx q[14],q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[12],q[13];
u3(pi,0,pi) q[14];
swap q[11],q[14];
swap q[13],q[14];
swap q[15],q[12];
cx q[15],q[18];
cx q[12],q[15];
u1(pi/4) q[15];
u1(-pi/4) q[18];
swap q[15],q[18];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[15];
cx q[18],q[15];
swap q[18],q[15];
cx q[12],q[15];
u2(0,pi) q[15];
swap q[12],q[15];
cx q[13],q[12];
swap q[14],q[13];
cx q[14],q[11];
measure q[11] -> c[5];
measure q[14] -> c[6];
cx q[18],q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
swap q[15],q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
u3(pi,0,pi) q[18];
swap q[19],q[16];
measure q[20] -> c[9];
u3(pi,0,pi) q[25];
swap q[22],q[25];
cx q[19],q[22];
measure q[19] -> c[8];
measure q[22] -> c[7];
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
cx q[15],q[12];
measure q[12] -> c[2];
cx q[15],q[18];
measure q[15] -> c[4];
measure q[18] -> c[3];
cx q[7],q[10];
cx q[7],q[10];
measure q[10] -> c[0];
measure q[7] -> c[1];
measure q[6] -> c[14];
measure q[3] -> c[15];
