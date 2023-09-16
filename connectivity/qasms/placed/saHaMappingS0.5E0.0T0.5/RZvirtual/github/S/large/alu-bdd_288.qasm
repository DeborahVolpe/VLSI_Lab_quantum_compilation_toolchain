OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4)  q[5];
u1(pi/4)  q[8];
u1(pi/4)  q[11];
cx q[16], q[13];
cx q[0], q[14];
cx q[8], q[5];
u1(pi/4)  q[16];
u2(0,pi)  q[13];
u1(pi/4)  q[0];
u2(0,pi)  q[14];
u1(pi/4)  q[13];
u1(pi/4)  q[14];
cx q[13], q[8];
cx q[5], q[13];
u1(-pi/4)  q[8];
cx q[5], q[8];
u1(pi/4)  q[13];
u1(-pi/4)  q[5];
u1(-pi/4)  q[8];
cx q[13], q[8];
cx q[5], q[13];
cx q[8], q[5];
u2(0,pi)  q[13];
u1(pi/4)  q[8];
u2(0,pi)  q[13];
cx q[8], q[16];
u1(pi/4)  q[13];
cx q[13], q[8];
cx q[16], q[13];
u1(-pi/4)  q[8];
cx q[16], q[8];
u1(pi/4)  q[13];
u1(-pi/4)  q[16];
u1(-pi/4)  q[8];
cx q[13], q[8];
cx q[16], q[13];
cx q[8], q[16];
u2(0,pi)  q[13];
u1(pi/4)  q[16];
u1(pi/4)  q[8];
cx q[8], q[16];
cx q[14], q[8];
cx q[16], q[14];
u1(-pi/4)  q[8];
cx q[16], q[8];
u1(pi/4)  q[14];
u1(-pi/4)  q[16];
u1(-pi/4)  q[8];
cx q[14], q[8];
cx q[16], q[14];
cx q[8], q[16];
u2(0,pi)  q[14];
u1(pi/4)  q[8];
u2(0,pi)  q[14];
cx q[8], q[0];
u1(pi/4)  q[14];
cx q[14], q[8];
cx q[0], q[14];
u1(-pi/4)  q[8];
cx q[0], q[8];
u1(pi/4)  q[14];
u1(-pi/4)  q[0];
u1(-pi/4)  q[8];
cx q[14], q[8];
cx q[0], q[14];
cx q[8], q[0];
u2(0,pi)  q[14];
cx q[14], q[13];
u1(pi/4)  q[13];
u2(0,pi)  q[14];
cx q[13], q[11];
u1(pi/4)  q[14];
cx q[14], q[13];
cx q[11], q[14];
u1(-pi/4)  q[13];
cx q[11], q[13];
u1(pi/4)  q[14];
u1(-pi/4)  q[11];
u1(-pi/4)  q[13];
cx q[14], q[13];
cx q[11], q[14];
cx q[13], q[11];
u2(0,pi)  q[14];
u3(pi,0,pi)  q[14];
measure q[16] -> c[0];
measure q[5] -> c[1];
measure q[0] -> c[2];
measure q[8] -> c[3];
measure q[11] -> c[4];
measure q[13] -> c[5];
measure q[14] -> c[6];
measure q[9] -> c[7];
measure q[10] -> c[8];
measure q[3] -> c[9];
measure q[2] -> c[10];
measure q[12] -> c[11];
measure q[6] -> c[12];
measure q[1] -> c[13];
measure q[4] -> c[14];
measure q[7] -> c[15];

