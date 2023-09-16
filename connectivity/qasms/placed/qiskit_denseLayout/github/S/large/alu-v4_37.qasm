OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
cx q[11],q[9];
u1(pi/4) q[11];
u1(pi/4) q[9];
cx q[15],q[13];
u1(pi/4) q[13];
cx q[13],q[11];
u3(pi,0,pi) q[15];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[15],q[13];
cx q[11],q[15];
u1(-pi/4) q[13];
cx q[11],q[13];
u1(-pi/4) q[11];
u1(-pi/4) q[13];
u1(pi/4) q[15];
cx q[15],q[13];
cx q[11],q[15];
cx q[13],q[11];
u2(0,pi) q[15];
cx q[15],q[14];
u1(pi/4) q[14];
cx q[14],q[9];
u2(0,pi) q[15];
u1(pi/4) q[15];
cx q[15],q[14];
u1(-pi/4) q[14];
cx q[9],q[15];
u1(pi/4) q[15];
cx q[9],q[14];
u1(-pi/4) q[14];
cx q[15],q[14];
u1(-pi/4) q[9];
cx q[9],q[15];
cx q[14],q[9];
u2(0,pi) q[15];
cx q[15],q[9];
measure q[14] -> c[0];
measure q[13] -> c[1];
measure q[15] -> c[2];
measure q[11] -> c[3];
measure q[9] -> c[4];
measure q[12] -> c[5];
measure q[8] -> c[6];
measure q[10] -> c[7];
measure q[6] -> c[8];
measure q[5] -> c[9];
measure q[7] -> c[10];
measure q[3] -> c[11];
measure q[4] -> c[12];
measure q[2] -> c[13];
measure q[1] -> c[14];
measure q[0] -> c[15];
