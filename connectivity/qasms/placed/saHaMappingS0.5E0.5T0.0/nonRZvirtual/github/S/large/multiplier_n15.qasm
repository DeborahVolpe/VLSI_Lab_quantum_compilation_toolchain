OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[11];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u3(pi,0,pi)  q[12];
u3(pi,0,pi)  q[8];
u3(pi,0,pi)  q[14];
u3(pi,0,pi)  q[13];
cx q[4], q[7];
cx q[10], q[1];
cx q[12], q[0];
cx q[8], q[11];
cx q[3], q[2];
u1(-pi/4)  q[7];
u1(-pi/4)  q[1];
u1(-pi/4)  q[0];
u1(-pi/4)  q[11];
u1(-pi/4)  q[2];
cx q[14], q[0];
u1(pi/4)  q[0];
cx q[12], q[0];
u1(-pi/4)  q[0];
u1(pi/4)  q[12];
cx q[14], q[0];
u1(pi/4)  q[0];
cx q[14], q[12];
u2(0,pi)  q[0];
u1(pi/4)  q[14];
u1(-pi/4)  q[12];
cx q[0], q[7];
cx q[14], q[12];
u1(pi/4)  q[7];
cx q[14], q[11];
cx q[4], q[7];
u1(pi/4)  q[11];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[8], q[11];
cx q[0], q[7];
u1(pi/4)  q[8];
u1(-pi/4)  q[11];
cx q[0], q[4];
u1(pi/4)  q[7];
cx q[14], q[11];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[14], q[8];
u1(pi/4)  q[11];
cx q[0], q[4];
u2(0,pi)  q[7];
u1(-pi/4)  q[8];
u1(pi/4)  q[14];
u2(0,pi)  q[11];
cx q[0], q[4];
cx q[14], q[8];
cx q[11], q[1];
cx q[4], q[7];
cx q[14], q[2];
u1(pi/4)  q[1];
u1(-pi/4)  q[7];
cx q[10], q[1];
u1(pi/4)  q[2];
cx q[6], q[7];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[3], q[2];
u1(pi/4)  q[7];
cx q[11], q[1];
u1(pi/4)  q[3];
u1(-pi/4)  q[2];
cx q[4], q[7];
cx q[11], q[10];
u1(pi/4)  q[1];
cx q[14], q[2];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[14], q[3];
u1(pi/4)  q[2];
cx q[6], q[7];
cx q[11], q[10];
u2(0,pi)  q[1];
u1(-pi/4)  q[3];
u1(pi/4)  q[14];
u2(0,pi)  q[2];
cx q[6], q[4];
u1(pi/4)  q[7];
cx q[11], q[10];
cx q[14], q[3];
cx q[2], q[5];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[10], q[1];
u2(0,pi)  q[2];
cx q[6], q[4];
u1(-pi/4)  q[1];
cx q[3], q[2];
cx q[7], q[1];
u1(-pi/4)  q[2];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
cx q[1], q[5];
u2(0,pi)  q[1];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[7], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[11], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[11], q[1];
cx q[11], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[7], q[10];
u2(0,pi)  q[11];
u2(0,pi)  q[7];
cx q[8], q[11];
cx q[10], q[1];
cx q[4], q[7];
u1(-pi/4)  q[11];
u1(-pi/4)  q[1];
u1(-pi/4)  q[7];
cx q[6], q[7];
u1(pi/4)  q[7];
cx q[4], q[7];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[6], q[7];
cx q[6], q[4];
u1(pi/4)  q[7];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[6], q[4];
u2(0,pi)  q[7];
cx q[0], q[4];
cx q[4], q[7];
u1(-pi/4)  q[7];
cx q[0], q[7];
u1(pi/4)  q[7];
cx q[4], q[7];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[0], q[7];
cx q[0], q[4];
u1(pi/4)  q[7];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[0], q[4];
u2(0,pi)  q[7];
cx q[0], q[4];
cx q[6], q[4];
u2(0,pi)  q[0];
cx q[4], q[7];
cx q[12], q[0];
u1(-pi/4)  q[7];
u1(-pi/4)  q[0];
cx q[14], q[0];
u1(pi/4)  q[0];
cx q[12], q[0];
u1(-pi/4)  q[0];
u1(pi/4)  q[12];
cx q[14], q[0];
u1(pi/4)  q[0];
cx q[14], q[12];
u2(0,pi)  q[0];
u1(pi/4)  q[14];
u1(-pi/4)  q[12];
cx q[0], q[7];
cx q[14], q[12];
u1(pi/4)  q[7];
cx q[14], q[11];
cx q[4], q[7];
u1(pi/4)  q[11];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[8], q[11];
cx q[0], q[7];
u1(pi/4)  q[8];
u1(-pi/4)  q[11];
cx q[0], q[4];
u1(pi/4)  q[7];
cx q[14], q[11];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[14], q[8];
u1(pi/4)  q[11];
cx q[0], q[4];
u2(0,pi)  q[7];
u1(-pi/4)  q[8];
u1(pi/4)  q[14];
u2(0,pi)  q[11];
cx q[0], q[4];
cx q[14], q[8];
u2(0,pi)  q[11];
cx q[4], q[7];
cx q[14], q[2];
cx q[12], q[11];
u1(-pi/4)  q[7];
u1(pi/4)  q[2];
u1(-pi/4)  q[11];
cx q[6], q[7];
cx q[3], q[2];
cx q[13], q[11];
u1(pi/4)  q[7];
u1(pi/4)  q[3];
u1(-pi/4)  q[2];
u1(pi/4)  q[11];
cx q[4], q[7];
cx q[14], q[2];
cx q[12], q[11];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[14], q[3];
u1(pi/4)  q[2];
u1(-pi/4)  q[11];
u1(pi/4)  q[12];
cx q[6], q[7];
u1(-pi/4)  q[3];
u1(pi/4)  q[14];
u2(0,pi)  q[2];
cx q[13], q[11];
cx q[6], q[4];
u1(pi/4)  q[7];
cx q[14], q[3];
u2(0,pi)  q[2];
u1(pi/4)  q[11];
cx q[13], q[12];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[8], q[2];
u2(0,pi)  q[11];
u1(pi/4)  q[13];
u1(-pi/4)  q[12];
cx q[6], q[4];
u1(-pi/4)  q[2];
cx q[11], q[1];
cx q[13], q[12];
u1(pi/4)  q[1];
cx q[13], q[2];
cx q[10], q[1];
u1(pi/4)  q[2];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[8], q[2];
cx q[11], q[1];
u1(pi/4)  q[8];
u1(-pi/4)  q[2];
cx q[11], q[10];
u1(pi/4)  q[1];
cx q[13], q[2];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[13], q[8];
u1(pi/4)  q[2];
cx q[11], q[10];
u2(0,pi)  q[1];
u1(-pi/4)  q[8];
u1(pi/4)  q[13];
u2(0,pi)  q[2];
cx q[11], q[10];
cx q[13], q[8];
cx q[2], q[5];
cx q[10], q[1];
u2(0,pi)  q[2];
u1(-pi/4)  q[1];
cx q[8], q[2];
cx q[7], q[1];
u1(-pi/4)  q[2];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
cx q[1], q[5];
u2(0,pi)  q[1];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[7], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[11], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[11], q[1];
cx q[11], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[7], q[10];
u2(0,pi)  q[11];
u2(0,pi)  q[7];
cx q[10], q[1];
cx q[12], q[11];
cx q[4], q[7];
u1(-pi/4)  q[1];
u1(-pi/4)  q[11];
u1(-pi/4)  q[7];
cx q[13], q[11];
cx q[6], q[7];
u1(pi/4)  q[11];
u1(pi/4)  q[7];
cx q[12], q[11];
cx q[4], q[7];
u1(-pi/4)  q[11];
u1(pi/4)  q[12];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[13], q[11];
cx q[6], q[7];
u1(pi/4)  q[11];
cx q[13], q[12];
cx q[6], q[4];
u1(pi/4)  q[7];
u2(0,pi)  q[11];
u1(pi/4)  q[13];
u1(-pi/4)  q[12];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[11], q[1];
cx q[13], q[12];
cx q[6], q[4];
u2(0,pi)  q[7];
u1(pi/4)  q[1];
cx q[13], q[2];
cx q[0], q[4];
cx q[10], q[1];
u1(pi/4)  q[2];
cx q[4], q[7];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[8], q[2];
u1(-pi/4)  q[7];
cx q[11], q[1];
u1(pi/4)  q[8];
u1(-pi/4)  q[2];
cx q[0], q[7];
cx q[11], q[10];
u1(pi/4)  q[1];
cx q[13], q[2];
u1(pi/4)  q[7];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[13], q[8];
u1(pi/4)  q[2];
cx q[4], q[7];
cx q[11], q[10];
u2(0,pi)  q[1];
u1(-pi/4)  q[8];
u1(pi/4)  q[13];
u2(0,pi)  q[2];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[11], q[10];
cx q[13], q[8];
u2(0,pi)  q[2];
cx q[0], q[7];
cx q[10], q[1];
cx q[12], q[2];
cx q[0], q[4];
u1(pi/4)  q[7];
u1(-pi/4)  q[1];
u1(-pi/4)  q[2];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[9], q[2];
cx q[0], q[4];
u2(0,pi)  q[7];
u1(pi/4)  q[2];
cx q[0], q[4];
cx q[12], q[2];
cx q[6], q[4];
u1(-pi/4)  q[2];
u1(pi/4)  q[12];
cx q[4], q[7];
cx q[9], q[2];
u1(-pi/4)  q[7];
u1(pi/4)  q[2];
cx q[9], q[12];
cx q[0], q[7];
u2(0,pi)  q[2];
u1(pi/4)  q[9];
u1(-pi/4)  q[12];
u1(pi/4)  q[7];
cx q[2], q[5];
cx q[9], q[12];
cx q[4], q[7];
u2(0,pi)  q[2];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[12], q[2];
cx q[0], q[7];
u1(-pi/4)  q[2];
cx q[0], q[4];
u1(pi/4)  q[7];
cx q[9], q[2];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
u1(pi/4)  q[2];
cx q[0], q[4];
u2(0,pi)  q[7];
cx q[12], q[2];
cx q[0], q[4];
u1(-pi/4)  q[2];
u1(pi/4)  q[12];
cx q[4], q[7];
cx q[9], q[2];
u1(-pi/4)  q[7];
u1(pi/4)  q[2];
cx q[9], q[12];
cx q[6], q[7];
u2(0,pi)  q[2];
u1(pi/4)  q[9];
u1(-pi/4)  q[12];
u1(pi/4)  q[7];
cx q[9], q[12];
cx q[4], q[7];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[6], q[7];
cx q[6], q[4];
u1(pi/4)  q[7];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[6], q[4];
cx q[7], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
cx q[1], q[5];
u2(0,pi)  q[1];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[7], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[7], q[1];
cx q[7], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[7];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[7], q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[10], q[1];
u1(-pi/4)  q[1];
cx q[11], q[1];
u1(pi/4)  q[1];
cx q[10], q[1];
u1(pi/4)  q[10];
u1(-pi/4)  q[1];
cx q[11], q[1];
cx q[11], q[10];
u1(pi/4)  q[1];
u1(pi/4)  q[11];
u1(-pi/4)  q[10];
u2(0,pi)  q[1];
cx q[11], q[10];
cx q[11], q[10];
cx q[7], q[10];
u2(0,pi)  q[7];
cx q[4], q[7];
u1(-pi/4)  q[7];
cx q[6], q[7];
u1(pi/4)  q[7];
cx q[4], q[7];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[6], q[7];
cx q[6], q[4];
u1(pi/4)  q[7];
u1(pi/4)  q[6];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[6], q[4];
u2(0,pi)  q[7];
cx q[0], q[4];
cx q[4], q[7];
u1(-pi/4)  q[7];
cx q[0], q[7];
u1(pi/4)  q[7];
cx q[4], q[7];
u1(pi/4)  q[4];
u1(-pi/4)  q[7];
cx q[0], q[7];
cx q[0], q[4];
u1(pi/4)  q[7];
u1(pi/4)  q[0];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
cx q[0], q[4];
cx q[0], q[4];
cx q[6], q[4];
measure q[4] -> c[0];
measure q[10] -> c[1];
measure q[5] -> c[2];

