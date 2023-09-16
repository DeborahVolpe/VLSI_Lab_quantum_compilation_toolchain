OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u3(pi,0,pi) q[17];
u2(0,pi) q[18];
cx q[17],q[18];
u1(-pi/4) q[18];
u3(pi,0,pi) q[21];
cx q[21],q[18];
u1(pi/4) q[18];
cx q[17],q[18];
u1(-pi/4) q[17];
u1(-pi/4) q[18];
cx q[21],q[18];
swap q[17],q[18];
u1(pi/4) q[17];
u2(0,pi) q[17];
cx q[21],q[18];
u1(-pi/4) q[18];
cx q[21],q[18];
u1(pi/2) q[18];
u1(pi/4) q[21];
measure q[21] -> c[0];
measure q[18] -> c[1];
measure q[17] -> c[2];
