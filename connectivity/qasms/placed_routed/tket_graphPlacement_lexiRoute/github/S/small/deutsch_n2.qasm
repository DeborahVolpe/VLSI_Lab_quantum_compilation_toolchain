OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[0],q[1];
measure q[1] -> c[1];
u2(0.0*pi,1.0*pi) q[0];
measure q[0] -> c[0];
