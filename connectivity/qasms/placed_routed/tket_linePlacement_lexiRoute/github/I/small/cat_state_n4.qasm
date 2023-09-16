OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[4];
ry(0.5*pi) q[13];
rx(1.0*pi) q[13];
cx q[13],q[14];
measure q[13] -> c[0];
cx q[14],q[15];
measure q[14] -> c[1];
cx q[15],q[16];
measure q[15] -> c[2];
measure q[16] -> c[3];
