OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
ry(0.5*pi) q[0];
ry(0.5*pi) q[2];
rx(1.0*pi) q[0];
rx(1.0*pi) q[2];
rz(0.25*pi) q[0];
cx q[2],q[1];
measure q[2] -> c[2];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
rz(0.5*pi) q[0];
cx q[0],q[1];
measure q[1] -> c[1];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
measure q[0] -> c[0];