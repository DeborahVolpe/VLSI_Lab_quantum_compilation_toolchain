OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u2(0,pi) q[2];
u1(pi/4) q[2];
u2(0,pi) q[3];
u1(pi/4) q[3];
u1(pi/4) q[5];
u3(pi,0,pi) q[8];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[3],q[5];
u1(-pi/4) q[5];
cx q[8],q[3];
u1(pi/4) q[3];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[3],q[5];
u1(-pi/4) q[8];
cx q[8],q[3];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[11],q[5];
u1(-pi/4) q[5];
cx q[8],q[11];
u1(pi/4) q[11];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[11],q[5];
u1(-pi/4) q[8];
cx q[8],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[2],q[5];
u1(-pi/4) q[5];
cx q[8],q[2];
u1(pi/4) q[2];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[2],q[5];
u1(-pi/4) q[8];
cx q[8],q[2];
u2(0,pi) q[2];
u2(0,pi) q[2];
u1(pi/4) q[2];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
u2(0,pi) q[13];
u1(pi/4) q[13];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u1(pi/4) q[19];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[19],q[22];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[5];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[19];
u1(-pi/4) q[19];
cx q[22],q[25];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[25];
cx q[25],q[19];
cx q[22],q[25];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[5];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[25],q[19];
u1(-pi/4) q[19];
cx q[22],q[25];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[25];
cx q[25],q[19];
cx q[22],q[25];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[13],q[19];
u1(-pi/4) q[19];
cx q[22],q[13];
u1(pi/4) q[13];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[13],q[19];
u1(-pi/4) q[22];
cx q[22],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[13],q[19];
u1(-pi/4) q[19];
cx q[22],q[13];
u1(pi/4) q[13];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[13],q[19];
u1(-pi/4) q[22];
cx q[22],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[11],q[19];
u1(-pi/4) q[19];
cx q[22],q[11];
u1(pi/4) q[11];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[11],q[19];
u1(-pi/4) q[22];
cx q[22],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[11],q[19];
u1(-pi/4) q[19];
cx q[22],q[11];
u1(pi/4) q[11];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[11],q[19];
u1(-pi/4) q[22];
cx q[22],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[5],q[8];
u1(pi/4) q[5];
cx q[5],q[22];
cx q[19],q[5];
cx q[22],q[19];
u1(pi/4) q[19];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[22];
u1(-pi/4) q[5];
cx q[19],q[5];
cx q[22],q[19];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[5],q[22];
u1(pi/4) q[22];
u2(0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[14];
u1(-pi/4) q[8];
cx q[8],q[5];
cx q[14],q[8];
u1(pi/4) q[14];
u2(0,pi) q[5];
u1(pi/4) q[5];
cx q[5],q[22];
cx q[19],q[5];
cx q[22],q[19];
u1(pi/4) q[19];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[22];
u1(-pi/4) q[5];
cx q[19],q[5];
cx q[22],q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[5],q[22];
u1(pi/4) q[22];
u2(0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[14];
u1(-pi/4) q[8];
cx q[8],q[5];
cx q[14],q[8];
u1(pi/4) q[14];
u2(0,pi) q[5];
u1(pi/4) q[5];
cx q[5],q[22];
cx q[16],q[5];
cx q[22],q[16];
u1(pi/4) q[16];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[22];
u1(-pi/4) q[5];
cx q[16],q[5];
cx q[22],q[16];
u2(0,pi) q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[5],q[22];
u1(pi/4) q[22];
u2(0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[14];
u1(-pi/4) q[8];
cx q[8],q[5];
cx q[14],q[8];
u1(pi/4) q[14];
u2(0,pi) q[5];
u1(pi/4) q[5];
cx q[5],q[22];
cx q[16],q[5];
cx q[22],q[16];
u1(pi/4) q[16];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[22];
u1(-pi/4) q[5];
cx q[16],q[5];
cx q[22],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[5],q[22];
u1(pi/4) q[22];
u2(0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[14];
u1(-pi/4) q[8];
cx q[8],q[5];
cx q[14],q[8];
u1(pi/4) q[14];
cx q[22],q[14];
cx q[25],q[22];
cx q[14],q[25];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
u1(pi/4) q[25];
cx q[25],q[22];
cx q[14],q[25];
cx q[22],q[14];
u1(pi/4) q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
u2(0,pi) q[5];
u3(pi,0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[14];
cx q[25],q[22];
cx q[14],q[25];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
u1(pi/4) q[25];
cx q[25],q[22];
cx q[14],q[25];
cx q[22],q[14];
u1(pi/4) q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[14];
cx q[13],q[22];
cx q[14],q[13];
u1(pi/4) q[13];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
cx q[13],q[22];
cx q[14],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[22],q[14];
u1(pi/4) q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[14];
cx q[13],q[22];
cx q[14],q[13];
u1(pi/4) q[13];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
cx q[13],q[22];
cx q[14],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[22],q[14];
u1(pi/4) q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[14];
cx q[11],q[22];
cx q[14],q[11];
u1(pi/4) q[11];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
cx q[11],q[22];
cx q[14],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[22],q[14];
u1(pi/4) q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[14];
cx q[11],q[22];
cx q[14],q[11];
u1(pi/4) q[11];
u1(-pi/4) q[22];
cx q[14],q[22];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
cx q[11],q[22];
cx q[14],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[22],q[14];
u1(pi/4) q[14];
cx q[16],q[14];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[22],q[5];
u1(-pi/4) q[5];
cx q[8],q[22];
u1(pi/4) q[22];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[22],q[5];
u1(-pi/4) q[8];
cx q[8],q[22];
u2(0,pi) q[22];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[19],q[22];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[2],q[19];
u1(-pi/4) q[19];
cx q[22],q[2];
u1(pi/4) q[2];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[2],q[19];
u1(-pi/4) q[22];
cx q[22],q[2];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u2(0,pi) q[2];
u2(0,pi) q[2];
u1(pi/4) q[2];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[2],q[19];
u1(-pi/4) q[19];
cx q[22],q[2];
u1(pi/4) q[2];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[2],q[19];
u1(-pi/4) q[22];
cx q[22],q[2];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u2(0,pi) q[2];
u2(0,pi) q[2];
u1(pi/4) q[2];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
cx q[14],q[22];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[14];
u1(-pi/4) q[14];
cx q[22],q[19];
u1(pi/4) q[19];
cx q[22],q[14];
u1(-pi/4) q[14];
cx q[19],q[14];
u1(-pi/4) q[22];
cx q[22],q[19];
cx q[14],q[22];
u2(0,pi) q[14];
u1(pi/4) q[14];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[14],q[5];
u1(-pi/4) q[5];
cx q[8],q[14];
u1(pi/4) q[14];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[14],q[5];
u1(-pi/4) q[8];
cx q[8],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[22];
cx q[19],q[14];
u1(-pi/4) q[14];
cx q[22],q[19];
u1(pi/4) q[19];
cx q[22],q[14];
u1(-pi/4) q[14];
cx q[19],q[14];
u1(-pi/4) q[22];
cx q[22],q[19];
cx q[14],q[22];
u2(0,pi) q[14];
u1(pi/4) q[14];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[14],q[5];
u1(-pi/4) q[5];
cx q[8],q[14];
u1(pi/4) q[14];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[14],q[5];
u1(-pi/4) q[8];
cx q[8],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[22];
cx q[3],q[14];
u1(-pi/4) q[14];
cx q[22],q[3];
cx q[22],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[14];
cx q[22],q[3];
cx q[14],q[22];
u2(0,pi) q[14];
u1(pi/4) q[14];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[14],q[5];
u1(-pi/4) q[5];
cx q[8],q[14];
u1(pi/4) q[14];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[14],q[5];
u1(-pi/4) q[8];
cx q[8],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[14],q[22];
cx q[3],q[14];
u1(-pi/4) q[14];
cx q[22],q[3];
cx q[22],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[14];
cx q[22],q[3];
cx q[14],q[22];
u2(0,pi) q[14];
u1(pi/4) q[14];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[14],q[5];
u1(-pi/4) q[5];
cx q[8],q[14];
u1(pi/4) q[14];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[14],q[5];
u1(-pi/4) q[8];
cx q[8],q[14];
u2(0,pi) q[14];
u3(pi,0,pi) q[14];
u1(pi/4) q[14];
cx q[5],q[8];
u3(pi,0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[19],q[14];
u1(-pi/4) q[14];
cx q[8],q[19];
u1(pi/4) q[19];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[19],q[14];
u1(-pi/4) q[8];
cx q[8],q[19];
cx q[14],q[8];
u1(pi/4) q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[3],q[14];
u1(-pi/4) q[14];
cx q[8],q[3];
u1(pi/4) q[3];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[3],q[14];
u1(-pi/4) q[8];
cx q[8],q[3];
cx q[14],q[8];
u1(pi/4) q[14];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
u1(pi/4) q[8];
cx q[14],q[8];
cx q[25],q[14];
u1(-pi/4) q[14];
cx q[8],q[25];
u1(pi/4) q[25];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[25],q[14];
u1(-pi/4) q[8];
cx q[8],q[25];
cx q[14],q[8];
u1(pi/4) q[14];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[3],q[19];
u1(-pi/4) q[19];
cx q[22],q[3];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(-pi/4) q[22];
u1(pi/4) q[3];
cx q[3],q[19];
cx q[22],q[3];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
u2(0,pi) q[3];
u2(0,pi) q[3];
u1(pi/4) q[3];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[13],q[19];
u1(-pi/4) q[19];
cx q[22],q[13];
u1(pi/4) q[13];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[13],q[19];
u1(-pi/4) q[22];
cx q[22],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[13],q[19];
u1(-pi/4) q[19];
cx q[22],q[13];
u1(pi/4) q[13];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[13],q[19];
u1(-pi/4) q[22];
cx q[22],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[11],q[19];
u1(-pi/4) q[19];
cx q[22],q[11];
u1(pi/4) q[11];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[11],q[19];
u1(-pi/4) q[22];
cx q[22],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[22];
cx q[11],q[19];
u1(-pi/4) q[19];
cx q[22],q[11];
u1(pi/4) q[11];
cx q[22],q[19];
u1(-pi/4) q[19];
cx q[11],q[19];
u1(-pi/4) q[22];
cx q[22],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
cx q[16],q[5];
u1(-pi/4) q[5];
cx q[8],q[16];
u1(pi/4) q[16];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[16],q[5];
u1(-pi/4) q[8];
cx q[8],q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[16],q[14];
cx q[19],q[16];
cx q[14],q[19];
u1(-pi/4) q[16];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
u1(pi/4) q[19];
cx q[19],q[16];
cx q[14],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u2(0,pi) q[19];
u2(0,pi) q[19];
u1(pi/4) q[19];
cx q[5],q[8];
u3(pi,0,pi) q[5];
u1(pi/4) q[5];
cx q[14],q[5];
cx q[19],q[14];
u1(-pi/4) q[14];
cx q[5],q[19];
u1(pi/4) q[19];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[19],q[14];
u1(-pi/4) q[5];
cx q[5],q[19];
cx q[14],q[5];
u1(pi/4) q[14];
u2(0,pi) q[19];
u1(pi/4) q[5];
cx q[14],q[5];
cx q[3],q[14];
u1(-pi/4) q[14];
cx q[5],q[3];
u1(pi/4) q[3];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[3],q[14];
u1(-pi/4) q[5];
cx q[5],q[3];
cx q[14],q[5];
u1(pi/4) q[14];
u2(0,pi) q[3];
u1(pi/4) q[5];
cx q[14],q[5];
cx q[25],q[14];
u1(-pi/4) q[14];
cx q[5],q[25];
u1(pi/4) q[25];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[25],q[14];
u1(-pi/4) q[5];
cx q[5],q[25];
cx q[14],q[5];
u1(pi/4) q[14];
u2(0,pi) q[25];
u1(pi/4) q[5];
cx q[14],q[5];
cx q[11],q[14];
u1(-pi/4) q[14];
cx q[5],q[11];
u1(pi/4) q[11];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[11],q[14];
u1(-pi/4) q[5];
cx q[5],q[11];
u2(0,pi) q[11];
cx q[14],q[5];
u1(pi/4) q[14];
u1(pi/4) q[5];
cx q[14],q[5];
cx q[2],q[14];
u1(-pi/4) q[14];
cx q[5],q[2];
u1(pi/4) q[2];
cx q[5],q[14];
u1(-pi/4) q[14];
cx q[2],q[14];
u1(-pi/4) q[5];
cx q[5],q[2];
cx q[14],q[5];
u1(pi/4) q[14];
u2(0,pi) q[2];
u1(pi/4) q[5];
cx q[14],q[5];
u1(pi/4) q[8];
cx q[8],q[22];
cx q[16],q[8];
cx q[22],q[16];
u1(pi/4) q[16];
u1(-pi/4) q[8];
cx q[22],q[8];
u1(-pi/4) q[22];
u1(-pi/4) q[8];
cx q[16],q[8];
cx q[22],q[16];
u2(0,pi) q[16];
u2(0,pi) q[16];
u1(pi/4) q[16];
cx q[8],q[22];
u1(pi/4) q[22];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[5];
u1(pi/4) q[8];
cx q[8],q[14];
cx q[5],q[8];
cx q[14],q[5];
u1(pi/4) q[14];
u1(pi/4) q[5];
cx q[14],q[5];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[22];
cx q[16],q[8];
cx q[22],q[16];
u1(pi/4) q[16];
u1(-pi/4) q[8];
cx q[22],q[8];
u1(-pi/4) q[22];
u1(-pi/4) q[8];
cx q[16],q[8];
cx q[22],q[16];
u2(0,pi) q[16];
cx q[8],q[22];
u1(pi/4) q[22];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[5];
u1(pi/4) q[8];
cx q[8],q[14];
cx q[5],q[8];
cx q[14],q[5];
u1(pi/4) q[14];
u1(pi/4) q[5];
cx q[14],q[5];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[22];
cx q[13],q[8];
cx q[22],q[13];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[22],q[8];
u1(-pi/4) q[22];
u1(-pi/4) q[8];
cx q[13],q[8];
cx q[22],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[8],q[22];
u1(pi/4) q[22];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[5];
u1(pi/4) q[8];
cx q[8],q[14];
cx q[5],q[8];
cx q[14],q[5];
u1(pi/4) q[14];
u1(pi/4) q[5];
cx q[14],q[5];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[22];
cx q[13],q[8];
cx q[22],q[13];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[22],q[8];
u1(-pi/4) q[22];
u1(-pi/4) q[8];
cx q[13],q[8];
cx q[22],q[13];
u2(0,pi) q[13];
cx q[8],q[22];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[14];
u1(-pi/4) q[14];
cx q[5],q[8];
cx q[5],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[5];
u1(pi/4) q[8];
cx q[8],q[14];
cx q[5],q[8];
cx q[14],q[5];
u2(0,pi) q[8];
measure q[2] -> c[0];
measure q[11] -> c[1];
measure q[13] -> c[2];
measure q[25] -> c[3];
measure q[3] -> c[4];
measure q[16] -> c[5];
measure q[19] -> c[6];
measure q[22] -> c[7];
measure q[14] -> c[8];
measure q[5] -> c[9];
measure q[8] -> c[10];
measure q[9] -> c[11];
measure q[1] -> c[12];
measure q[26] -> c[13];
measure q[18] -> c[14];
measure q[20] -> c[15];
