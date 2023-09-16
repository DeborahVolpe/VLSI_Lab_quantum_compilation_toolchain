OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[7];
rx(pi) q[7];
rz(3*pi/4) q[7];
rx(pi/2) q[7];
rz(3*pi/2) q[7];
rx(pi/2) q[7];
rz(3*pi) q[7];
rx(pi/2) q[7];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[12];
rx(pi) q[12];
rz(3*pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rx(pi/2) q[12];
cx q[11],q[16];
rx(-pi/4) q[11];
ry(-pi/2) q[11];
rz(pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi/4) q[12];
cx q[11],q[12];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[12],q[11];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
ry(pi/2) q[11];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
ry(-pi/2) q[16];
rz(pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi/4) q[7];
cx q[16],q[7];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[7],q[16];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
ry(pi/2) q[16];
rz(pi) q[7];
rx(pi/2) q[7];
rz(3*pi/2) q[7];
rx(pi/2) q[7];
rz(7*pi/2) q[7];
measure q[11] -> c[0];
measure q[12] -> c[1];
measure q[16] -> c[2];
measure q[7] -> c[3];