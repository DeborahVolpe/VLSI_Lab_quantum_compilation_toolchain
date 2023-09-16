OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[3];
u2(0.0*pi,1.0*pi) q[23];
u2(0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[23];
cx q[25],q[24];
measure q[25] -> c[2];
u2(0.0*pi,1.0*pi) q[23];
u1(0.5*pi) q[23];
cx q[23],q[24];
measure q[24] -> c[1];
u2(0.0*pi,1.0*pi) q[23];
measure q[23] -> c[0];
