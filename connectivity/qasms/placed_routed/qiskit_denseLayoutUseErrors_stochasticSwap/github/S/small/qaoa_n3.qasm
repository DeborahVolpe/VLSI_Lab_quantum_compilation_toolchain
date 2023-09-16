OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi) q[0];
u2(0,pi) q[1];
u2(0,pi) q[2];
swap q[1],q[2];
cx q[1],q[0];
u1(5.654427) q[0];
cx q[1],q[0];
cx q[1],q[2];
swap q[0],q[1];
cx q[2],q[1];
u1(-11.308885) q[1];
cx q[2],q[1];
swap q[1],q[2];
cx q[0],q[1];
u3(1.7132487,-pi/2,pi/2) q[0];
u1(-16.963312) q[1];
u3(1.7132487,-pi/2,pi/2) q[1];
u3(1.7132487,-pi/2,pi/2) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
