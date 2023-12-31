OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
cx q[16],q[14];
u2(0,pi) q[14];
u1(pi/4) q[14];
u1(pi/4) q[16];
swap q[14],q[16];
cx q[19],q[22];
u1(pi/4) q[19];
u2(0,pi) q[22];
u1(pi/4) q[22];
u1(pi/4) q[24];
u1(pi/4) q[25];
u1(pi/4) q[26];
cx q[25],q[26];
cx q[22],q[25];
swap q[25],q[26];
cx q[25],q[22];
u1(pi/4) q[22];
u1(-pi/4) q[26];
cx q[25],q[26];
u1(-pi/4) q[25];
swap q[22],q[25];
u1(-pi/4) q[26];
cx q[25],q[26];
cx q[22],q[25];
swap q[22],q[25];
u2(0,pi) q[22];
u2(0,pi) q[22];
swap q[19],q[22];
u1(pi/4) q[19];
cx q[26],q[25];
u1(pi/4) q[26];
measure q[25] -> c[1];
swap q[25],q[26];
cx q[25],q[22];
swap q[19],q[22];
cx q[22],q[25];
cx q[19],q[22];
swap q[19],q[22];
u1(pi/4) q[19];
u1(-pi/4) q[25];
cx q[22],q[25];
u1(-pi/4) q[22];
swap q[19],q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[19],q[22];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
cx q[22],q[19];
swap q[19],q[22];
cx q[16],q[19];
swap q[19],q[22];
cx q[19],q[16];
u1(pi/4) q[16];
u1(-pi/4) q[22];
cx q[19],q[22];
u1(-pi/4) q[19];
swap q[16],q[19];
u1(-pi/4) q[22];
cx q[19],q[22];
cx q[16],q[19];
swap q[16],q[19];
u2(0,pi) q[16];
u2(0,pi) q[16];
swap q[14],q[16];
u1(pi/4) q[14];
cx q[22],q[19];
measure q[19] -> c[0];
u1(pi/4) q[22];
swap q[19],q[22];
cx q[19],q[16];
swap q[16],q[19];
cx q[14],q[16];
swap q[14],q[16];
u1(-pi/4) q[14];
cx q[19],q[16];
swap q[16],q[19];
cx q[16],q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[16];
swap q[14],q[16];
u1(pi/4) q[19];
cx q[19],q[16];
swap q[14],q[16];
cx q[16],q[19];
cx q[14],q[16];
u2(0,pi) q[19];
u2(0,pi) q[25];
swap q[22],q[25];
cx q[19],q[22];
u2(0,pi) q[19];
u1(pi/4) q[19];
u1(pi/4) q[22];
swap q[24],q[25];
cx q[22],q[25];
cx q[19],q[22];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/4) q[19];
u1(-pi/4) q[25];
cx q[22],q[25];
u1(-pi/4) q[22];
swap q[19],q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
cx q[19],q[22];
swap q[22],q[25];
cx q[22],q[19];
u2(0,pi) q[25];
u3(pi,0,pi) q[25];
measure q[16] -> c[2];
measure q[14] -> c[3];
measure q[19] -> c[4];
measure q[22] -> c[5];
measure q[25] -> c[6];
measure q[23] -> c[7];
measure q[5] -> c[8];
measure q[11] -> c[9];
measure q[17] -> c[10];
measure q[9] -> c[11];
measure q[8] -> c[12];
measure q[7] -> c[13];
measure q[12] -> c[14];
measure q[3] -> c[15];
