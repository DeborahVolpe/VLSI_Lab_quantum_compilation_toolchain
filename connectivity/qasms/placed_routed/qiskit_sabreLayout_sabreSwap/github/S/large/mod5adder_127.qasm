OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[6];
u1(pi/4) q[7];
u3(pi,0,pi) q[10];
u1(pi/4) q[10];
cx q[10],q[7];
u3(pi,0,pi) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[13],q[12];
swap q[12],q[13];
u3(pi,0,pi) q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[12],q[15];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
u1(pi/4) q[15];
cx q[15],q[12];
swap q[13],q[12];
cx q[12],q[15];
cx q[13],q[12];
u1(pi/4) q[12];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[12],q[13];
cx q[12],q[10];
u1(-pi/4) q[10];
u2(0,pi) q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
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
cx q[15],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[12],q[15];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
u1(pi/4) q[15];
cx q[15],q[12];
swap q[13],q[12];
cx q[12],q[15];
cx q[13],q[12];
u1(pi/4) q[12];
u2(0,pi) q[13];
u1(pi/4) q[13];
swap q[12],q[13];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[7],q[10];
u1(pi/4) q[10];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[10],q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[12],q[10];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[12],q[10];
swap q[10],q[12];
u1(-pi/4) q[7];
cx q[7],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[12],q[10];
cx q[10],q[7];
u2(0,pi) q[10];
u1(pi/4) q[10];
cx q[13],q[12];
swap q[12],q[15];
swap q[10],q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[12],q[15];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[15],q[12];
cx q[12],q[13];
cx q[15],q[12];
u2(0,pi) q[12];
swap q[12],q[15];
cx q[13],q[12];
cx q[12],q[15];
u1(pi/4) q[12];
u2(0,pi) q[13];
u1(pi/4) q[13];
u2(0,pi) q[15];
u1(pi/4) q[15];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[6],q[7];
cx q[10],q[7];
swap q[12],q[10];
cx q[15],q[12];
u1(-pi/4) q[12];
swap q[7],q[10];
swap q[10],q[12];
cx q[12],q[15];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(-pi/4) q[12];
swap q[12],q[10];
u1(pi/4) q[15];
cx q[15],q[12];
swap q[15],q[12];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[12],q[15];
cx q[12],q[10];
u3(pi,0,pi) q[10];
u1(pi/4) q[10];
swap q[10],q[7];
u1(pi/4) q[12];
cx q[12],q[10];
cx q[13],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[10],q[12];
u1(pi/4) q[12];
swap q[12],q[13];
cx q[10],q[12];
u1(-pi/4) q[10];
u1(-pi/4) q[12];
cx q[13],q[12];
swap q[13],q[12];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[15];
swap q[12],q[13];
cx q[12],q[10];
u3(pi,0,pi) q[10];
u1(pi/4) q[10];
cx q[10],q[7];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[15],q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[15],q[12];
swap q[13],q[12];
cx q[12],q[15];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
swap q[12],q[15];
swap q[7],q[6];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[6],q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[6],q[7];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
cx q[10],q[7];
swap q[10],q[7];
cx q[6],q[7];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
u1(pi/4) q[6];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[10],q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
u1(-pi/4) q[10];
swap q[10],q[7];
u1(-pi/4) q[12];
cx q[10],q[12];
cx q[7],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[12],q[10];
u1(pi/4) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[15],q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
swap q[12],q[15];
u1(-pi/4) q[13];
cx q[12],q[13];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[12],q[10];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[12],q[10];
u1(-pi/4) q[7];
swap q[7],q[10];
cx q[10],q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[15],q[12];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[13],q[12];
swap q[12],q[13];
cx q[7],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[10],q[12];
swap q[13],q[12];
cx q[12],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[13],q[12];
swap q[12],q[15];
swap q[7],q[10];
cx q[7],q[6];
cx q[10],q[7];
u1(-pi/4) q[7];
swap q[10],q[7];
cx q[6],q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[6],q[7];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
cx q[10],q[7];
swap q[10],q[7];
cx q[6],q[7];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
u3(pi,0,pi) q[6];
u1(pi/4) q[6];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[10],q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
u1(-pi/4) q[10];
swap q[10],q[7];
u1(-pi/4) q[12];
cx q[10],q[12];
cx q[7],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[12],q[10];
u1(pi/4) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
swap q[12],q[13];
u1(-pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[12],q[10];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[12],q[10];
u1(-pi/4) q[7];
swap q[7],q[10];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[15],q[12];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[13],q[12];
swap q[12],q[13];
cx q[7],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
swap q[12],q[13];
cx q[10],q[12];
swap q[13],q[12];
cx q[12],q[10];
u2(0,pi) q[10];
u3(pi,0,pi) q[10];
u1(pi/4) q[10];
cx q[13],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[12],q[15];
u1(pi/4) q[13];
cx q[13],q[12];
swap q[15],q[12];
swap q[7],q[10];
cx q[7],q[6];
cx q[10],q[7];
u1(-pi/4) q[7];
swap q[10],q[7];
cx q[6],q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[6],q[7];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
cx q[10],q[7];
swap q[10],q[7];
cx q[6],q[7];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
u1(pi/4) q[6];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[12],q[10];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
u1(-pi/4) q[10];
swap q[10],q[7];
u1(-pi/4) q[12];
cx q[10],q[12];
cx q[7],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[12],q[10];
u1(pi/4) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[13],q[12];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
swap q[12],q[13];
u1(-pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[10],q[12];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[12],q[10];
swap q[12],q[10];
u1(-pi/4) q[7];
cx q[7],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[10],q[12];
cx q[10],q[7];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[12],q[13];
cx q[12],q[15];
u1(pi/4) q[12];
u1(pi/4) q[15];
cx q[12],q[15];
cx q[10],q[12];
u1(-pi/4) q[12];
swap q[12],q[15];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
cx q[10],q[12];
swap q[12],q[15];
cx q[12],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[15];
cx q[15],q[12];
swap q[13],q[12];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
cx q[10],q[7];
u1(-pi/4) q[7];
swap q[10],q[7];
cx q[6],q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[6],q[7];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
cx q[10],q[7];
swap q[10],q[7];
cx q[6],q[7];
u2(0,pi) q[7];
u1(pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
u1(pi/4) q[6];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[12],q[10];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
u1(-pi/4) q[10];
swap q[10],q[7];
u1(-pi/4) q[12];
cx q[10],q[12];
cx q[7],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[7],q[10];
cx q[12],q[10];
u1(pi/4) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[15];
cx q[13],q[12];
u1(pi/4) q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
cx q[13],q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
cx q[15],q[12];
swap q[12],q[15];
cx q[13],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[10];
swap q[10],q[7];
cx q[10],q[12];
u1(-pi/4) q[12];
cx q[7],q[10];
u1(pi/4) q[10];
swap q[10],q[12];
cx q[7],q[10];
u1(-pi/4) q[10];
cx q[12],q[10];
swap q[12],q[10];
u1(-pi/4) q[7];
cx q[7],q[10];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[10],q[12];
cx q[10],q[7];
u2(0,pi) q[10];
u1(pi/4) q[10];
swap q[12],q[15];
cx q[12],q[13];
u1(pi/4) q[12];
u1(pi/4) q[13];
cx q[12],q[13];
cx q[10],q[12];
u1(-pi/4) q[12];
swap q[12],q[13];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[13];
u1(-pi/4) q[12];
swap q[10],q[12];
u1(-pi/4) q[13];
cx q[12],q[13];
cx q[10],q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[15];
swap q[13],q[12];
cx q[12],q[10];
u1(pi/4) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u1(-pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[12],q[13];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u1(-pi/4) q[15];
swap q[15],q[12];
cx q[12],q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
u1(pi/4) q[13];
cx q[15],q[12];
u1(pi/4) q[12];
u2(0,pi) q[15];
u1(pi/4) q[15];
swap q[12],q[15];
u1(pi/4) q[7];
swap q[6],q[7];
cx q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
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
cx q[12],q[15];
cx q[13],q[12];
u1(-pi/4) q[12];
swap q[13],q[12];
cx q[15],q[12];
u1(pi/4) q[12];
swap q[12],q[13];
cx q[15],q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
swap q[13],q[12];
u1(-pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[12];
swap q[12],q[13];
cx q[12],q[15];
u2(0,pi) q[12];
u1(pi/4) q[12];
u3(pi,0,pi) q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[7],q[10];
u1(pi/4) q[10];
u1(pi/4) q[7];
cx q[7],q[10];
swap q[10],q[12];
cx q[10],q[7];
cx q[12],q[10];
u1(pi/4) q[10];
swap q[12],q[10];
u1(-pi/4) q[7];
cx q[10],q[7];
u1(-pi/4) q[10];
swap q[10],q[12];
u1(-pi/4) q[7];
cx q[10],q[7];
cx q[12],q[10];
u2(0,pi) q[10];
measure q[10] -> c[2];
swap q[12],q[10];
swap q[13],q[12];
cx q[7],q[10];
measure q[10] -> c[1];
swap q[10],q[12];
swap q[12],q[15];
u1(pi/4) q[7];
cx q[7],q[6];
cx q[10],q[7];
u1(-pi/4) q[7];
swap q[6],q[7];
cx q[7],q[10];
u1(pi/4) q[10];
cx q[7],q[6];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
swap q[7],q[10];
cx q[7],q[6];
cx q[10],q[7];
u2(0,pi) q[7];
u3(pi,0,pi) q[7];
u1(pi/4) q[7];
swap q[10],q[7];
cx q[6],q[7];
u3(pi,0,pi) q[6];
u1(pi/4) q[7];
cx q[10],q[7];
cx q[12],q[10];
u1(-pi/4) q[10];
swap q[7],q[10];
cx q[10],q[12];
cx q[10],q[7];
u1(-pi/4) q[10];
u1(pi/4) q[12];
swap q[10],q[12];
u1(-pi/4) q[7];
cx q[10],q[7];
cx q[12],q[10];
u2(0,pi) q[10];
measure q[6] -> c[3];
measure q[10] -> c[4];
swap q[10],q[7];
cx q[10],q[12];
measure q[12] -> c[0];
measure q[10] -> c[5];
measure q[19] -> c[6];
measure q[18] -> c[7];
measure q[20] -> c[8];
measure q[22] -> c[9];
measure q[8] -> c[10];
measure q[16] -> c[11];
measure q[23] -> c[12];
measure q[0] -> c[13];
measure q[14] -> c[14];
measure q[3] -> c[15];
