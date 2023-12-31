OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[5];
rz(pi) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(pi) q[9];
rx(pi/2) q[9];
rz(2*pi) q[9];
rx(pi/2) q[9];
rz(3*pi) q[9];
cx q[9],q[2];
cx q[9],q[4];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[2],q[9];
rz(-pi/4) q[9];
cx q[4],q[9];
rz(pi/4) q[9];
cx q[2],q[9];
rz(pi/4) q[2];
rz(-pi/4) q[9];
cx q[4],q[9];
cx q[4],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[4];
cx q[4],q[2];
cx q[6],q[2];
rz(pi/4) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[6],q[9];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[2],q[6];
rz(-pi/4) q[6];
cx q[9],q[6];
rz(pi/4) q[6];
cx q[2],q[6];
rz(pi/4) q[2];
rz(-pi/4) q[6];
cx q[9],q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[9],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[9];
cx q[9],q[2];
cx q[10],q[3];
rz(pi) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(pi) q[13];
rx(pi/2) q[13];
rz(2*pi) q[13];
rx(pi/2) q[13];
rz(3*pi) q[13];
cx q[16],q[13];
cx q[16],q[6];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[13],q[16];
rz(-pi/4) q[16];
cx q[6],q[16];
rz(pi/4) q[16];
cx q[13],q[16];
rz(pi/4) q[13];
rz(-pi/4) q[16];
cx q[6],q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[16],q[10];
rz(pi/4) q[10];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[16],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[10],q[7];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[11],q[10];
rz(-pi/4) q[10];
rz(pi/4) q[3];
cx q[16],q[3];
rz(pi/4) q[16];
rz(-pi/4) q[3];
cx q[16],q[3];
cx q[16],q[10];
rz(pi/4) q[10];
cx q[11],q[10];
rz(-pi/4) q[10];
rz(pi/4) q[11];
cx q[16],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[16],q[11];
rz(-pi/4) q[11];
rz(pi/4) q[16];
cx q[16],q[11];
cx q[10],q[16];
cx q[16],q[11];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[3],q[16];
rz(-pi/4) q[16];
cx q[6],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[6];
cx q[6],q[13];
cx q[6],q[16];
rz(pi/4) q[16];
cx q[3],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[3];
cx q[6],q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[16],q[6];
cx q[6],q[3];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[13],q[6];
rz(-pi/4) q[6];
cx q[9],q[6];
rz(pi/4) q[6];
cx q[13],q[6];
rz(pi/4) q[13];
rz(-pi/4) q[6];
cx q[9],q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[9],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[9];
cx q[9],q[13];
cx q[6],q[9];
cx q[9],q[13];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[2],q[9];
rz(-pi/4) q[9];
cx q[4],q[9];
rz(pi/4) q[9];
cx q[2],q[9];
rz(pi/4) q[2];
rz(-pi/4) q[9];
cx q[4],q[9];
cx q[4],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[4];
cx q[4],q[2];
rz(pi/4) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[4];
cx q[4],q[2];
measure q[2] -> c[0];
measure q[13] -> c[1];
measure q[3] -> c[2];
measure q[11] -> c[3];
measure q[7] -> c[4];
