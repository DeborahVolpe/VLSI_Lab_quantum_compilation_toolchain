OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[3];
u2(0,pi)  q[14];
u3(pi,0,pi)  q[12];
cx q[14], q[13];
u2(0,pi)  q[12];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
u2(0,pi)  q[14];
cx q[12], q[13];
u2(0,pi)  q[13];
u2(0,pi)  q[12];
u2(0,pi)  q[13];
u3(-0.58,0,0)  q[12];
u2(0,pi)  q[12];
cx q[12], q[13];
u2(0,pi)  q[13];
u2(0,pi)  q[12];
cx q[14], q[13];
u3(0.58,0,0)  q[12];
u2(0,pi)  q[14];
measure q[14] -> c[0];
measure q[13] -> c[1];
measure q[12] -> c[2];

