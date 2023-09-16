OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[6];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[2],q[9];
rz(pi) q[10];
rx(pi/2) q[10];
rz(2*pi) q[10];
rx(pi/2) q[10];
rz(3*pi) q[10];
cx q[2],q[10];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[13],q[10];
rz(-pi/4) q[10];
cx q[7],q[10];
rz(pi/4) q[10];
cx q[13],q[10];
rz(-pi/4) q[10];
rz(pi/4) q[13];
cx q[7],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[7],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[7];
cx q[7],q[13];
rz(pi) q[13];
rx(pi/2) q[13];
rz(2*pi) q[13];
rx(pi/2) q[13];
rz(3*pi) q[13];
cx q[13],q[10];
rz(-pi/4) q[10];
rz(pi) q[7];
rx(pi/2) q[7];
rz(2*pi) q[7];
rx(pi/2) q[7];
rz(3*pi) q[7];
cx q[7],q[10];
rz(pi/4) q[10];
cx q[13],q[10];
rz(-pi/4) q[10];
rz(pi/4) q[13];
cx q[7],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi) q[10];
rx(pi/2) q[10];
rz(2*pi) q[10];
rx(pi/2) q[10];
rz(3*pi) q[10];
cx q[7],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[7];
cx q[7],q[13];
rz(pi) q[13];
rx(pi/2) q[13];
rz(2*pi) q[13];
rx(pi/2) q[13];
rz(3*pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi) q[7];
rx(pi/2) q[7];
rz(2*pi) q[7];
rx(pi/2) q[7];
rz(3*pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
measure q[7] -> c[0];
measure q[13] -> c[1];
measure q[2] -> c[2];
measure q[10] -> c[3];
measure q[9] -> c[4];
measure q[6] -> c[5];
