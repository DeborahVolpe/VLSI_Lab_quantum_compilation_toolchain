OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u1(-pi/4) q[16];
u3(pi,0,pi) q[19];
u1(pi/4) q[19];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
u2(0,pi) q[22];
cx q[25],q[22];
u1(1.5632211) q[22];
cx q[25],q[22];
u1(-1.5632211) q[22];
u2(0,pi) q[22];
cx q[22],q[25];
u1(-pi/4) q[22];
u1(-pi/4) q[22];
cx q[19],q[22];
u2(0,pi) q[19];
cx q[22],q[19];
u1(-0.78921469) q[19];
cx q[22],q[19];
u1(0.78921469) q[19];
u2(0,pi) q[19];
cx q[19],q[22];
u1(-pi/4) q[19];
u1(pi/4) q[22];
u1(0) q[22];
u1(pi/4) q[22];
u1(pi/4) q[25];
u1(0) q[25];
u1(pi/4) q[25];
swap q[22],q[25];
measure q[19] -> c[0];
swap q[16],q[19];
cx q[22],q[19];
u2(0,pi) q[22];
cx q[19],q[22];
u1(-0.78163903) q[22];
cx q[19],q[22];
u1(0.78163903) q[22];
u2(0,pi) q[22];
cx q[22],q[19];
u1(pi/4) q[19];
u1(0) q[19];
u1(-pi/4) q[22];
u1(-pi/4) q[22];
cx q[25],q[22];
u2(0,pi) q[25];
cx q[22],q[25];
u1(0.0075754452) q[25];
cx q[22],q[25];
u1(-0.0075754452) q[25];
u2(0,pi) q[25];
cx q[25],q[22];
u1(pi/4) q[22];
u1(0) q[22];
u1(-pi/4) q[25];
measure q[25] -> c[1];
measure q[22] -> c[2];
measure q[19] -> c[3];
