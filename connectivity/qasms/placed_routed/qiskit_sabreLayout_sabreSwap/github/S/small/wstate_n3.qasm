OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi) q[19];
u2(0,pi) q[22];
u1(-pi/2) q[22];
u3(1.91063,0,0) q[25];
cx q[25],q[22];
u2(0,pi) q[22];
u1(pi/4) q[22];
cx q[25],q[22];
u1(pi/4) q[22];
u2(0,pi) q[22];
u1(pi/2) q[22];
u3(pi,0,pi) q[22];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(pi/2) q[25];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/4) q[19];
swap q[25],q[22];
cx q[22],q[19];
u1(-pi/4) q[19];
u1(pi/4) q[22];
swap q[22],q[25];
cx q[22],q[19];
u1(pi/4) q[19];
u2(0,pi) q[19];
cx q[22],q[25];
u1(pi/4) q[22];
u1(-pi/4) q[25];
cx q[22],q[25];
u3(pi,0,pi) q[22];
u3(pi,0,pi) q[25];
cx q[22],q[25];
measure q[22] -> c[0];
measure q[25] -> c[1];
measure q[19] -> c[2];
