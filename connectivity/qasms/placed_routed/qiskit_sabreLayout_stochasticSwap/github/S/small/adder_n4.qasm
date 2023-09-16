OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[13];
cx q[14],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
cx q[14],q[13];
swap q[13],q[14];
u3(pi,0,pi) q[16];
u1(pi/4) q[16];
u3(pi,0,pi) q[19];
u1(pi/4) q[19];
cx q[19],q[16];
swap q[14],q[16];
cx q[14],q[13];
cx q[16],q[19];
swap q[14],q[16];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(pi/4) q[14];
cx q[13],q[14];
u1(pi/2) q[14];
cx q[19],q[16];
u1(-pi/4) q[16];
u1(-pi/4) q[19];
cx q[19],q[16];
measure q[16] -> c[1];
swap q[16],q[19];
cx q[14],q[16];
u2(0,pi) q[14];
measure q[16] -> c[0];
measure q[13] -> c[2];
measure q[14] -> c[3];
