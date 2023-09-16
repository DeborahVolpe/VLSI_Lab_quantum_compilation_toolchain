OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[5];
u2(0,pi) q[7];
u1(pi/4) q[7];
u1(pi/4) q[8];
swap q[5],q[8];
u1(pi/4) q[9];
cx q[9],q[8];
u1(pi/4) q[10];
u1(pi/4) q[11];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[12],q[13];
u2(0,pi) q[14];
u1(pi/4) q[14];
u2(0,pi) q[17];
u1(pi/4) q[17];
u1(pi/4) q[18];
u2(0,pi) q[21];
u1(pi/4) q[21];
swap q[18],q[21];
swap q[15],q[18];
swap q[18],q[21];
u1(pi/4) q[22];
u2(0,pi) q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[23],q[24];
u2(0,pi) q[25];
u1(pi/4) q[25];
u2(0,pi) q[26];
u1(pi/4) q[26];
swap q[25],q[26];
swap q[22],q[25];
swap q[19],q[22];
swap q[16],q[19];
swap q[14],q[16];
swap q[11],q[14];
swap q[14],q[16];
swap q[25],q[26];
swap q[22],q[25];
swap q[19],q[22];
swap q[25],q[26];
swap q[8],q[11];
cx q[8],q[9];
cx q[11],q[8];
u1(pi/4) q[8];
u1(-pi/4) q[9];
swap q[9],q[8];
cx q[11],q[8];
u1(-pi/4) q[11];
u1(-pi/4) q[8];
cx q[9],q[8];
swap q[8],q[9];
cx q[11],q[8];
u2(0,pi) q[8];
u1(pi/4) q[8];
swap q[9],q[8];
cx q[8],q[11];
u1(pi/4) q[11];
u1(pi/4) q[8];
cx q[8],q[9];
swap q[5],q[8];
cx q[8],q[11];
swap q[11],q[14];
cx q[11],q[8];
cx q[14],q[11];
u1(pi/4) q[11];
swap q[14],q[11];
u1(-pi/4) q[8];
cx q[11],q[8];
u1(-pi/4) q[11];
swap q[11],q[14];
u1(-pi/4) q[8];
cx q[11],q[8];
cx q[14],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
swap q[14],q[11];
cx q[8],q[11];
u1(pi/4) q[11];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[9],q[8];
u1(pi/4) q[8];
swap q[8],q[5];
cx q[9],q[8];
u1(-pi/4) q[8];
cx q[5],q[8];
swap q[5],q[8];
u1(-pi/4) q[9];
cx q[9],q[8];
u2(0,pi) q[8];
u1(pi/4) q[8];
cx q[8],q[11];
swap q[11],q[8];
cx q[14],q[11];
u1(-pi/4) q[11];
swap q[8],q[11];
cx q[11],q[14];
cx q[11],q[8];
u1(-pi/4) q[11];
u1(pi/4) q[14];
u1(-pi/4) q[8];
swap q[11],q[8];
cx q[14],q[11];
swap q[8],q[11];
cx q[11],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[16],q[14];
cx q[8],q[11];
u1(pi/4) q[11];
u2(0,pi) q[8];
u1(pi/4) q[8];
swap q[8],q[9];
cx q[5],q[8];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[5],q[8];
swap q[9],q[8];
cx q[8],q[5];
u1(-pi/4) q[5];
cx q[9],q[8];
u1(pi/4) q[8];
swap q[8],q[9];
cx q[8],q[5];
u1(-pi/4) q[5];
u1(-pi/4) q[8];
swap q[9],q[8];
cx q[8],q[5];
cx q[9],q[8];
u2(0,pi) q[8];
u2(0,pi) q[8];
u1(pi/4) q[8];
swap q[11],q[8];
swap q[11],q[14];
cx q[14],q[16];
cx q[11],q[14];
u1(pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
cx q[11],q[14];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
cx q[16],q[14];
swap q[16],q[14];
cx q[11],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[14],q[16];
cx q[14],q[11];
u1(pi/4) q[11];
u1(pi/4) q[14];
cx q[14],q[16];
swap q[14],q[13];
swap q[8],q[9];
cx q[5],q[8];
u2(0,pi) q[5];
u1(pi/4) q[5];
u1(pi/4) q[8];
cx q[9],q[8];
swap q[9],q[8];
cx q[5],q[8];
u1(-pi/4) q[8];
swap q[8],q[9];
cx q[8],q[5];
u1(pi/4) q[5];
cx q[8],q[9];
u1(-pi/4) q[8];
u1(-pi/4) q[9];
swap q[9],q[8];
cx q[5],q[8];
swap q[8],q[9];
cx q[8],q[5];
u2(0,pi) q[5];
cx q[9],q[8];
cx q[9],q[8];
u1(pi/4) q[8];
cx q[8],q[11];
swap q[11],q[8];
cx q[14],q[11];
u1(-pi/4) q[11];
swap q[14],q[11];
cx q[8],q[11];
u1(pi/4) q[11];
swap q[11],q[8];
cx q[11],q[14];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[8],q[11];
cx q[11],q[14];
cx q[8],q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
swap q[11],q[14];
cx q[11],q[8];
u2(0,pi) q[11];
u1(pi/4) q[11];
swap q[13],q[14];
cx q[11],q[14];
u1(-pi/4) q[14];
swap q[16],q[14];
cx q[14],q[11];
u1(pi/4) q[11];
cx q[14],q[16];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
cx q[11],q[14];
swap q[16],q[14];
cx q[14],q[11];
u2(0,pi) q[11];
u1(pi/4) q[11];
cx q[16],q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
cx q[16],q[14];
u1(pi/4) q[8];
cx q[11],q[8];
swap q[14],q[11];
swap q[11],q[8];
cx q[13],q[14];
u1(-pi/4) q[14];
swap q[11],q[14];
cx q[14],q[13];
u1(pi/4) q[13];
cx q[14],q[11];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
swap q[14],q[11];
cx q[13],q[14];
swap q[11],q[14];
cx q[14],q[13];
cx q[11],q[14];
u2(0,pi) q[11];
u1(pi/4) q[11];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[13],q[12];
cx q[10],q[12];
u1(pi/4) q[14];
swap q[14],q[11];
cx q[14],q[16];
u1(-pi/4) q[16];
cx q[7],q[10];
u1(-pi/4) q[10];
swap q[7],q[10];
cx q[12],q[10];
u1(pi/4) q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(-pi/4) q[12];
cx q[7],q[10];
swap q[7],q[10];
cx q[12],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[10],q[7];
cx q[10],q[12];
u1(pi/4) q[10];
cx q[10],q[7];
u1(pi/4) q[12];
swap q[12],q[13];
swap q[12],q[15];
swap q[8],q[11];
cx q[11],q[14];
u1(pi/4) q[14];
swap q[16],q[14];
cx q[11],q[14];
u1(-pi/4) q[11];
u1(-pi/4) q[14];
cx q[16],q[14];
swap q[14],q[16];
cx q[11],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[16],q[14];
cx q[14],q[11];
u1(pi/4) q[11];
u2(0,pi) q[14];
u1(pi/4) q[14];
cx q[8],q[11];
swap q[11],q[8];
cx q[14],q[11];
u1(-pi/4) q[11];
swap q[8],q[11];
cx q[11],q[14];
cx q[11],q[8];
u1(-pi/4) q[11];
u1(pi/4) q[14];
u1(-pi/4) q[8];
swap q[11],q[8];
cx q[14],q[11];
swap q[8],q[11];
cx q[11],q[14];
u2(0,pi) q[14];
cx q[8],q[11];
cx q[8],q[11];
measure q[14] -> c[10];
swap q[14],q[16];
cx q[14],q[13];
swap q[13],q[14];
cx q[12],q[13];
u1(-pi/4) q[13];
swap q[12],q[13];
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
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(pi/4) q[13];
swap q[16],q[19];
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
cx q[12],q[13];
swap q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
cx q[14],q[13];
u1(pi/4) q[13];
swap q[13],q[12];
cx q[14],q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u1(-pi/4) q[14];
swap q[14],q[13];
cx q[13],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[14],q[13];
u1(pi/4) q[13];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[15],q[12];
cx q[18],q[15];
cx q[17],q[18];
u1(-pi/4) q[18];
swap q[18],q[15];
cx q[18],q[17];
u1(pi/4) q[17];
cx q[18],q[15];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
swap q[15],q[18];
cx q[17],q[18];
swap q[17],q[18];
cx q[15],q[18];
u2(0,pi) q[18];
u1(pi/4) q[18];
swap q[18],q[17];
cx q[18],q[15];
u1(pi/4) q[15];
u1(pi/4) q[18];
cx q[18],q[17];
cx q[7],q[10];
u1(pi/4) q[10];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
swap q[10],q[12];
swap q[12],q[13];
cx q[14],q[13];
u1(-pi/4) q[13];
swap q[7],q[10];
swap q[10],q[12];
swap q[12],q[13];
cx q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[12];
u1(pi/4) q[14];
cx q[14],q[13];
swap q[13],q[14];
cx q[12],q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[12],q[13];
cx q[12],q[15];
cx q[14],q[13];
u1(pi/4) q[13];
swap q[13],q[12];
cx q[10],q[12];
swap q[12],q[15];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[14],q[13];
swap q[13],q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[12],q[10];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[10],q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
cx q[12],q[10];
u2(0,pi) q[10];
measure q[10] -> c[7];
cx q[15],q[12];
cx q[15],q[12];
measure q[12] -> c[8];
measure q[15] -> c[9];
cx q[16],q[14];
u1(-pi/4) q[14];
swap q[13],q[14];
cx q[14],q[16];
cx q[14],q[13];
u1(-pi/4) q[13];
u1(-pi/4) q[14];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[14],q[13];
cx q[16],q[14];
u2(0,pi) q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[16],q[14];
cx q[13],q[14];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[12],q[13];
u1(pi/4) q[14];
swap q[13],q[14];
swap q[14],q[16];
swap q[15],q[12];
cx q[15],q[18];
u1(-pi/4) q[18];
swap q[17],q[18];
cx q[18],q[15];
u1(pi/4) q[15];
cx q[18],q[17];
u1(-pi/4) q[17];
u1(-pi/4) q[18];
swap q[18],q[17];
cx q[15],q[18];
swap q[17],q[18];
cx q[18],q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
swap q[12],q[15];
cx q[12],q[13];
swap q[13],q[14];
cx q[13],q[12];
u1(-pi/4) q[12];
cx q[14],q[13];
u1(pi/4) q[13];
swap q[14],q[13];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[13],q[12];
cx q[14],q[13];
swap q[12],q[13];
cx q[13],q[14];
cx q[12],q[13];
u2(0,pi) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
u2(0,pi) q[14];
u1(pi/4) q[14];
swap q[15],q[12];
swap q[12],q[13];
swap q[16],q[14];
cx q[17],q[18];
u1(pi/4) q[17];
u1(pi/4) q[18];
cx q[17],q[18];
swap q[18],q[15];
cx q[18],q[17];
cx q[15],q[18];
u1(-pi/4) q[17];
u1(pi/4) q[18];
swap q[17],q[18];
cx q[15],q[18];
u1(-pi/4) q[15];
u1(-pi/4) q[18];
cx q[17],q[18];
swap q[18],q[17];
cx q[15],q[18];
u2(0,pi) q[18];
u1(pi/4) q[18];
swap q[19],q[16];
swap q[21],q[18];
swap q[18],q[17];
cx q[18],q[15];
u1(pi/4) q[15];
cx q[12],q[15];
swap q[15],q[12];
u2(0,pi) q[18];
u1(pi/4) q[18];
cx q[18],q[15];
u1(-pi/4) q[15];
swap q[12],q[15];
cx q[15],q[18];
cx q[15],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
u1(pi/4) q[18];
cx q[18],q[15];
swap q[12],q[15];
cx q[15],q[18];
cx q[12],q[15];
cx q[12],q[15];
measure q[12] -> c[6];
measure q[15] -> c[5];
u2(0,pi) q[18];
measure q[18] -> c[4];
swap q[22],q[19];
swap q[23],q[21];
cx q[25],q[22];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[24],q[25];
cx q[25],q[22];
cx q[24],q[25];
u2(0,pi) q[25];
u1(pi/4) q[25];
swap q[22],q[25];
cx q[25],q[24];
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
cx q[25],q[22];
cx q[24],q[25];
u1(-pi/4) q[25];
swap q[25],q[22];
cx q[25],q[24];
u1(pi/4) q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/4) q[25];
swap q[22],q[25];
cx q[24],q[25];
swap q[25],q[22];
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
measure q[21] -> c[0];
cx q[24],q[23];
u1(pi/4) q[23];
u2(0,pi) q[24];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[22],q[25];
swap q[25],q[24];
cx q[25],q[22];
u1(-pi/4) q[22];
cx q[24],q[25];
u1(pi/4) q[25];
swap q[22],q[25];
cx q[24],q[25];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
cx q[22],q[25];
swap q[25],q[24];
cx q[25],q[22];
u2(0,pi) q[22];
cx q[24],q[25];
u2(0,pi) q[24];
u1(pi/4) q[24];
swap q[24],q[23];
u1(pi/4) q[25];
cx q[24],q[25];
cx q[23],q[24];
u1(-pi/4) q[24];
swap q[25],q[24];
cx q[24],q[23];
u1(pi/4) q[23];
cx q[24],q[25];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
swap q[24],q[25];
cx q[23],q[24];
swap q[25],q[24];
cx q[24],q[23];
u2(0,pi) q[23];
measure q[23] -> c[1];
cx q[25],q[24];
cx q[25],q[24];
measure q[24] -> c[2];
measure q[25] -> c[3];
measure q[11] -> c[11];
measure q[8] -> c[12];
measure q[9] -> c[13];
measure q[5] -> c[14];
measure q[22] -> c[15];
