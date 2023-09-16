OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cx q[1],q[2];
rz(3.75*pi) q[2];
cx q[0],q[2];
rz(0.25*pi) q[2];
cx q[1],q[2];
rz(3.75*pi) q[1];
rz(3.75*pi) q[2];
cx q[0],q[2];
cx q[0],q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[1];
ry(0.5*pi) q[2];
cx q[0],q[1];
rx(1.0*pi) q[2];
measure q[2] -> c[2];
rz(0.25*pi) q[0];
rz(0.5*pi) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
