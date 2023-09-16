OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
rx(1.0*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
cx q[0],q[1];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
cx q[0],q[1];
measure q[1] -> c[1];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
measure q[0] -> c[0];
