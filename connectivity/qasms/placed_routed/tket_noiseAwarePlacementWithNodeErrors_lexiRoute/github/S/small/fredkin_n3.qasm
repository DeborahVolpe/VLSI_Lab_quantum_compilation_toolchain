OPENQASM 2.0;
include "qelib1.inc";

qreg q[12];
creg c[3];
u3(1.0*pi,0.0*pi,1.0*pi) q[8];
u3(1.0*pi,0.0*pi,1.0*pi) q[11];
cx q[5],q[8];
u2(0.0*pi,1.0*pi) q[5];
cx q[11],q[8];
u1(0.25*pi) q[5];
u1(1.75*pi) q[8];
u1(0.25*pi) q[11];
cx q[5],q[8];
u1(0.25*pi) q[8];
swap q[11],q[8];
cx q[8],q[5];
u1(1.75*pi) q[5];
cx q[8],q[11];
cx q[8],q[5];
u1(1.75*pi) q[11];
measure q[8] -> c[0];
swap q[11],q[8];
cx q[5],q[8];
u2(0.0*pi,1.0*pi) q[5];
u1(0.25*pi) q[8];
cx q[5],q[8];
measure q[8] -> c[1];
measure q[5] -> c[2];
