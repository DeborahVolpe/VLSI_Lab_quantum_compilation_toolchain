OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[5];
u2(0,pi) q[7];
u2(0,pi) q[10];
u2(0,pi) q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
cx q[10],q[12];
u2(0,pi) q[10];
swap q[7],q[10];
u2(0,pi) q[13];
cx q[13],q[12];
cx q[10],q[12];
u2(0,pi) q[10];
u2(0,pi) q[12];
cx q[10],q[12];
swap q[10],q[7];
u2(0,pi) q[13];
cx q[13],q[12];
cx q[10],q[12];
u2(0,pi) q[12];
u2(0,pi) q[14];
measure q[13] -> c[0];
swap q[13],q[14];
cx q[13],q[12];
u2(0,pi) q[12];
u2(0,pi) q[13];
cx q[13],q[12];
cx q[10],q[12];
measure q[10] -> c[1];
swap q[7],q[10];
cx q[10],q[12];
measure q[12] -> c[2];
measure q[10] -> c[3];
measure q[13] -> c[4];
