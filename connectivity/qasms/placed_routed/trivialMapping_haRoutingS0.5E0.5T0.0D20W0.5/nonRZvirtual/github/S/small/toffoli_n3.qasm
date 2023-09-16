OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u3(pi,0,pi)  q[0];
u3(pi,0,pi)  q[1];
u2(0,pi)  q[2];
cx q[1], q[2];
u1(-pi/4)  q[2];
swap q[0], q[1];
cx q[1], q[2];
u1(pi/4)  q[2];
cx q[1], q[2];
cx q[0], q[1];
cx q[1], q[2];
cx q[0], q[1];
u1(-pi/4)  q[2];
u1(-pi/4)  q[0];
cx q[1], q[2];
u1(pi/4)  q[2];
cx q[1], q[0];
u1(-pi/4)  q[0];
u2(0,pi)  q[2];
cx q[1], q[0];
u1(pi/4)  q[1];
u1(pi/2)  q[0];
measure q[1] -> c[0];
measure q[0] -> c[1];
measure q[2] -> c[2];
