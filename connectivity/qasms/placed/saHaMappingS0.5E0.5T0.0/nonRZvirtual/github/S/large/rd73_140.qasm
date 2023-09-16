OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4)  q[11];
u1(pi/4)  q[18];
u1(pi/4)  q[8];
u1(pi/4)  q[12];
u1(pi/4)  q[7];
u1(pi/4)  q[4];
u1(pi/4)  q[6];
u2(0,pi)  q[10];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
cx q[18], q[11];
u1(pi/4)  q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[2];
cx q[10], q[18];
cx q[11], q[10];
u1(-pi/4)  q[18];
cx q[11], q[18];
u1(pi/4)  q[10];
u1(-pi/4)  q[11];
u1(-pi/4)  q[18];
cx q[10], q[18];
cx q[11], q[10];
cx q[18], q[11];
u2(0,pi)  q[10];
cx q[11], q[18];
u1(pi/4)  q[10];
u1(pi/4)  q[18];
cx q[10], q[8];
cx q[1], q[10];
cx q[8], q[1];
u1(-pi/4)  q[10];
cx q[8], q[10];
u1(pi/4)  q[1];
u1(-pi/4)  q[8];
u1(-pi/4)  q[10];
cx q[1], q[10];
cx q[8], q[1];
cx q[10], q[8];
u2(0,pi)  q[1];
u1(pi/4)  q[8];
u2(0,pi)  q[10];
u1(pi/4)  q[1];
cx q[8], q[18];
u1(pi/4)  q[10];
cx q[1], q[12];
cx q[10], q[8];
cx q[2], q[1];
cx q[18], q[10];
u1(-pi/4)  q[8];
cx q[12], q[2];
u1(-pi/4)  q[1];
cx q[18], q[8];
u1(pi/4)  q[10];
cx q[12], q[1];
u1(pi/4)  q[2];
u1(-pi/4)  q[18];
u1(-pi/4)  q[8];
u1(-pi/4)  q[12];
u1(-pi/4)  q[1];
cx q[10], q[8];
cx q[2], q[1];
cx q[18], q[10];
cx q[12], q[2];
cx q[8], q[18];
u2(0,pi)  q[10];
cx q[1], q[12];
u2(0,pi)  q[2];
cx q[18], q[8];
u1(pi/4)  q[10];
u1(pi/4)  q[12];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[8];
cx q[10], q[12];
u1(pi/4)  q[1];
u1(pi/4)  q[2];
cx q[1], q[10];
cx q[12], q[1];
u1(-pi/4)  q[10];
cx q[12], q[10];
u1(pi/4)  q[1];
u1(-pi/4)  q[12];
u1(-pi/4)  q[10];
cx q[1], q[10];
cx q[12], q[1];
cx q[10], q[12];
u2(0,pi)  q[1];
u1(pi/4)  q[12];
u2(0,pi)  q[10];
u1(pi/4)  q[1];
cx q[12], q[8];
u1(pi/4)  q[10];
cx q[1], q[7];
cx q[10], q[12];
cx q[2], q[1];
cx q[8], q[10];
u1(-pi/4)  q[12];
cx q[7], q[2];
u1(-pi/4)  q[1];
cx q[8], q[12];
u1(pi/4)  q[10];
cx q[7], q[1];
u1(pi/4)  q[2];
u1(-pi/4)  q[8];
u1(-pi/4)  q[12];
u1(-pi/4)  q[7];
u1(-pi/4)  q[1];
cx q[10], q[12];
cx q[2], q[1];
cx q[8], q[10];
cx q[7], q[2];
cx q[12], q[8];
u2(0,pi)  q[10];
cx q[1], q[7];
u2(0,pi)  q[2];
cx q[8], q[12];
u1(pi/4)  q[10];
u1(pi/4)  q[7];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[12];
cx q[10], q[7];
u1(pi/4)  q[1];
u1(pi/4)  q[2];
cx q[1], q[10];
cx q[7], q[1];
u1(-pi/4)  q[10];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(-pi/4)  q[7];
u1(-pi/4)  q[10];
cx q[1], q[10];
cx q[7], q[1];
cx q[10], q[7];
u2(0,pi)  q[1];
u1(pi/4)  q[7];
u2(0,pi)  q[10];
u1(pi/4)  q[1];
cx q[7], q[12];
u1(pi/4)  q[10];
cx q[1], q[4];
cx q[10], q[7];
cx q[2], q[1];
cx q[12], q[10];
u1(-pi/4)  q[7];
cx q[4], q[2];
u1(-pi/4)  q[1];
cx q[12], q[7];
u1(pi/4)  q[10];
cx q[4], q[1];
u1(pi/4)  q[2];
u1(-pi/4)  q[12];
u1(-pi/4)  q[7];
u1(-pi/4)  q[4];
u1(-pi/4)  q[1];
cx q[10], q[7];
cx q[2], q[1];
cx q[12], q[10];
cx q[4], q[2];
cx q[7], q[12];
u2(0,pi)  q[10];
cx q[1], q[4];
u2(0,pi)  q[2];
cx q[12], q[7];
u1(pi/4)  q[10];
u1(pi/4)  q[4];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[7];
cx q[10], q[4];
u1(pi/4)  q[1];
u1(pi/4)  q[2];
cx q[1], q[10];
cx q[4], q[1];
u1(-pi/4)  q[10];
cx q[4], q[10];
u1(pi/4)  q[1];
u1(-pi/4)  q[4];
u1(-pi/4)  q[10];
cx q[1], q[10];
cx q[4], q[1];
cx q[10], q[4];
u2(0,pi)  q[1];
u1(pi/4)  q[4];
u2(0,pi)  q[10];
u1(pi/4)  q[1];
cx q[4], q[7];
u1(pi/4)  q[10];
cx q[1], q[6];
cx q[10], q[4];
cx q[2], q[1];
cx q[7], q[10];
u1(-pi/4)  q[4];
cx q[6], q[2];
u1(-pi/4)  q[1];
cx q[7], q[4];
u1(pi/4)  q[10];
cx q[6], q[1];
u1(pi/4)  q[2];
u1(-pi/4)  q[7];
u1(-pi/4)  q[4];
u1(-pi/4)  q[6];
u1(-pi/4)  q[1];
cx q[10], q[4];
cx q[2], q[1];
cx q[7], q[10];
cx q[6], q[2];
cx q[4], q[7];
u2(0,pi)  q[10];
cx q[1], q[6];
u2(0,pi)  q[2];
cx q[7], q[4];
u2(0,pi)  q[10];
u1(pi/4)  q[6];
u1(pi/4)  q[4];
u1(pi/4)  q[10];
cx q[6], q[4];
cx q[10], q[6];
cx q[4], q[10];
u1(-pi/4)  q[6];
cx q[4], q[6];
u1(pi/4)  q[10];
u1(-pi/4)  q[4];
u1(-pi/4)  q[6];
cx q[10], q[6];
cx q[4], q[10];
cx q[6], q[4];
u2(0,pi)  q[10];
cx q[4], q[6];
measure q[11] -> c[0];
measure q[18] -> c[1];
measure q[8] -> c[2];
measure q[12] -> c[3];
measure q[7] -> c[4];
measure q[4] -> c[5];
measure q[6] -> c[6];
measure q[10] -> c[7];
measure q[1] -> c[8];
measure q[2] -> c[9];
measure q[3] -> c[10];
measure q[0] -> c[11];
measure q[5] -> c[12];
measure q[14] -> c[13];
measure q[13] -> c[14];
measure q[9] -> c[15];

