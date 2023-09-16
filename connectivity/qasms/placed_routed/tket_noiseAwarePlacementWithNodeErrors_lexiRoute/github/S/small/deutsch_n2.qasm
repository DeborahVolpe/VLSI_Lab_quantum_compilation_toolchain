OPENQASM 2.0;
include "qelib1.inc";

qreg q[12];
creg c[2];
u2(0.0*pi,1.0*pi) q[8];
u3(1.0*pi,0.0*pi,1.0*pi) q[11];
u2(0.0*pi,1.0*pi) q[11];
cx q[8],q[11];
measure q[11] -> c[1];
u2(0.0*pi,1.0*pi) q[8];
measure q[8] -> c[0];
