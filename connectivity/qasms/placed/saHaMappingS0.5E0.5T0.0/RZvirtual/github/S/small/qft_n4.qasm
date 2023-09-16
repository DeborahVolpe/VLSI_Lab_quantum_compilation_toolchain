OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u3(pi,0,pi)  q[21];
u1(pi/4)  q[24];
u3(pi,0,pi)  q[23];
u1(pi/16)  q[25];
u2(0,pi)  q[21];
u1(pi/8)  q[23];
cx q[24], q[21];
u1(-pi/4)  q[21];
cx q[24], q[21];
u1(pi/4)  q[21];
u2(0,pi)  q[24];
cx q[23], q[21];
u1(-pi/8)  q[21];
cx q[23], q[21];
u1(pi/8)  q[21];
u1(pi/4)  q[23];
cx q[23], q[24];
cx q[25], q[21];
u1(-pi/4)  q[24];
u1(-pi/16)  q[21];
cx q[23], q[24];
cx q[25], q[21];
u1(pi/4)  q[24];
u2(0,pi)  q[23];
u1(pi/16)  q[21];
u1(pi/8)  q[25];
cx q[25], q[24];
u1(-pi/8)  q[24];
cx q[25], q[24];
u1(pi/8)  q[24];
u1(pi/4)  q[25];
cx q[25], q[23];
u1(-pi/4)  q[23];
cx q[25], q[23];
u1(pi/4)  q[23];
u2(0,pi)  q[25];
measure q[21] -> c[0];
measure q[24] -> c[1];
measure q[23] -> c[2];
measure q[25] -> c[3];

