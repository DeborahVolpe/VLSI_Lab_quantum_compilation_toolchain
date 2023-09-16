OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u3(pi,0,pi)  q[2];
u1(pi/4)  q[3];
u3(pi,0,pi)  q[8];
u1(pi/16)  q[5];
u2(0,pi)  q[2];
u1(pi/8)  q[8];
cx q[3], q[2];
u1(-pi/4)  q[2];
cx q[3], q[2];
u1(pi/4)  q[2];
u2(0,pi)  q[3];
cx q[8], q[2];
u1(-pi/8)  q[2];
cx q[8], q[2];
u1(pi/8)  q[2];
u1(pi/4)  q[8];
cx q[8], q[3];
cx q[5], q[2];
u1(-pi/4)  q[3];
u1(-pi/16)  q[2];
cx q[8], q[3];
cx q[5], q[2];
u1(pi/4)  q[3];
u2(0,pi)  q[8];
u1(pi/16)  q[2];
u1(pi/8)  q[5];
cx q[5], q[3];
u1(-pi/8)  q[3];
cx q[5], q[3];
u1(pi/8)  q[3];
u1(pi/4)  q[5];
cx q[5], q[8];
u1(-pi/4)  q[8];
cx q[5], q[8];
u1(pi/4)  q[8];
u2(0,pi)  q[5];
measure q[2] -> c[0];
measure q[3] -> c[1];
measure q[8] -> c[2];
measure q[5] -> c[3];

