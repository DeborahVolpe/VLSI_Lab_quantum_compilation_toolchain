OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[5];
rx(pi) q[5];
ry(pi/2) q[8];
rx(pi) q[8];
rz(3*pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rx(pi/2) q[8];
cx q[5],q[10];
ry(-pi/2) q[10];
rz(pi/4) q[10];
rx(pi/2) q[10];
rz(3*pi/2) q[10];
rx(pi/2) q[10];
rz(3*pi) q[10];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
rz(pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
cx q[8],q[10];
ry(pi/2) q[10];
rx(pi/4) q[8];
cx q[10],q[8];
rx(-pi/2) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(pi) q[10];
rx(pi/2) q[10];
rz(3*pi/2) q[10];
rx(pi/2) q[10];
rz(4*pi) q[10];
ry(pi/2) q[10];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
ry(pi/2) q[11];
rx(pi) q[11];
rz(3*pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rx(pi/2) q[11];
cx q[11],q[5];
rx(pi/4) q[11];
ry(pi/2) q[5];
cx q[5],q[11];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[11],q[5];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
ry(pi/2) q[5];
measure q[5] -> c[0];
measure q[11] -> c[1];
measure q[10] -> c[2];
measure q[8] -> c[3];
