OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[15];
u2(0,pi) q[17];
u1(pi/4) q[17];
u1(pi/4) q[21];
u1(pi/4) q[22];
u3(pi,0,pi) q[23];
u1(pi/4) q[23];
cx q[18],q[24];
u1(pi/4) q[18];
u1(pi/4) q[25];
cx q[25],q[15];
cx q[26],q[24];
u1(pi/4) q[24];
cx q[24],q[23];
u1(pi/4) q[26];
cx q[26],q[18];
cx q[17],q[26];
cx q[18],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[26];
cx q[18],q[26];
u1(-pi/4) q[18];
u1(-pi/4) q[26];
cx q[17],q[26];
cx q[18],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[26],q[18];
u1(pi/4) q[18];
cx q[21],q[18];
u3(pi,0,pi) q[26];
u1(pi/4) q[26];
cx q[22],q[26];
cx q[17],q[22];
u1(-pi/4) q[22];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[17],q[22];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[22],q[26];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[25];
cx q[15],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[15],q[25];
u1(-pi/4) q[15];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[15],q[22];
u2(0,pi) q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[25],q[15];
u1(pi/4) q[15];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[21];
cx q[18],q[24];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[24];
cx q[24],q[21];
cx q[18],q[24];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[23];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
cx q[24],q[23];
u1(pi/4) q[23];
u1(pi/4) q[24];
cx q[24],q[23];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[15];
cx q[22],q[25];
cx q[15],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[15],q[25];
u1(-pi/4) q[15];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[15],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[25],q[15];
u1(pi/4) q[15];
u1(pi/4) q[25];
cx q[25],q[15];
u1(pi/4) q[26];
cx q[22],q[26];
cx q[17],q[22];
u1(-pi/4) q[22];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[17],q[22];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[22],q[26];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[25];
cx q[15],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[15],q[25];
u1(-pi/4) q[15];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[15],q[22];
u2(0,pi) q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[25],q[15];
u1(pi/4) q[15];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[21];
cx q[18],q[24];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[24];
cx q[24],q[21];
cx q[18],q[24];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[23];
u2(0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
u1(pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[15];
cx q[22],q[25];
cx q[15],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[15],q[25];
u1(-pi/4) q[15];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[15],q[22];
u2(0,pi) q[22];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[23],q[22];
cx q[25],q[15];
u1(pi/4) q[15];
cx q[15],q[18];
u1(pi/4) q[25];
u1(pi/4) q[26];
cx q[21],q[26];
cx q[17],q[21];
u1(-pi/4) q[21];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[21];
u1(-pi/4) q[21];
cx q[17],q[21];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[21],q[26];
u2(0,pi) q[21];
u1(pi/4) q[21];
cx q[21],q[15];
u1(-pi/4) q[15];
cx q[18],q[21];
cx q[18],q[15];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[15];
cx q[18],q[21];
cx q[15],q[18];
u1(pi/4) q[15];
u1(pi/4) q[18];
cx q[15],q[18];
u2(0,pi) q[21];
u1(pi/4) q[21];
u1(pi/4) q[26];
cx q[21],q[26];
cx q[17],q[21];
u1(-pi/4) q[21];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[21];
u1(-pi/4) q[21];
cx q[17],q[21];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[21],q[26];
u2(0,pi) q[21];
u1(pi/4) q[21];
cx q[21],q[15];
u1(-pi/4) q[15];
cx q[18],q[21];
cx q[18],q[15];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[15];
cx q[18],q[21];
cx q[15],q[18];
u1(pi/4) q[15];
u3(pi,0,pi) q[18];
u1(pi/4) q[18];
u2(0,pi) q[21];
u1(pi/4) q[21];
cx q[21],q[18];
cx q[17],q[21];
cx q[18],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
cx q[17],q[21];
cx q[18],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[17],q[23];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[25];
cx q[22],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[23];
cx q[22],q[23];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
cx q[17],q[23];
cx q[22],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[23],q[22];
u1(pi/4) q[22];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[24],q[21];
u1(-pi/4) q[21];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[21];
u1(-pi/4) q[21];
cx q[24],q[21];
u1(-pi/4) q[25];
cx q[25],q[24];
cx q[21],q[25];
u2(0,pi) q[21];
u1(pi/4) q[21];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
u1(pi/4) q[26];
cx q[26],q[18];
cx q[21],q[26];
cx q[18],q[21];
u1(pi/4) q[21];
u1(-pi/4) q[26];
cx q[18],q[26];
u1(-pi/4) q[18];
u1(-pi/4) q[26];
cx q[21],q[26];
cx q[18],q[21];
u2(0,pi) q[21];
u1(pi/4) q[21];
cx q[21],q[25];
cx q[24],q[21];
u1(-pi/4) q[21];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[21];
u1(-pi/4) q[21];
cx q[24],q[21];
u1(-pi/4) q[25];
cx q[25],q[24];
cx q[21],q[25];
u2(0,pi) q[21];
u1(pi/4) q[21];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[26],q[18];
u1(pi/4) q[18];
u1(pi/4) q[26];
cx q[26],q[18];
cx q[21],q[26];
cx q[18],q[21];
u1(pi/4) q[21];
u1(-pi/4) q[26];
cx q[18],q[26];
u1(-pi/4) q[18];
u1(-pi/4) q[26];
cx q[21],q[26];
cx q[18],q[21];
u2(0,pi) q[21];
u1(pi/4) q[21];
cx q[26],q[18];
u1(pi/4) q[18];
u1(pi/4) q[26];
cx q[26],q[18];
cx q[24],q[26];
cx q[18],q[24];
u1(pi/4) q[24];
u1(-pi/4) q[26];
cx q[18],q[26];
u1(-pi/4) q[18];
u1(-pi/4) q[26];
cx q[24],q[26];
cx q[18],q[24];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[26],q[18];
u1(pi/4) q[18];
cx q[21],q[18];
u1(pi/4) q[26];
cx q[15],q[26];
cx q[23],q[15];
u1(-pi/4) q[15];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[26],q[15];
u1(-pi/4) q[15];
cx q[23],q[15];
u1(-pi/4) q[26];
cx q[26],q[23];
cx q[15],q[26];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[15],q[21];
cx q[18],q[15];
u1(pi/4) q[15];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
cx q[15],q[21];
cx q[18],q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[26];
cx q[15],q[26];
cx q[23],q[15];
u1(-pi/4) q[15];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[26],q[15];
u1(-pi/4) q[15];
cx q[23],q[15];
u1(-pi/4) q[26];
cx q[26],q[23];
cx q[15],q[26];
u1(pi/4) q[15];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[17],q[23];
cx q[22],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[23];
cx q[22],q[23];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
cx q[17],q[23];
cx q[22],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[23],q[22];
u1(pi/4) q[22];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[26];
cx q[15],q[26];
cx q[23],q[15];
u1(-pi/4) q[15];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[26],q[15];
u1(-pi/4) q[15];
cx q[23],q[15];
u1(-pi/4) q[26];
cx q[26],q[23];
cx q[15],q[26];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[15],q[21];
cx q[18],q[15];
u1(pi/4) q[15];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
cx q[15],q[21];
cx q[18],q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[21],q[18];
u1(pi/4) q[18];
u3(pi,0,pi) q[21];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[26];
cx q[15],q[26];
cx q[23],q[15];
u1(-pi/4) q[15];
cx q[26],q[23];
u1(pi/4) q[23];
cx q[26],q[15];
u1(-pi/4) q[15];
cx q[23],q[15];
u1(-pi/4) q[26];
cx q[26],q[23];
cx q[15],q[26];
u1(pi/4) q[15];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[23];
u1(-pi/4) q[23];
cx q[24],q[23];
u1(-pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[21];
cx q[18],q[23];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[23];
cx q[23],q[21];
cx q[18],q[23];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[23],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[23];
u1(-pi/4) q[23];
cx q[24],q[23];
u1(-pi/4) q[25];
cx q[25],q[24];
cx q[23],q[25];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[21];
cx q[18],q[23];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[23];
cx q[23],q[21];
cx q[18],q[23];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[22],q[23];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
u3(pi,0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[15];
cx q[17],q[26];
cx q[15],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[26];
cx q[15],q[26];
u1(-pi/4) q[15];
u1(-pi/4) q[26];
cx q[17],q[26];
cx q[15],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[26],q[15];
u1(pi/4) q[15];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[23],q[26];
cx q[23],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
u1(pi/4) q[26];
cx q[26],q[22];
cx q[23],q[26];
cx q[22],q[23];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
u1(pi/4) q[23];
cx q[22],q[23];
u2(0,pi) q[26];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[23],q[26];
cx q[23],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
u1(pi/4) q[26];
cx q[26],q[22];
cx q[23],q[26];
cx q[22],q[23];
u1(pi/4) q[22];
u1(pi/4) q[23];
cx q[22],q[23];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[15];
cx q[17],q[26];
cx q[15],q[17];
u1(pi/4) q[17];
u1(-pi/4) q[26];
cx q[15],q[26];
u1(-pi/4) q[15];
u1(-pi/4) q[26];
cx q[17],q[26];
cx q[15],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[26],q[15];
u3(pi,0,pi) q[15];
u1(pi/4) q[15];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[23],q[26];
cx q[23],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
u1(pi/4) q[26];
cx q[26],q[22];
cx q[23],q[26];
cx q[22],q[23];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u3(pi,0,pi) q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
u1(pi/4) q[23];
cx q[22],q[23];
u2(0,pi) q[26];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[22];
u1(-pi/4) q[22];
cx q[23],q[26];
cx q[23],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[23];
u1(pi/4) q[26];
cx q[26],q[22];
cx q[23],q[26];
cx q[22],q[23];
u1(pi/4) q[22];
cx q[22],q[15];
u1(pi/4) q[23];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[23],q[26];
cx q[17],q[23];
u1(-pi/4) q[23];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[23];
u1(-pi/4) q[23];
cx q[17],q[23];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[23],q[26];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[26];
cx q[23],q[26];
cx q[17],q[23];
u1(-pi/4) q[23];
cx q[26],q[17];
u1(pi/4) q[17];
cx q[26],q[23];
u1(-pi/4) q[23];
cx q[17],q[23];
u1(-pi/4) q[26];
cx q[26],q[17];
u2(0,pi) q[17];
cx q[23],q[26];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[26];
cx q[23],q[26];
cx q[24],q[23];
u1(-pi/4) q[23];
cx q[26],q[24];
u1(pi/4) q[24];
cx q[26],q[23];
u1(-pi/4) q[23];
cx q[24],q[23];
u1(-pi/4) q[26];
cx q[26],q[24];
cx q[23],q[26];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u1(pi/4) q[18];
u1(pi/4) q[21];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[26];
cx q[23],q[26];
cx q[24],q[23];
u1(-pi/4) q[23];
cx q[26],q[24];
u1(pi/4) q[24];
cx q[26],q[23];
u1(-pi/4) q[23];
cx q[24],q[23];
u1(-pi/4) q[26];
cx q[26],q[24];
cx q[23],q[26];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u1(pi/4) q[15];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
u1(-pi/4) q[21];
cx q[18],q[21];
u1(-pi/4) q[18];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
cx q[18],q[22];
cx q[21],q[18];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[22],q[15];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
u1(-pi/4) q[22];
cx q[15],q[22];
u1(-pi/4) q[15];
u1(-pi/4) q[22];
u1(pi/4) q[23];
cx q[23],q[22];
cx q[15],q[23];
cx q[22],q[15];
u2(0,pi) q[23];
u2(0,pi) q[24];
measure q[24] -> c[0];
measure q[17] -> c[1];
measure q[25] -> c[2];
measure q[22] -> c[3];
measure q[26] -> c[4];
measure q[15] -> c[5];
measure q[23] -> c[6];
measure q[21] -> c[7];
measure q[18] -> c[8];
measure q[0] -> c[9];
measure q[1] -> c[10];
measure q[2] -> c[11];
measure q[3] -> c[12];
measure q[4] -> c[13];
measure q[5] -> c[14];
measure q[6] -> c[15];
