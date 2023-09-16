OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[12];
u3(pi,0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[13];
cx q[12],q[13];
u3(pi,0,pi) q[12];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[13];
u2(0,pi) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[13];
u2(0,pi) q[19];
u3(pi,0,pi) q[19];
u2(0,pi) q[22];
u2(0,pi) q[22];
cx q[19],q[22];
u3(pi,0,pi) q[19];
u2(0,pi) q[19];
u2(0,pi) q[22];
u2(0,pi) q[22];
u2(0,pi) q[22];
cx q[19],q[22];
u2(0,pi) q[19];
u2(0,pi) q[22];
u2(0,pi) q[22];
measure q[19] -> c[0];
measure q[22] -> c[1];
measure q[12] -> c[2];
measure q[13] -> c[3];
