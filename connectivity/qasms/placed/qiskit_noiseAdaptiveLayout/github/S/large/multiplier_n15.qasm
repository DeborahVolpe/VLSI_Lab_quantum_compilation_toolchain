OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u3(pi,0,pi) q[12];
u2(0,pi) q[16];
cx q[14],q[16];
u1(-pi/4) q[16];
u3(pi,0,pi) q[17];
u2(0,pi) q[18];
cx q[17],q[18];
u1(-pi/4) q[18];
u3(pi,0,pi) q[19];
u3(pi,0,pi) q[20];
u2(0,pi) q[22];
cx q[19],q[22];
u1(-pi/4) q[22];
cx q[20],q[22];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[20],q[22];
cx q[20],q[19];
u1(-pi/4) q[19];
u1(pi/4) q[20];
cx q[20],q[19];
cx q[20],q[18];
u1(pi/4) q[18];
cx q[17],q[18];
u1(pi/4) q[17];
u1(-pi/4) q[18];
cx q[20],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
cx q[20],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[20];
cx q[20],q[17];
cx q[20],q[16];
u1(pi/4) q[16];
cx q[14],q[16];
u1(pi/4) q[14];
u1(-pi/4) q[16];
cx q[20],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
cx q[16],q[10];
u2(0,pi) q[16];
cx q[20],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[20];
cx q[20],q[14];
cx q[14],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[22];
u2(0,pi) q[22];
u2(0,pi) q[23];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[18],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[21],q[23];
u1(-pi/4) q[23];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[10];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[18],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[18],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u2(0,pi) q[18];
cx q[17],q[18];
u1(-pi/4) q[18];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
u2(0,pi) q[22];
cx q[19],q[22];
u1(-pi/4) q[22];
cx q[20],q[22];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[20],q[22];
cx q[20],q[19];
u1(-pi/4) q[19];
u1(pi/4) q[20];
cx q[20],q[19];
cx q[20],q[18];
u1(pi/4) q[18];
cx q[17],q[18];
u1(pi/4) q[17];
u1(-pi/4) q[18];
cx q[20],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
u2(0,pi) q[18];
cx q[19],q[18];
u1(-pi/4) q[18];
cx q[12],q[18];
u1(pi/4) q[18];
cx q[19],q[18];
u1(-pi/4) q[18];
cx q[12],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
cx q[18],q[23];
u1(pi/4) q[19];
cx q[12],q[19];
u1(pi/4) q[12];
u1(-pi/4) q[19];
cx q[12],q[19];
cx q[20],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[20];
cx q[20],q[17];
cx q[20],q[16];
u1(pi/4) q[16];
cx q[14],q[16];
u1(pi/4) q[14];
u1(-pi/4) q[16];
cx q[20],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
u2(0,pi) q[16];
cx q[17],q[16];
u1(-pi/4) q[16];
cx q[12],q[16];
u1(pi/4) q[16];
cx q[17],q[16];
u1(-pi/4) q[16];
cx q[12],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
cx q[16],q[10];
u2(0,pi) q[16];
u1(pi/4) q[17];
cx q[12],q[17];
u1(pi/4) q[12];
u1(-pi/4) q[17];
cx q[12],q[17];
cx q[17],q[16];
u1(-pi/4) q[16];
cx q[20],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[20];
cx q[20],q[14];
u1(pi/4) q[22];
u2(0,pi) q[22];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[10];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[18],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[18],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u2(0,pi) q[18];
cx q[19],q[18];
u1(-pi/4) q[18];
cx q[12],q[18];
u1(pi/4) q[18];
cx q[19],q[18];
u1(-pi/4) q[18];
cx q[12],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
u1(pi/4) q[19];
cx q[12],q[19];
u1(pi/4) q[12];
u1(-pi/4) q[19];
cx q[12],q[19];
cx q[12],q[16];
u1(pi/4) q[16];
cx q[17],q[16];
u1(-pi/4) q[16];
cx q[12],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
u2(0,pi) q[16];
u1(pi/4) q[17];
cx q[12],q[17];
u1(pi/4) q[12];
u1(-pi/4) q[17];
cx q[12],q[17];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[11],q[16];
u1(pi/4) q[16];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[11],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
cx q[16],q[10];
u2(0,pi) q[16];
u1(pi/4) q[19];
cx q[11],q[19];
u1(pi/4) q[11];
u1(-pi/4) q[19];
cx q[11],q[19];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[11],q[16];
u1(pi/4) q[16];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[11],q[16];
u1(pi/4) q[16];
u2(0,pi) q[16];
u1(pi/4) q[19];
cx q[11],q[19];
u1(pi/4) q[11];
u1(-pi/4) q[19];
cx q[11],q[19];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[18],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[21],q[23];
u1(-pi/4) q[23];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[10];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[26],q[23];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[26];
cx q[26],q[21];
cx q[18],q[21];
cx q[21],q[23];
u1(-pi/4) q[23];
cx q[18],q[23];
u1(pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[21];
u1(-pi/4) q[23];
cx q[18],q[23];
cx q[18],q[21];
u1(pi/4) q[18];
u1(-pi/4) q[21];
cx q[18],q[21];
cx q[18],q[21];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[26],q[21];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[24],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[24],q[25];
u1(pi/4) q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
cx q[22],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
u2(0,pi) q[26];
cx q[25],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[22],q[25];
cx q[24],q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
measure q[25] -> c[0];
measure q[21] -> c[1];
measure q[10] -> c[2];
