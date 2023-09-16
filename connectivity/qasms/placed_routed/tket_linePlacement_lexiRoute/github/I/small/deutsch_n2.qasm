OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[2];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
cx q[15],q[16];
measure q[16] -> c[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
measure q[15] -> c[0];
