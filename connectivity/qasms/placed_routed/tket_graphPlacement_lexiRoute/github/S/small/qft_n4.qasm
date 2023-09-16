OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[4];
u1(0.25*pi) q[0];
u3(1.0*pi,0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.0*pi,1.0*pi) q[2];
u1(0.0625*pi) q[4];
u2(0.0*pi,1.0*pi) q[1];
u1(0.125*pi) q[2];
cx q[0],q[1];
u1(1.75*pi) q[1];
cx q[0],q[1];
u2(0.0*pi,1.0*pi) q[0];
u1(0.25*pi) q[1];
cx q[2],q[1];
u1(1.875*pi) q[1];
cx q[2],q[1];
u1(0.125*pi) q[1];
u1(0.25*pi) q[2];
cx q[4],q[1];
u1(1.9375*pi) q[1];
cx q[4],q[1];
u1(0.0625*pi) q[1];
u1(0.125*pi) q[4];
measure q[1] -> c[0];
swap q[0],q[1];
cx q[2],q[1];
u1(1.75*pi) q[1];
cx q[2],q[1];
u1(0.25*pi) q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[4],q[1];
u1(1.875*pi) q[1];
cx q[4],q[1];
u1(0.125*pi) q[1];
u1(0.25*pi) q[4];
measure q[1] -> c[1];
swap q[4],q[1];
cx q[1],q[2];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
u1(0.25*pi) q[2];
measure q[2] -> c[2];
measure q[1] -> c[3];