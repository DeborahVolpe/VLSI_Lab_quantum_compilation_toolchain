OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[7];
u2(0,pi) q[10];
u1(-3*pi/8) q[12];
u2(0,pi) q[13];
cx q[13],q[12];
u1(3*pi/8) q[12];
cx q[13],q[12];
u1(-3*pi/8) q[12];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
swap q[7],q[10];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
cx q[10],q[12];
u1(3*pi/8) q[12];
cx q[10],q[12];
u1(-3*pi/8) q[12];
u2(0,pi) q[15];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u1(-3*pi/8) q[12];
cx q[15],q[12];
u1(3*pi/8) q[12];
cx q[15],q[12];
u2(0,pi) q[15];
u1(-pi/4) q[15];
swap q[12],q[15];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[10];
u1(-pi/4) q[10];
u2(0,pi) q[10];
u1(-pi/4) q[10];
swap q[10],q[7];
u1(-pi/8) q[12];
cx q[12],q[10];
u1(pi/8) q[10];
cx q[12],q[10];
u1(-pi/8) q[10];
u1(-pi/16) q[12];
cx q[12],q[13];
u1(pi/16) q[13];
cx q[12],q[13];
u1(-pi/16) q[13];
cx q[7],q[10];
u1(pi/4) q[10];
cx q[7],q[10];
u1(-pi/4) q[10];
u2(0,pi) q[10];
u1(-pi/4) q[10];
u1(-pi/8) q[7];
measure q[12] -> c[0];
swap q[13],q[12];
swap q[10],q[12];
cx q[7],q[10];
u1(pi/8) q[10];
cx q[7],q[10];
u1(-pi/8) q[10];
cx q[12],q[10];
u1(pi/4) q[10];
cx q[12],q[10];
u1(-pi/4) q[10];
u2(0,pi) q[10];
measure q[7] -> c[1];
measure q[12] -> c[2];
measure q[10] -> c[3];
