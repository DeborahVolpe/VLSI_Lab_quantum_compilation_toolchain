OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[18];
u2(0,pi) q[21];
u1(pi/4) q[21];
swap q[18],q[21];
u1(pi/4) q[22];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[23],q[24];
swap q[21],q[23];
u2(0,pi) q[25];
u1(pi/4) q[25];
u1(pi/4) q[26];
swap q[25],q[26];
cx q[25],q[24];
cx q[26],q[25];
u1(-pi/4) q[25];
swap q[24],q[25];
cx q[25],q[26];
cx q[25],q[24];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
swap q[22],q[25];
swap q[25],q[24];
cx q[24],q[23];
u1(pi/4) q[26];
cx q[26],q[25];
swap q[22],q[25];
cx q[25],q[26];
cx q[22],q[25];
u2(0,pi) q[22];
u1(pi/4) q[22];
u1(pi/4) q[25];
swap q[25],q[22];
cx q[25],q[24];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[24],q[23];
u1(pi/4) q[25];
cx q[25],q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[23];
u1(pi/4) q[24];
cx q[23],q[24];
swap q[24],q[23];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[22];
u2(0,pi) q[26];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[25];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[25],q[26];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
u1(pi/4) q[26];
cx q[26],q[25];
swap q[22],q[25];
cx q[25],q[26];
cx q[22],q[25];
u2(0,pi) q[22];
u1(pi/4) q[22];
u2(0,pi) q[26];
cx q[25],q[26];
u1(pi/4) q[25];
swap q[25],q[22];
cx q[25],q[24];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[24],q[23];
u1(pi/4) q[25];
cx q[25],q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[23],q[24];
u2(0,pi) q[23];
u1(pi/4) q[23];
u1(pi/4) q[24];
u2(0,pi) q[25];
swap q[22],q[25];
cx q[25],q[24];
swap q[24],q[23];
cx q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[24];
swap q[23],q[24];
u1(-pi/4) q[25];
cx q[24],q[25];
u1(-pi/4) q[24];
swap q[24],q[23];
u1(-pi/4) q[25];
cx q[24],q[25];
cx q[23],q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[23],q[24];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[23],q[24];
swap q[24],q[23];
cx q[25],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
u1(pi/4) q[25];
u1(pi/4) q[26];
cx q[26],q[25];
swap q[25],q[26];
cx q[22],q[25];
u1(-pi/4) q[25];
swap q[26],q[25];
cx q[25],q[22];
u1(pi/4) q[22];
cx q[25],q[26];
u1(-pi/4) q[25];
u1(-pi/4) q[26];
swap q[25],q[26];
cx q[22],q[25];
swap q[26],q[25];
cx q[25],q[22];
u2(0,pi) q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[26],q[25];
u1(pi/4) q[25];
u2(0,pi) q[26];
u1(pi/4) q[26];
swap q[25],q[26];
cx q[25],q[24];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[24],q[23];
u1(pi/4) q[25];
cx q[25],q[24];
swap q[23],q[24];
cx q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[23];
u1(pi/4) q[24];
cx q[23],q[24];
swap q[24],q[23];
u2(0,pi) q[25];
u1(pi/4) q[25];
cx q[25],q[26];
cx q[22],q[25];
u1(-pi/4) q[25];
swap q[26],q[25];
cx q[25],q[22];
u1(pi/4) q[22];
cx q[25],q[26];
u1(-pi/4) q[25];
u1(-pi/4) q[26];
swap q[25],q[26];
cx q[22],q[25];
swap q[26],q[25];
cx q[25],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[26],q[25];
swap q[24],q[25];
swap q[23],q[24];
u2(0,pi) q[26];
u1(pi/4) q[26];
cx q[26],q[25];
u1(-pi/4) q[25];
swap q[24],q[25];
cx q[25],q[26];
cx q[25],q[24];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
swap q[25],q[24];
u1(pi/4) q[26];
cx q[26],q[25];
swap q[24],q[25];
cx q[25],q[26];
cx q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[23];
u1(pi/4) q[24];
cx q[23],q[24];
u2(0,pi) q[25];
u1(pi/4) q[25];
swap q[25],q[24];
cx q[24],q[23];
u1(-pi/4) q[23];
cx q[25],q[24];
u1(pi/4) q[24];
swap q[24],q[25];
cx q[24],q[23];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[25],q[24];
cx q[24],q[23];
cx q[25],q[24];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[23];
u1(pi/4) q[24];
cx q[24],q[25];
swap q[25],q[22];
swap q[24],q[25];
cx q[24],q[23];
swap q[23],q[21];
cx q[23],q[24];
cx q[21],q[23];
u1(pi/4) q[23];
swap q[21],q[23];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
swap q[23],q[21];
u1(-pi/4) q[24];
cx q[23],q[24];
cx q[21],q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
swap q[21],q[23];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[24],q[25];
swap q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(pi/4) q[22];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[23];
swap q[23],q[24];
cx q[21],q[23];
u1(-pi/4) q[23];
swap q[24],q[23];
cx q[23],q[21];
u1(pi/4) q[21];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[21],q[23];
swap q[24],q[23];
cx q[23],q[21];
u2(0,pi) q[21];
swap q[18],q[21];
cx q[24],q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[22],q[25];
swap q[25],q[22];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[24],q[25];
swap q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(pi/4) q[22];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[23],q[24];
u1(pi/4) q[25];
cx q[22],q[25];
swap q[25],q[22];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[24],q[25];
swap q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(pi/4) q[22];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[23],q[24];
cx q[21],q[23];
u1(-pi/4) q[23];
swap q[24],q[23];
cx q[23],q[21];
u1(pi/4) q[21];
cx q[23],q[24];
u1(-pi/4) q[23];
swap q[21],q[23];
u1(-pi/4) q[24];
cx q[23],q[24];
cx q[21],q[23];
u2(0,pi) q[23];
u2(0,pi) q[23];
u1(pi/4) q[23];
swap q[23],q[21];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[22],q[25];
swap q[25],q[22];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[24],q[25];
swap q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(pi/4) q[22];
u2(0,pi) q[24];
u1(pi/4) q[24];
cx q[24],q[23];
swap q[21],q[23];
cx q[23],q[24];
cx q[21],q[23];
u1(pi/4) q[23];
swap q[23],q[21];
u1(-pi/4) q[24];
cx q[23],q[24];
u1(-pi/4) q[23];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[21],q[23];
swap q[24],q[23];
cx q[23],q[21];
u2(0,pi) q[21];
cx q[24],q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[22],q[25];
swap q[25],q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
cx q[24],q[25];
u1(pi/4) q[25];
swap q[24],q[25];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[25],q[24];
cx q[25],q[22];
cx q[24],q[25];
u2(0,pi) q[25];
swap q[24],q[25];
cx q[22],q[25];
swap q[23],q[24];
swap q[25],q[24];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[24];
swap q[24],q[25];
cx q[23],q[24];
u2(0,pi) q[26];
swap q[25],q[26];
cx q[25],q[22];
measure q[22] -> c[5];
measure q[24] -> c[6];
swap q[24],q[25];
cx q[23],q[24];
swap q[21],q[23];
swap q[26],q[25];
cx q[24],q[25];
swap q[23],q[24];
swap q[23],q[21];
swap q[18],q[21];
cx q[25],q[24];
cx q[24],q[25];
cx q[24],q[23];
cx q[23],q[21];
cx q[21],q[23];
cx q[21],q[18];
measure q[18] -> c[2];
measure q[21] -> c[0];
measure q[23] -> c[3];
measure q[24] -> c[1];
measure q[25] -> c[4];
measure q[0] -> c[7];
measure q[1] -> c[8];
measure q[2] -> c[9];
measure q[3] -> c[10];
measure q[4] -> c[11];
measure q[5] -> c[12];
measure q[6] -> c[13];
measure q[7] -> c[14];
measure q[8] -> c[15];
