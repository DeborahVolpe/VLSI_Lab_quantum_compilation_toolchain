OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[6];
u3(pi,0,pi) q[0];
u2(0,pi) q[0];
u3(pi,0,pi) q[1];
u2(0,pi) q[1];
u3(pi,0,pi) q[2];
cx q[2],q[1];
u1(-pi/4) q[1];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[2],q[1];
u1(-pi/4) q[1];
u1(pi/4) q[2];
cx q[4],q[1];
swap q[1],q[4];
cx q[1],q[2];
u1(pi/4) q[1];
swap q[0],q[1];
u1(-pi/4) q[2];
u1(pi/4) q[4];
u2(0,pi) q[4];
cx q[4],q[1];
swap q[0],q[1];
u2(0,pi) q[0];
cx q[1],q[2];
u2(0,pi) q[4];
swap q[1],q[4];
cx q[2],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[2],q[1];
u1(-pi/4) q[1];
u1(pi/4) q[2];
cx q[4],q[1];
swap q[1],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[1];
u1(-pi/4) q[1];
u1(pi/4) q[4];
cx q[4],q[1];
u1(-pi/64) q[4];
u2(0,pi) q[5];
swap q[3],q[5];
swap q[2],q[3];
swap q[3],q[5];
u2(0,pi) q[6];
u2(0,pi) q[7];
swap q[4],q[7];
u2(0,pi) q[10];
cx q[7],q[10];
u1(pi/64) q[10];
cx q[7],q[10];
u1(-pi/64) q[10];
u1(-pi/32) q[7];
cx q[7],q[6];
u1(pi/32) q[6];
cx q[7],q[6];
u1(-pi/32) q[6];
u1(-pi/16) q[7];
swap q[4],q[7];
swap q[1],q[4];
cx q[1],q[2];
u1(pi/16) q[2];
cx q[1],q[2];
u1(-pi/8) q[1];
swap q[1],q[4];
u1(-pi/16) q[2];
cx q[4],q[7];
u1(pi/8) q[7];
cx q[4],q[7];
u1(-pi/4) q[4];
swap q[1],q[4];
swap q[1],q[2];
cx q[2],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u1(-pi/4) q[3];
u1(-pi/32) q[3];
u1(-pi/8) q[7];
swap q[7],q[10];
swap q[4],q[7];
swap q[6],q[7];
measure q[2] -> c[5];
swap q[2],q[3];
swap q[1],q[2];
cx q[1],q[4];
u1(pi/32) q[4];
cx q[1],q[4];
u1(-pi/16) q[1];
u1(-pi/32) q[4];
swap q[1],q[4];
swap q[1],q[2];
cx q[4],q[7];
u1(pi/16) q[7];
cx q[4],q[7];
u1(-pi/8) q[4];
cx q[4],q[1];
u1(pi/8) q[1];
cx q[4],q[1];
u1(-pi/8) q[1];
swap q[1],q[2];
u1(-pi/4) q[4];
u1(-pi/16) q[7];
swap q[4],q[7];
cx q[7],q[10];
u1(pi/4) q[10];
cx q[7],q[10];
u1(-pi/4) q[10];
u1(-pi/16) q[10];
u2(0,pi) q[7];
measure q[7] -> c[4];
swap q[7],q[10];
swap q[4],q[7];
cx q[4],q[1];
u1(pi/16) q[1];
cx q[4],q[1];
u1(-pi/16) q[1];
u1(-pi/8) q[4];
cx q[4],q[7];
u1(pi/8) q[7];
cx q[4],q[7];
u1(-pi/4) q[4];
swap q[1],q[4];
cx q[1],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
measure q[1] -> c[3];
u1(-pi/4) q[2];
u1(-pi/8) q[2];
swap q[1],q[2];
cx q[1],q[4];
u1(pi/8) q[4];
cx q[1],q[4];
u1(-pi/4) q[1];
u1(-pi/8) q[4];
u1(-pi/8) q[7];
swap q[4],q[7];
cx q[1],q[4];
u1(pi/4) q[4];
cx q[1],q[4];
u2(0,pi) q[1];
measure q[1] -> c[2];
u1(-pi/4) q[4];
u1(-pi/4) q[4];
cx q[4],q[7];
u1(pi/4) q[7];
cx q[4],q[7];
u2(0,pi) q[4];
measure q[4] -> c[1];
u1(-pi/4) q[7];
u2(0,pi) q[7];
measure q[7] -> c[0];
