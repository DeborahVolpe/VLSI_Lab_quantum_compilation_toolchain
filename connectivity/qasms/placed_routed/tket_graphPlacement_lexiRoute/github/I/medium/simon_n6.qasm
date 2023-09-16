OPENQASM 2.0;
include "qelib1.inc";

qreg q[6];
creg c[6];
measure q[5] -> c[5];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rz(1.0*pi) q[3];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(0.5*pi) q[3];
cx q[0],q[4];
rz(2.0*pi) q[3];
measure q[4] -> c[4];
rx(0.5*pi) q[3];
rz(3.0*pi) q[3];
cx q[0],q[3];
ry(0.5*pi) q[0];
ry(0.5*pi) q[3];
rx(1.0*pi) q[0];
rx(1.0*pi) q[3];
measure q[0] -> c[2];
cx q[2],q[3];
rz(3.75*pi) q[3];
cx q[1],q[3];
rz(0.25*pi) q[3];
cx q[2],q[3];
rz(0.25*pi) q[2];
rz(3.75*pi) q[3];
cx q[1],q[3];
cx q[1],q[2];
rz(0.25*pi) q[3];
rz(0.25*pi) q[1];
rz(3.75*pi) q[2];
ry(0.5*pi) q[3];
cx q[1],q[2];
rx(1.0*pi) q[3];
rz(1.0*pi) q[1];
rz(1.0*pi) q[2];
ry(0.5*pi) q[3];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(1.0*pi) q[3];
rz(2.0*pi) q[1];
rz(2.0*pi) q[2];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(3.0*pi) q[1];
rz(3.0*pi) q[2];
cx q[2],q[3];
rz(3.75*pi) q[3];
cx q[1],q[3];
rz(0.25*pi) q[3];
cx q[2],q[3];
rz(0.25*pi) q[2];
rz(3.75*pi) q[3];
cx q[1],q[3];
cx q[1],q[2];
rz(0.25*pi) q[3];
rz(0.25*pi) q[1];
rz(3.75*pi) q[2];
ry(0.5*pi) q[3];
cx q[1],q[2];
rx(1.0*pi) q[3];
rz(1.0*pi) q[1];
rz(1.0*pi) q[2];
rz(1.0*pi) q[3];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[3];
rz(2.0*pi) q[1];
rz(2.0*pi) q[2];
rz(2.0*pi) q[3];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[3];
rz(3.0*pi) q[1];
rz(3.0*pi) q[2];
rz(3.0*pi) q[3];
measure q[3] -> c[3];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
measure q[1] -> c[0];
measure q[2] -> c[1];
