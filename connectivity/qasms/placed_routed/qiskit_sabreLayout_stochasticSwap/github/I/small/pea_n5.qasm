OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-3*pi/8) q[6];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[16],q[6];
rz(3*pi/8) q[6];
cx q[16],q[6];
rz(-3*pi/8) q[6];
cx q[10],q[6];
rz(3*pi/8) q[6];
cx q[10],q[6];
rz(-3*pi/8) q[6];
cx q[10],q[6];
rz(3*pi/8) q[6];
cx q[10],q[6];
rz(-3*pi/8) q[6];
cx q[4],q[6];
rz(3*pi/8) q[6];
cx q[4],q[6];
rz(-3*pi/8) q[6];
cx q[4],q[6];
rz(3*pi/8) q[6];
cx q[4],q[6];
rz(-3*pi/8) q[6];
cx q[4],q[6];
rz(3*pi/8) q[6];
cx q[4],q[6];
rz(-3*pi/8) q[6];
cx q[4],q[6];
rz(3*pi/8) q[6];
cx q[4],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
rz(-3*pi/8) q[6];
cx q[14],q[6];
rz(3*pi/8) q[6];
cx q[14],q[6];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/4) q[14];
cx q[14],q[4];
rz(pi/4) q[4];
cx q[14],q[4];
rz(-pi/8) q[14];
cx q[14],q[10];
rz(pi/8) q[10];
cx q[14],q[10];
rz(-pi/8) q[10];
rz(-pi/16) q[14];
cx q[14],q[16];
rz(pi/16) q[16];
cx q[14],q[16];
rz(-pi/16) q[16];
rz(-pi/4) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/4) q[4];
cx q[4],q[10];
rz(pi/4) q[10];
cx q[4],q[10];
rz(-pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/4) q[10];
rz(-pi/8) q[4];
cx q[4],q[16];
rz(pi/8) q[16];
cx q[4],q[16];
rz(-pi/8) q[16];
cx q[10],q[16];
rz(pi/4) q[16];
cx q[10],q[16];
rz(-pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
measure q[14] -> c[0];
measure q[4] -> c[1];
measure q[10] -> c[2];
measure q[16] -> c[3];