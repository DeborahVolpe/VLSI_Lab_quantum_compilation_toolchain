OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u3(pi,0,pi) q[12];
u2(0,pi) q[12];
u3(pi,0,pi) q[17];
u2(0,pi) q[17];
u3(pi,0,pi) q[18];
u2(0,pi) q[18];
u2(0,pi) q[19];
u2(0,pi) q[20];
u2(0,pi) q[21];
u2(0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[18];
u1(-pi/4) q[18];
u2(0,pi) q[24];
u2(0,pi) q[25];
u3(pi,0,pi) q[25];
cx q[25],q[18];
u1(pi/4) q[18];
cx q[23],q[18];
u1(-pi/4) q[18];
u1(pi/4) q[23];
cx q[25],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
u3(pi,0,pi) q[21];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[17];
u1(-pi/4) q[17];
u3(pi,0,pi) q[25];
cx q[25],q[17];
u1(pi/4) q[17];
cx q[23],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[23];
cx q[25],q[17];
u1(pi/4) q[17];
u2(0,pi) q[17];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[19];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[12];
u1(-pi/4) q[12];
cx q[25],q[12];
u1(pi/4) q[12];
cx q[23],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[23];
cx q[25],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
cx q[17],q[20];
u1(-pi/4) q[20];
cx q[18],q[20];
u1(pi/4) q[20];
cx q[17],q[20];
u1(pi/4) q[17];
u1(-pi/4) q[20];
cx q[18],q[20];
cx q[18],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[18];
cx q[18],q[17];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[19];
u3(pi,0,pi) q[19];
u3(pi,0,pi) q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[12],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[12],q[23];
cx q[12],q[20];
u1(pi/4) q[12];
u1(-pi/4) q[20];
cx q[12],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[24];
u1(-pi/4) q[24];
u3(pi,0,pi) q[26];
u2(0,pi) q[26];
cx q[21],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[21],q[26];
u1(pi/4) q[21];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
u3(pi,0,pi) q[21];
u3(pi,0,pi) q[21];
u3(pi,0,pi) q[22];
u3(pi,0,pi) q[22];
u1(pi/4) q[26];
u2(0,pi) q[26];
cx q[26],q[24];
u1(pi/4) q[24];
cx q[23],q[24];
u1(pi/4) q[23];
u1(-pi/4) q[24];
cx q[26],q[24];
u1(pi/4) q[24];
u2(0,pi) q[24];
u3(pi,0,pi) q[24];
u2(0,pi) q[24];
u2(0,pi) q[24];
cx q[26],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[26];
cx q[26],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[12],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[12],q[23];
cx q[12],q[20];
u1(pi/4) q[12];
u1(-pi/4) q[20];
cx q[12],q[20];
u2(0,pi) q[12];
u2(0,pi) q[20];
cx q[17],q[20];
u1(-pi/4) q[20];
cx q[18],q[20];
u1(pi/4) q[20];
cx q[17],q[20];
u1(pi/4) q[17];
u1(-pi/4) q[20];
cx q[18],q[20];
cx q[18],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[18];
cx q[18],q[17];
u2(0,pi) q[17];
u2(0,pi) q[18];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
u2(0,pi) q[26];
cx q[21],q[26];
u1(-pi/4) q[26];
cx q[22],q[26];
u1(pi/4) q[26];
cx q[21],q[26];
u1(pi/4) q[21];
u1(-pi/4) q[26];
cx q[22],q[26];
cx q[22],q[21];
u1(-pi/4) q[21];
u1(pi/4) q[22];
cx q[22],q[21];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
cx q[20],q[23];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[12];
u1(-pi/4) q[12];
cx q[25],q[12];
u1(pi/4) q[12];
cx q[23],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[23];
cx q[25],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[19];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[17];
u1(-pi/4) q[17];
cx q[25],q[17];
u1(pi/4) q[17];
cx q[23],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[23];
cx q[25],q[17];
u1(pi/4) q[17];
u2(0,pi) q[17];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
u3(pi,0,pi) q[21];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[18];
u1(-pi/4) q[18];
u3(pi,0,pi) q[25];
cx q[25],q[18];
u1(pi/4) q[18];
cx q[23],q[18];
u1(-pi/4) q[18];
u1(pi/4) q[23];
cx q[25],q[18];
u1(pi/4) q[18];
u2(0,pi) q[18];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
u2(0,pi) q[21];
u3(pi,0,pi) q[21];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u2(0,pi) q[19];
u3(pi,0,pi) q[19];
u2(0,pi) q[22];
u3(pi,0,pi) q[22];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u1(pi/4) q[23];
u2(0,pi) q[23];
cx q[23],q[24];
u1(-pi/4) q[24];
u3(pi,0,pi) q[25];
u2(0,pi) q[25];
u3(pi,0,pi) q[25];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[23],q[24];
u1(pi/4) q[23];
u1(-pi/4) q[24];
cx q[25],q[24];
u1(pi/4) q[24];
u2(0,pi) q[24];
u2(0,pi) q[24];
u3(pi,0,pi) q[24];
u2(0,pi) q[24];
cx q[25],q[23];
u1(-pi/4) q[23];
u1(pi/4) q[25];
cx q[25],q[23];
u2(0,pi) q[23];
cx q[20],q[23];
u1(-pi/4) q[23];
cx q[21],q[23];
u1(pi/4) q[23];
cx q[20],q[23];
u1(pi/4) q[20];
u1(-pi/4) q[23];
cx q[21],q[23];
cx q[21],q[20];
u1(-pi/4) q[20];
u1(pi/4) q[21];
cx q[21],q[20];
u2(0,pi) q[20];
u3(pi,0,pi) q[21];
u2(0,pi) q[21];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
cx q[22],q[20];
u1(-pi/4) q[20];
cx q[19],q[20];
u1(pi/4) q[20];
u2(0,pi) q[20];
u1(pi/4) q[22];
cx q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[19];
u2(0,pi) q[19];
u3(pi,0,pi) q[22];
u2(0,pi) q[22];
u1(pi/4) q[23];
u2(0,pi) q[23];
u3(pi,0,pi) q[25];
u2(0,pi) q[25];
u1(pi/4) q[26];
u2(0,pi) q[26];
measure q[19] -> c[0];
measure q[22] -> c[1];
measure q[21] -> c[2];
measure q[25] -> c[3];
