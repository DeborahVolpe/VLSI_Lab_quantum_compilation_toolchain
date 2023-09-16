OPENQASM 2.0;
include "qelib1.inc";

qreg q[11];
creg c[6];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[5];
u2(0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[10];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
cx q[2],q[1];
u1(1.75*pi) q[1];
cx q[0],q[1];
u1(0.25*pi) q[1];
cx q[2],q[1];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
u1(0.25*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
swap q[2],q[1];
swap q[7],q[4];
cx q[0],q[1];
swap q[10],q[7];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
cx q[0],q[1];
cx q[1],q[2];
u1(1.75*pi) q[2];
swap q[2],q[1];
cx q[0],q[1];
u1(0.25*pi) q[1];
cx q[2],q[1];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
u1(0.25*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
swap q[2],q[1];
cx q[0],q[1];
swap q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
swap q[5],q[3];
cx q[0],q[1];
u1(1.984375*pi) q[0];
swap q[2],q[1];
cx q[0],q[1];
swap q[3],q[2];
u1(0.015625*pi) q[1];
cx q[0],q[1];
u1(1.96875*pi) q[0];
u1(1.984375*pi) q[1];
swap q[4],q[1];
cx q[0],q[1];
swap q[7],q[4];
u1(0.03125*pi) q[1];
swap q[6],q[7];
cx q[0],q[1];
u1(1.9375*pi) q[0];
u1(1.96875*pi) q[1];
swap q[2],q[1];
cx q[0],q[1];
u1(0.0625*pi) q[1];
cx q[0],q[1];
u1(1.875*pi) q[0];
u1(1.9375*pi) q[1];
swap q[4],q[1];
cx q[0],q[1];
u1(0.125*pi) q[1];
cx q[0],q[1];
u1(1.75*pi) q[0];
u1(1.875*pi) q[1];
swap q[0],q[1];
swap q[1],q[4];
cx q[4],q[7];
u1(0.25*pi) q[7];
cx q[4],q[7];
u2(0.0*pi,1.0*pi) q[4];
u1(1.75*pi) q[7];
measure q[4] -> c[5];
u1(1.96875*pi) q[7];
cx q[7],q[6];
u1(0.03125*pi) q[6];
cx q[7],q[6];
u1(1.96875*pi) q[6];
u1(1.9375*pi) q[7];
swap q[7],q[4];
swap q[4],q[1];
swap q[6],q[7];
cx q[1],q[2];
u1(0.0625*pi) q[2];
cx q[1],q[2];
u1(1.875*pi) q[1];
u1(1.9375*pi) q[2];
cx q[1],q[4];
u1(0.125*pi) q[4];
cx q[1],q[4];
u1(1.75*pi) q[1];
u1(1.875*pi) q[4];
cx q[1],q[0];
swap q[7],q[4];
u1(0.25*pi) q[0];
cx q[1],q[0];
u1(1.75*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
measure q[1] -> c[4];
u1(1.9375*pi) q[0];
swap q[0],q[1];
cx q[1],q[4];
u1(0.0625*pi) q[4];
cx q[1],q[4];
u1(1.875*pi) q[1];
u1(1.9375*pi) q[4];
cx q[1],q[2];
swap q[7],q[4];
u1(0.125*pi) q[2];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(1.875*pi) q[2];
cx q[1],q[4];
u1(0.25*pi) q[4];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[1];
u1(1.75*pi) q[4];
measure q[1] -> c[3];
u1(1.875*pi) q[4];
swap q[2],q[1];
cx q[4],q[7];
u1(0.125*pi) q[7];
cx q[4],q[7];
u1(1.75*pi) q[4];
u1(1.875*pi) q[7];
cx q[4],q[1];
u1(0.25*pi) q[1];
cx q[4],q[1];
u1(1.75*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
measure q[4] -> c[2];
u1(1.75*pi) q[1];
swap q[7],q[4];
cx q[1],q[4];
u1(0.25*pi) q[4];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[1];
u1(1.75*pi) q[4];
measure q[1] -> c[1];
u2(0.0*pi,1.0*pi) q[4];
measure q[4] -> c[0];