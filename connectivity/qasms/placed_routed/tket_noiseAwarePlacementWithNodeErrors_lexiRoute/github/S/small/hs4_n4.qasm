OPENQASM 2.0;
include "qelib1.inc";

qreg q[8];
creg c[4];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.0*pi,1.0*pi) q[4];
u3(1.0*pi,0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
cx q[4],q[1];
cx q[6],q[7];
u2(0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.0*pi,1.0*pi) q[4];
u3(1.0*pi,0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[7];
cx q[4],q[1];
cx q[6],q[7];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
measure q[6] -> c[0];
measure q[4] -> c[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[7];
measure q[7] -> c[1];
measure q[1] -> c[3];
