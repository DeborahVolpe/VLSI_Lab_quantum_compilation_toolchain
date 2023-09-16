OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[2];
u3(1.0*pi,0.0*pi,1.0*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
u2(0.0*pi,1.0*pi) q[24];
cx q[25],q[24];
measure q[24] -> c[1];
u2(0.0*pi,1.0*pi) q[25];
measure q[25] -> c[0];
