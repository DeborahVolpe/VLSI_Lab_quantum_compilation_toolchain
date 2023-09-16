OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u3(pi,0,pi) q[4];
u1(pi/4) q[4];
u1(-pi/4) q[6];
u1(-pi/4) q[7];
cx q[4],q[7];
u2(0,pi) q[4];
cx q[7],q[4];
u1(1.5632211) q[4];
cx q[7],q[4];
u1(-1.5632211) q[4];
u2(0,pi) q[4];
cx q[4],q[7];
u1(-pi/4) q[4];
u1(-pi/4) q[4];
u1(pi/4) q[7];
u1(0) q[7];
u1(pi/4) q[7];
cx q[7],q[6];
u2(0,pi) q[7];
cx q[6],q[7];
u1(-0.78163903) q[7];
cx q[6],q[7];
u1(0.78163903) q[7];
u2(0,pi) q[7];
cx q[7],q[6];
u1(pi/4) q[6];
u1(0) q[6];
u1(-pi/4) q[7];
u1(-pi/4) q[7];
u3(pi,0,pi) q[10];
u1(pi/4) q[10];
cx q[10],q[4];
u2(0,pi) q[10];
cx q[4],q[10];
u1(-0.78921469) q[10];
cx q[4],q[10];
u1(0.78921469) q[10];
u2(0,pi) q[10];
cx q[10],q[4];
u1(-pi/4) q[10];
u1(pi/4) q[4];
u1(0) q[4];
u1(pi/4) q[4];
cx q[4],q[7];
u2(0,pi) q[4];
cx q[7],q[4];
u1(0.0075754452) q[4];
cx q[7],q[4];
u1(-0.0075754452) q[4];
u2(0,pi) q[4];
cx q[4],q[7];
u1(-pi/4) q[4];
u1(pi/4) q[7];
u1(0) q[7];
measure q[10] -> c[0];
measure q[4] -> c[1];
measure q[7] -> c[2];
measure q[6] -> c[3];