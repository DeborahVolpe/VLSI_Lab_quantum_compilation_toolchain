OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
u1(pi/4)  q[2];
cx q[5], q[8];
cx q[9], q[3];
cx q[2], q[9];
cx q[3], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[3], q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[3], q[2];
u2(0,pi)  q[2];
cx q[9], q[3];
u2(0,pi)  q[2];
u1(pi/4)  q[3];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[9];
cx q[9], q[5];
u1(-pi/4)  q[5];
cx q[8], q[9];
cx q[8], q[5];
u1(pi/4)  q[9];
u1(-pi/4)  q[5];
u1(-pi/4)  q[8];
cx q[9], q[5];
cx q[8], q[9];
cx q[5], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[5];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[5], q[8];
cx q[9], q[3];
cx q[2], q[9];
cx q[3], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[3], q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[3], q[2];
u2(0,pi)  q[2];
cx q[9], q[3];
u1(pi/4)  q[3];
u2(0,pi)  q[9];
u1(pi/4)  q[9];
cx q[9], q[5];
u1(-pi/4)  q[5];
cx q[8], q[9];
cx q[8], q[5];
u1(pi/4)  q[9];
u1(-pi/4)  q[5];
u1(-pi/4)  q[8];
cx q[9], q[5];
cx q[8], q[9];
cx q[5], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[5];
u3(pi,0,pi)  q[8];
u2(0,pi)  q[9];
cx q[3], q[5];
cx q[8], q[2];
u1(pi/4)  q[9];
u2(0,pi)  q[2];
u1(pi/4)  q[8];
u1(pi/4)  q[2];
cx q[14], q[8];
cx q[9], q[14];
u1(-pi/4)  q[14];
cx q[8], q[9];
cx q[8], q[14];
u1(pi/4)  q[9];
u1(-pi/4)  q[14];
u1(-pi/4)  q[8];
cx q[9], q[14];
cx q[8], q[9];
cx q[14], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[14], q[1];
cx q[8], q[9];
cx q[2], q[8];
u1(-pi/4)  q[8];
cx q[9], q[2];
u1(pi/4)  q[2];
cx q[9], q[8];
u1(-pi/4)  q[8];
u1(-pi/4)  q[9];
cx q[2], q[8];
cx q[9], q[2];
u2(0,pi)  q[2];
cx q[8], q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u1(pi/4)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[8];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u2(0,pi)  q[14];
u2(0,pi)  q[8];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[3];
u1(-pi/4)  q[3];
cx q[5], q[14];
cx q[5], q[3];
u1(pi/4)  q[14];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[14], q[3];
cx q[5], q[14];
cx q[3], q[5];
u2(0,pi)  q[14];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
cx q[3], q[5];
cx q[14], q[1];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[1];
cx q[8], q[9];
cx q[2], q[8];
u1(-pi/4)  q[8];
cx q[9], q[2];
u1(pi/4)  q[2];
cx q[9], q[8];
u1(-pi/4)  q[8];
u1(-pi/4)  q[9];
cx q[2], q[8];
cx q[9], q[2];
u2(0,pi)  q[2];
cx q[8], q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u2(0,pi)  q[14];
u2(0,pi)  q[8];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[3];
u1(-pi/4)  q[3];
cx q[5], q[14];
cx q[5], q[3];
u1(pi/4)  q[14];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[14], q[3];
cx q[5], q[14];
cx q[3], q[5];
u2(0,pi)  q[14];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
cx q[3], q[5];
cx q[14], q[1];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[8];
cx q[9], q[14];
u1(-pi/4)  q[14];
cx q[8], q[9];
cx q[8], q[14];
u1(pi/4)  q[9];
u1(-pi/4)  q[14];
u1(-pi/4)  q[8];
cx q[9], q[14];
cx q[8], q[9];
cx q[14], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[14], q[1];
cx q[8], q[9];
cx q[2], q[8];
u1(-pi/4)  q[8];
cx q[9], q[2];
u1(pi/4)  q[2];
cx q[9], q[8];
u1(-pi/4)  q[8];
u1(-pi/4)  q[9];
cx q[2], q[8];
cx q[9], q[2];
u2(0,pi)  q[2];
cx q[8], q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u1(pi/4)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[8];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u2(0,pi)  q[14];
u2(0,pi)  q[8];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[3];
u1(-pi/4)  q[3];
cx q[5], q[14];
cx q[5], q[3];
u1(pi/4)  q[14];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[14], q[3];
cx q[5], q[14];
cx q[3], q[5];
u2(0,pi)  q[14];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
cx q[3], q[5];
cx q[14], q[1];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[1];
cx q[8], q[9];
cx q[2], q[8];
u1(-pi/4)  q[8];
cx q[9], q[2];
u1(pi/4)  q[2];
cx q[9], q[8];
u1(-pi/4)  q[8];
u1(-pi/4)  q[9];
cx q[2], q[8];
cx q[9], q[2];
u2(0,pi)  q[2];
cx q[8], q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u1(pi/4)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[8];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u1(pi/4)  q[1];
u2(0,pi)  q[14];
u2(0,pi)  q[8];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[14], q[3];
u1(-pi/4)  q[3];
cx q[5], q[14];
cx q[5], q[3];
u1(pi/4)  q[14];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[14], q[3];
cx q[5], q[14];
cx q[3], q[5];
u2(0,pi)  q[14];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
cx q[14], q[1];
cx q[8], q[14];
cx q[1], q[8];
u1(-pi/4)  q[14];
cx q[1], q[14];
u1(pi/4)  q[8];
u1(-pi/4)  q[1];
u1(-pi/4)  q[14];
cx q[8], q[14];
cx q[1], q[8];
cx q[14], q[1];
u2(0,pi)  q[8];
u3(pi,0,pi)  q[1];
u1(pi/4)  q[14];
u3(pi,0,pi)  q[8];
u1(pi/4)  q[1];
cx q[5], q[14];
u1(pi/4)  q[8];
cx q[3], q[8];
cx q[9], q[1];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[9];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[8], q[9];
cx q[8], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[8];
cx q[9], q[3];
cx q[8], q[9];
cx q[3], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[3];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[3], q[8];
cx q[9], q[1];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
cx q[1], q[2];
u2(0,pi)  q[9];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u1(pi/4)  q[9];
u1(pi/4)  q[2];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[8], q[9];
cx q[8], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[8];
cx q[9], q[3];
cx q[8], q[9];
cx q[3], q[8];
u2(0,pi)  q[9];
u1(pi/4)  q[3];
u1(pi/4)  q[8];
u1(pi/4)  q[9];
cx q[9], q[1];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[9];
cx q[9], q[5];
u1(-pi/4)  q[5];
cx q[14], q[9];
cx q[14], q[5];
u1(pi/4)  q[9];
u1(-pi/4)  q[5];
u1(-pi/4)  q[14];
cx q[9], q[5];
cx q[14], q[9];
cx q[5], q[14];
u2(0,pi)  q[9];
u1(pi/4)  q[5];
u1(pi/4)  q[14];
u1(pi/4)  q[9];
cx q[5], q[14];
cx q[9], q[1];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[9];
cx q[9], q[5];
u1(-pi/4)  q[5];
cx q[14], q[9];
cx q[14], q[5];
u1(pi/4)  q[9];
u1(-pi/4)  q[5];
u1(-pi/4)  q[14];
cx q[9], q[5];
cx q[14], q[9];
cx q[5], q[14];
u2(0,pi)  q[9];
u1(pi/4)  q[5];
u3(pi,0,pi)  q[14];
u1(pi/4)  q[9];
u1(pi/4)  q[14];
cx q[9], q[1];
cx q[5], q[14];
cx q[2], q[5];
u1(-pi/4)  q[5];
cx q[14], q[2];
u1(pi/4)  q[2];
cx q[14], q[5];
u1(-pi/4)  q[5];
u1(-pi/4)  q[14];
cx q[2], q[5];
cx q[14], q[2];
u2(0,pi)  q[2];
cx q[5], q[14];
u2(0,pi)  q[2];
u3(pi,0,pi)  q[5];
u1(pi/4)  q[14];
u1(pi/4)  q[2];
u1(pi/4)  q[5];
cx q[14], q[8];
cx q[3], q[5];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
u2(0,pi)  q[2];
u1(pi/4)  q[1];
u2(0,pi)  q[9];
u1(pi/4)  q[2];
u1(pi/4)  q[9];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[5], q[9];
cx q[5], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[9], q[3];
cx q[5], q[9];
cx q[3], q[5];
u2(0,pi)  q[9];
u2(0,pi)  q[3];
u1(pi/4)  q[5];
u2(0,pi)  q[9];
u1(pi/4)  q[3];
u1(pi/4)  q[9];
cx q[3], q[14];
u1(-pi/4)  q[14];
cx q[8], q[3];
u1(pi/4)  q[3];
cx q[8], q[14];
u1(-pi/4)  q[14];
u1(-pi/4)  q[8];
cx q[3], q[14];
cx q[8], q[3];
u2(0,pi)  q[3];
cx q[14], q[8];
u1(pi/4)  q[3];
u1(pi/4)  q[14];
u1(pi/4)  q[8];
cx q[3], q[5];
cx q[14], q[8];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[5], q[9];
cx q[5], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[9], q[3];
cx q[5], q[9];
cx q[3], q[5];
u2(0,pi)  q[9];
u1(pi/4)  q[3];
u1(pi/4)  q[5];
u1(pi/4)  q[9];
cx q[3], q[5];
cx q[9], q[1];
cx q[2], q[9];
cx q[1], q[2];
u1(-pi/4)  q[9];
u1(pi/4)  q[2];
cx q[1], q[9];
u1(-pi/4)  q[1];
u1(-pi/4)  q[9];
cx q[2], q[9];
cx q[1], q[2];
u2(0,pi)  q[2];
cx q[9], q[1];
u2(0,pi)  q[9];
u1(pi/4)  q[9];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[5], q[9];
cx q[5], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[9], q[3];
cx q[5], q[9];
cx q[3], q[5];
u2(0,pi)  q[9];
u2(0,pi)  q[3];
u1(pi/4)  q[5];
u2(0,pi)  q[9];
u1(pi/4)  q[3];
u1(pi/4)  q[9];
cx q[3], q[14];
u1(-pi/4)  q[14];
cx q[8], q[3];
u1(pi/4)  q[3];
cx q[8], q[14];
u1(-pi/4)  q[14];
u1(-pi/4)  q[8];
cx q[3], q[14];
cx q[8], q[3];
u2(0,pi)  q[3];
cx q[14], q[8];
u1(pi/4)  q[3];
cx q[3], q[5];
cx q[9], q[3];
u1(-pi/4)  q[3];
cx q[5], q[9];
cx q[5], q[3];
u1(pi/4)  q[9];
u1(-pi/4)  q[3];
u1(-pi/4)  q[5];
cx q[9], q[3];
cx q[5], q[9];
cx q[3], q[5];
u2(0,pi)  q[9];
measure q[2] -> c[0];
measure q[1] -> c[1];
measure q[3] -> c[2];
measure q[5] -> c[3];
measure q[14] -> c[4];
measure q[8] -> c[5];
measure q[9] -> c[6];
measure q[18] -> c[7];
measure q[7] -> c[8];
measure q[11] -> c[9];
measure q[12] -> c[10];
measure q[13] -> c[11];
measure q[10] -> c[12];
measure q[4] -> c[13];
measure q[0] -> c[14];
measure q[6] -> c[15];

