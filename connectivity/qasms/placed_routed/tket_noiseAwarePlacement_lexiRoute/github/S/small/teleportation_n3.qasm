OPENQASM 2.0;
include "qelib1.inc";

qreg q[12];
creg c[3];
u2(0.0*pi,1.0*pi) q[5];
u2(0.0*pi,1.0*pi) q[11];
cx q[5],q[8];
u1(0.25*pi) q[11];
measure q[5] -> c[2];
u2(0.0*pi,1.0*pi) q[11];
u1(0.5*pi) q[11];
cx q[11],q[8];
measure q[8] -> c[1];
u2(0.0*pi,1.0*pi) q[11];
measure q[11] -> c[0];
