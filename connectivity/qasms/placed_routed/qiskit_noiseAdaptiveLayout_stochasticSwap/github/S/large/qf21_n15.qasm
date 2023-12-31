OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[10];
u2(0,pi) q[1];
u3(pi,0,pi) q[2];
u2(0,pi) q[2];
swap q[1],q[4];
u3(pi,0,pi) q[7];
u2(0,pi) q[7];
u3(pi,0,pi) q[10];
cx q[10],q[7];
u1(-pi/4) q[7];
u2(0,pi) q[12];
swap q[10],q[12];
cx q[10],q[7];
swap q[10],q[12];
u1(pi/4) q[7];
cx q[10],q[7];
u1(pi/4) q[10];
u1(-pi/4) q[7];
swap q[7],q[10];
cx q[12],q[10];
swap q[10],q[12];
cx q[10],q[7];
u1(pi/4) q[10];
u1(pi/4) q[12];
u2(0,pi) q[12];
swap q[10],q[12];
u1(-pi/4) q[7];
swap q[7],q[10];
cx q[12],q[10];
cx q[7],q[4];
u1(-pi/4) q[4];
cx q[1],q[4];
u1(pi/4) q[4];
cx q[7],q[4];
u1(-pi/4) q[4];
cx q[1],q[4];
swap q[1],q[4];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
u1(pi/4) q[7];
cx q[4],q[7];
u1(pi/4) q[4];
u1(-pi/4) q[7];
cx q[4],q[7];
swap q[1],q[4];
cx q[7],q[4];
u1(-pi/4) q[4];
cx q[1],q[4];
u1(pi/4) q[4];
cx q[7],q[4];
u1(-pi/4) q[4];
cx q[1],q[4];
swap q[1],q[4];
u1(pi/4) q[1];
u2(0,pi) q[1];
u1(pi/4) q[7];
cx q[4],q[7];
u1(pi/4) q[4];
u1(-pi/4) q[7];
cx q[4],q[7];
u2(0,pi) q[7];
cx q[10],q[7];
swap q[10],q[12];
u1(-pi/4) q[7];
cx q[10],q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(pi/4) q[12];
cx q[7],q[10];
swap q[10],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
cx q[7],q[10];
u1(-pi/4) q[10];
u1(pi/4) q[7];
cx q[7],q[10];
u1(-pi/1024) q[7];
swap q[7],q[10];
swap q[10],q[12];
u2(0,pi) q[15];
swap q[12],q[15];
u2(0,pi) q[17];
u2(0,pi) q[18];
u2(0,pi) q[21];
u2(0,pi) q[22];
u2(0,pi) q[23];
u2(0,pi) q[24];
swap q[23],q[24];
swap q[21],q[23];
swap q[18],q[21];
cx q[15],q[18];
u1(pi/1024) q[18];
cx q[15],q[18];
u1(-pi/512) q[15];
u1(-pi/1024) q[18];
swap q[15],q[18];
swap q[12],q[15];
swap q[18],q[21];
u2(0,pi) q[25];
swap q[24],q[25];
swap q[23],q[24];
cx q[21],q[23];
u1(pi/512) q[23];
cx q[21],q[23];
u1(-pi/256) q[21];
u1(-pi/512) q[23];
swap q[21],q[23];
swap q[18],q[21];
swap q[17],q[18];
swap q[23],q[24];
u2(0,pi) q[26];
swap q[25],q[26];
cx q[24],q[25];
u1(pi/256) q[25];
cx q[24],q[25];
u1(-pi/128) q[24];
u1(-pi/256) q[25];
swap q[25],q[26];
cx q[24],q[25];
u1(pi/128) q[25];
cx q[24],q[25];
u1(-pi/64) q[24];
cx q[24],q[23];
u1(pi/64) q[23];
cx q[24],q[23];
u1(-pi/64) q[23];
u1(-pi/32) q[24];
swap q[23],q[24];
cx q[23],q[21];
u1(pi/32) q[21];
cx q[23],q[21];
u1(-pi/32) q[21];
u1(-pi/16) q[23];
swap q[23],q[24];
u1(-pi/128) q[25];
swap q[22],q[25];
cx q[24],q[25];
u1(pi/16) q[25];
cx q[24],q[25];
u1(-pi/8) q[24];
swap q[23],q[24];
swap q[21],q[23];
cx q[21],q[18];
u1(pi/8) q[18];
cx q[21],q[18];
u1(-pi/8) q[18];
u1(-pi/4) q[21];
swap q[18],q[21];
cx q[18],q[15];
u1(pi/4) q[15];
cx q[18],q[15];
u1(-pi/4) q[15];
u1(-pi/512) q[15];
cx q[15],q[12];
u1(pi/512) q[12];
cx q[15],q[12];
u1(-pi/512) q[12];
u1(-pi/256) q[15];
u2(0,pi) q[18];
u1(-pi/16) q[25];
swap q[25],q[26];
swap q[24],q[25];
swap q[22],q[25];
measure q[18] -> c[9];
swap q[15],q[18];
swap q[12],q[15];
cx q[18],q[17];
u1(pi/256) q[17];
cx q[18],q[17];
u1(-pi/256) q[17];
u1(-pi/128) q[18];
swap q[18],q[21];
swap q[21],q[23];
cx q[23],q[24];
u1(pi/128) q[24];
cx q[23],q[24];
u1(-pi/64) q[23];
u1(-pi/128) q[24];
swap q[23],q[24];
swap q[21],q[23];
swap q[18],q[21];
cx q[24],q[25];
u1(pi/64) q[25];
cx q[24],q[25];
u1(-pi/32) q[24];
u1(-pi/64) q[25];
swap q[22],q[25];
cx q[24],q[25];
u1(pi/32) q[25];
cx q[24],q[25];
u1(-pi/16) q[24];
cx q[24],q[23];
u1(pi/16) q[23];
cx q[24],q[23];
u1(-pi/16) q[23];
u1(-pi/8) q[24];
u1(-pi/32) q[25];
swap q[25],q[26];
cx q[24],q[25];
u1(pi/8) q[25];
cx q[24],q[25];
u1(-pi/4) q[24];
swap q[23],q[24];
cx q[23],q[21];
u1(pi/4) q[21];
cx q[23],q[21];
u1(-pi/4) q[21];
u1(-pi/256) q[21];
swap q[18],q[21];
cx q[18],q[15];
u1(pi/256) q[15];
cx q[18],q[15];
u1(-pi/256) q[15];
swap q[12],q[15];
swap q[12],q[13];
swap q[13],q[14];
u1(-pi/128) q[18];
cx q[18],q[17];
u1(pi/128) q[17];
cx q[18],q[17];
u1(-pi/128) q[17];
u1(-pi/64) q[18];
cx q[18],q[21];
u1(pi/64) q[21];
cx q[18],q[21];
u1(-pi/32) q[18];
u1(-pi/64) q[21];
swap q[18],q[21];
swap q[17],q[18];
swap q[15],q[18];
swap q[17],q[18];
u2(0,pi) q[23];
measure q[23] -> c[8];
swap q[21],q[23];
u1(-pi/8) q[25];
swap q[22],q[25];
swap q[24],q[25];
cx q[23],q[24];
u1(pi/32) q[24];
cx q[23],q[24];
u1(-pi/16) q[23];
u1(-pi/32) q[24];
swap q[23],q[24];
swap q[21],q[23];
swap q[25],q[26];
cx q[24],q[25];
u1(pi/16) q[25];
cx q[24],q[25];
u1(-pi/8) q[24];
u1(-pi/16) q[25];
swap q[24],q[25];
swap q[23],q[24];
cx q[25],q[26];
u1(pi/8) q[26];
cx q[25],q[26];
u1(-pi/4) q[25];
cx q[25],q[22];
u1(pi/4) q[22];
cx q[25],q[22];
u1(-pi/4) q[22];
u1(-pi/128) q[22];
swap q[19],q[22];
swap q[16],q[19];
cx q[16],q[14];
u1(pi/128) q[14];
cx q[16],q[14];
u1(-pi/128) q[14];
u1(-pi/64) q[16];
swap q[14],q[16];
swap q[13],q[14];
swap q[12],q[13];
cx q[12],q[15];
u1(pi/64) q[15];
cx q[12],q[15];
u1(-pi/32) q[12];
u1(-pi/64) q[15];
swap q[12],q[15];
swap q[12],q[13];
swap q[13],q[14];
cx q[15],q[18];
swap q[16],q[19];
u1(pi/32) q[18];
cx q[15],q[18];
u1(-pi/16) q[15];
u1(-pi/32) q[18];
swap q[15],q[18];
swap q[12],q[15];
swap q[12],q[13];
cx q[18],q[21];
u1(pi/16) q[21];
cx q[18],q[21];
u1(-pi/8) q[18];
u1(-pi/16) q[21];
swap q[18],q[21];
swap q[15],q[18];
swap q[12],q[15];
cx q[21],q[23];
u1(pi/8) q[23];
cx q[21],q[23];
u1(-pi/4) q[21];
u1(-pi/8) q[23];
swap q[21],q[23];
swap q[18],q[21];
swap q[15],q[18];
u2(0,pi) q[25];
measure q[25] -> c[7];
u1(-pi/8) q[26];
swap q[25],q[26];
swap q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[24];
cx q[23],q[24];
u2(0,pi) q[23];
u1(-pi/4) q[24];
u1(-pi/64) q[24];
swap q[24],q[25];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/64) q[19];
cx q[22],q[19];
u1(-pi/64) q[19];
u1(-pi/32) q[22];
swap q[19],q[22];
swap q[16],q[19];
cx q[16],q[14];
u1(pi/32) q[14];
cx q[16],q[14];
u1(-pi/32) q[14];
u1(-pi/16) q[16];
swap q[14],q[16];
cx q[14],q[13];
u1(pi/16) q[13];
cx q[14],q[13];
u1(-pi/16) q[13];
u1(-pi/8) q[14];
swap q[13],q[14];
cx q[13],q[12];
u1(pi/8) q[12];
cx q[13],q[12];
u1(-pi/8) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[12],q[15];
u1(pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
u1(-pi/4) q[15];
u1(-pi/32) q[15];
swap q[15],q[18];
swap q[16],q[19];
swap q[14],q[16];
swap q[13],q[14];
swap q[18],q[21];
swap q[21],q[23];
swap q[22],q[25];
swap q[19],q[22];
swap q[16],q[19];
swap q[24],q[25];
cx q[23],q[24];
u1(pi/32) q[24];
cx q[23],q[24];
u1(-pi/16) q[23];
u1(-pi/32) q[24];
swap q[23],q[24];
swap q[21],q[23];
swap q[18],q[21];
swap q[24],q[25];
cx q[25],q[22];
u1(pi/16) q[22];
cx q[25],q[22];
u1(-pi/16) q[22];
u1(-pi/8) q[25];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/8) q[19];
cx q[22],q[19];
u1(-pi/8) q[19];
u1(-pi/4) q[22];
swap q[19],q[22];
swap q[16],q[19];
cx q[16],q[14];
u1(pi/4) q[14];
cx q[16],q[14];
u1(-pi/4) q[14];
u1(-pi/16) q[14];
swap q[13],q[14];
swap q[12],q[13];
swap q[12],q[15];
cx q[15],q[18];
u2(0,pi) q[16];
u1(pi/16) q[18];
cx q[15],q[18];
u1(-pi/8) q[15];
u1(-pi/16) q[18];
swap q[15],q[18];
swap q[18],q[21];
swap q[15],q[18];
swap q[24],q[25];
swap q[22],q[25];
swap q[23],q[24];
cx q[21],q[23];
u1(pi/8) q[23];
cx q[21],q[23];
u1(-pi/4) q[21];
u1(-pi/8) q[23];
swap q[21],q[23];
swap q[18],q[21];
swap q[24],q[25];
cx q[23],q[24];
u1(pi/4) q[24];
cx q[23],q[24];
u2(0,pi) q[23];
u1(-pi/4) q[24];
u1(-pi/8) q[24];
swap q[23],q[24];
cx q[23],q[21];
u1(pi/8) q[21];
cx q[23],q[21];
u1(-pi/8) q[21];
swap q[18],q[21];
u1(-pi/4) q[23];
cx q[23],q[21];
u1(pi/4) q[21];
cx q[23],q[21];
u1(-pi/4) q[21];
u1(-pi/4) q[21];
cx q[21],q[18];
u1(pi/4) q[18];
cx q[21],q[18];
u1(-pi/4) q[18];
u2(0,pi) q[18];
u2(0,pi) q[21];
u2(0,pi) q[23];
