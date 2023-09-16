OPENQASM 2.0;
include "qelib1.inc";

qreg q[16];
creg c[16];
measure q[2] -> c[5];
measure q[3] -> c[6];
measure q[5] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];
measure q[15] -> c[15];
u1(0.25*pi) q[0];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[6];
u1(0.25*pi) q[7];
measure q[1] -> c[1];
u3(1.0*pi,0.0*pi,1.0*pi) q[4];
u1(0.25*pi) q[6];
swap q[0],q[1];
u1(0.25*pi) q[4];
cx q[7],q[4];
cx q[6],q[7];
u1(1.75*pi) q[7];
cx q[7],q[6];
cx q[4],q[7];
cx q[7],q[6];
cx q[4],q[7];
u1(0.25*pi) q[6];
cx q[4],q[7];
u1(1.75*pi) q[4];
u1(1.75*pi) q[7];
cx q[6],q[7];
cx q[7],q[6];
cx q[4],q[7];
cx q[7],q[6];
cx q[4],q[7];
u2(0.0*pi,1.0*pi) q[6];
cx q[7],q[4];
u2(0.0*pi,1.0*pi) q[6];
measure q[7] -> c[0];
u1(0.25*pi) q[4];
u1(0.25*pi) q[6];
cx q[1],q[4];
swap q[6],q[7];
cx q[4],q[1];
cx q[7],q[4];
cx q[4],q[1];
u1(1.75*pi) q[1];
cx q[7],q[4];
cx q[4],q[7];
cx q[4],q[1];
u1(0.25*pi) q[7];
u1(1.75*pi) q[1];
u1(1.75*pi) q[4];
cx q[4],q[1];
cx q[7],q[4];
cx q[4],q[1];
cx q[7],q[4];
cx q[4],q[7];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[7];
measure q[1] -> c[2];
cx q[4],q[7];
measure q[4] -> c[3];
measure q[7] -> c[4];
