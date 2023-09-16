OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
cx q[2],q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[8];
cx q[11],q[14];
u1(pi/4) q[14];
swap q[11],q[14];
cx q[19],q[22];
u1(pi/4) q[22];
swap q[19],q[22];
swap q[16],q[19];
cx q[19],q[20];
u1(pi/4) q[20];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
swap q[25],q[26];
cx q[22],q[25];
cx q[19],q[22];
swap q[19],q[16];
cx q[14],q[16];
swap q[14],q[11];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[22];
u1(pi/4) q[22];
swap q[22],q[19];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[26];
cx q[24],q[25];
u1(pi/4) q[25];
u1(-pi/4) q[26];
swap q[26],q[25];
cx q[24],q[25];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
cx q[26],q[25];
swap q[25],q[26];
cx q[24],q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[22],q[25];
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
u1(pi/4) q[19];
cx q[20],q[19];
swap q[19],q[20];
cx q[16],q[19];
u1(-pi/4) q[19];
swap q[20],q[19];
cx q[19],q[16];
u1(pi/4) q[16];
cx q[19],q[20];
u1(-pi/4) q[19];
u1(-pi/4) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[20],q[19];
cx q[19],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[14],q[16];
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
swap q[25],q[26];
cx q[25],q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
swap q[26],q[25];
swap q[25],q[22];
swap q[8],q[11];
cx q[5],q[8];
swap q[3],q[5];
cx q[2],q[3];
cx q[2],q[1];
u2(0,pi) q[1];
u1(pi/4) q[1];
swap q[1],q[2];
u2(0,pi) q[3];
u1(pi/4) q[3];
swap q[5],q[3];
u2(0,pi) q[8];
u1(pi/4) q[8];
swap q[11],q[8];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[14],q[16];
cx q[14],q[11];
u1(pi/4) q[11];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
swap q[16],q[14];
cx q[11],q[14];
swap q[14],q[16];
cx q[14],q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[16],q[14];
u3(pi,0,pi) q[16];
cx q[14],q[16];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
swap q[16],q[14];
cx q[8],q[11];
cx q[5],q[8];
u1(-pi/4) q[8];
swap q[8],q[11];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[11];
u1(-pi/4) q[11];
u1(-pi/4) q[8];
swap q[11],q[8];
cx q[5],q[8];
swap q[8],q[11];
cx q[8],q[5];
cx q[11],q[8];
u3(pi,0,pi) q[11];
u2(0,pi) q[5];
u1(pi/4) q[5];
cx q[3],q[5];
cx q[2],q[3];
u1(-pi/4) q[3];
swap q[2],q[3];
cx q[5],q[3];
u1(pi/4) q[3];
swap q[3],q[2];
cx q[5],q[3];
u1(-pi/4) q[3];
cx q[2],q[3];
swap q[2],q[3];
u1(-pi/4) q[5];
cx q[5],q[3];
u2(0,pi) q[3];
cx q[8],q[11];
u1(pi/4) q[11];
u1(pi/4) q[8];
cx q[11],q[8];
swap q[11],q[8];
measure q[3] -> c[13];
swap q[3],q[2];
swap q[2],q[1];
cx q[3],q[5];
cx q[5],q[3];
swap q[2],q[3];
u2(0,pi) q[5];
u1(pi/4) q[5];
cx q[5],q[8];
u1(-pi/4) q[8];
swap q[5],q[8];
cx q[11],q[8];
u1(pi/4) q[8];
swap q[8],q[5];
cx q[11],q[8];
u1(-pi/4) q[11];
u1(-pi/4) q[8];
cx q[5],q[8];
swap q[5],q[8];
cx q[11],q[8];
u2(0,pi) q[8];
swap q[8],q[5];
cx q[3],q[5];
cx q[3],q[2];
measure q[2] -> c[11];
measure q[3] -> c[12];
cx q[8],q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[11],q[14];
cx q[16],q[14];
u1(pi/4) q[14];
swap q[14],q[11];
cx q[16],q[14];
u1(-pi/4) q[14];
cx q[11],q[14];
swap q[11],q[14];
u1(-pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[14];
swap q[14],q[11];
cx q[14],q[16];
u3(pi,0,pi) q[14];
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
cx q[20],q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
u3(pi,0,pi) q[20];
u1(-pi/4) q[22];
swap q[19],q[22];
cx q[25],q[22];
u1(pi/4) q[22];
swap q[22],q[19];
cx q[25],q[22];
u1(-pi/4) q[22];
cx q[19],q[22];
swap q[19],q[22];
u1(-pi/4) q[25];
cx q[25],q[22];
u2(0,pi) q[22];
swap q[22],q[19];
cx q[22],q[25];
u3(pi,0,pi) q[22];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[26];
cx q[24],q[25];
u1(pi/4) q[25];
swap q[24],q[25];
u1(-pi/4) q[26];
cx q[25],q[26];
u1(-pi/4) q[25];
swap q[25],q[24];
u1(-pi/4) q[26];
cx q[25],q[26];
cx q[24],q[25];
u2(0,pi) q[25];
u3(pi,0,pi) q[8];
swap q[5],q[8];
cx q[8],q[11];
swap q[11],q[14];
cx q[14],q[16];
cx q[14],q[11];
measure q[11] -> c[7];
measure q[14] -> c[8];
cx q[16],q[19];
swap q[19],q[22];
cx q[22],q[25];
cx q[22],q[19];
measure q[19] -> c[3];
swap q[20],q[19];
cx q[16],q[19];
measure q[16] -> c[6];
measure q[19] -> c[5];
measure q[22] -> c[4];
measure q[25] -> c[2];
swap q[24],q[25];
cx q[26],q[25];
cx q[26],q[25];
measure q[25] -> c[0];
measure q[26] -> c[1];
cx q[8],q[5];
measure q[5] -> c[9];
measure q[8] -> c[10];
measure q[0] -> c[14];
measure q[4] -> c[15];
