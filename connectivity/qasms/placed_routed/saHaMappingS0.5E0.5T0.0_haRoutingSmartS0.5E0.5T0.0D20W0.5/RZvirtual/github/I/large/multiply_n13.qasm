OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
rz(pi)  q[4];
rz(pi)  q[7];
rz(pi)  q[9];
rz(pi)  q[6];
ry(pi/2)  q[3];
ry(pi/2)  q[12];
ry(pi/2)  q[10];
ry(pi/2)  q[5];
ry(pi/2)  q[0];
ry(pi/2)  q[8];
rx(pi/2)  q[4];
rx(pi/2)  q[7];
rx(pi/2)  q[9];
rx(pi/2)  q[6];
rx(pi)  q[3];
rx(pi)  q[12];
rx(pi)  q[10];
rx(pi)  q[5];
rx(pi)  q[0];
rx(pi)  q[8];
rz(2*pi)  q[4];
rz(2*pi)  q[7];
rz(2*pi)  q[9];
rz(2*pi)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[7];
rx(pi/2)  q[9];
rx(pi/2)  q[6];
rz(3*pi)  q[4];
rz(3*pi)  q[7];
rz(3*pi)  q[9];
rz(3*pi)  q[6];
cx q[4], q[3];
cx q[7], q[12];
rz(-pi/4)  q[3];
rz(-pi/4)  q[12];
cx q[9], q[3];
rz(pi/4)  q[3];
cx q[4], q[3];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
cx q[9], q[3];
rz(pi/4)  q[3];
cx q[9], q[4];
rz(-pi/4)  q[4];
rz(pi/4)  q[9];
ry(pi/2)  q[3];
rx(pi)  q[3];
cx q[9], q[4];
cx q[9], q[12];
cx q[4], q[10];
rz(pi/4)  q[12];
rz(-pi/4)  q[10];
cx q[7], q[12];
cx q[2], q[10];
rz(pi/4)  q[7];
rz(-pi/4)  q[12];
rz(pi/4)  q[10];
cx q[9], q[12];
cx q[4], q[10];
rz(pi/4)  q[12];
rz(pi/4)  q[4];
rz(-pi/4)  q[10];
cx q[9], q[7];
rz(-pi/4)  q[7];
rz(pi/4)  q[9];
ry(pi/2)  q[12];
cx q[2], q[10];
rx(pi)  q[12];
rz(pi/4)  q[10];
cx q[9], q[7];
cx q[2], q[4];
rz(-pi/4)  q[4];
rz(pi/4)  q[2];
ry(pi/2)  q[10];
cx q[7], q[5];
cx q[12], q[11];
rx(pi)  q[10];
rz(-pi/4)  q[5];
cx q[2], q[4];
cx q[2], q[5];
cx q[4], q[0];
cx q[10], q[11];
rz(pi/4)  q[5];
rz(-pi/4)  q[0];
cx q[7], q[5];
cx q[6], q[0];
rz(pi/4)  q[7];
rz(-pi/4)  q[5];
rz(pi/4)  q[0];
cx q[2], q[5];
cx q[4], q[0];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[0];
cx q[2], q[7];
rz(-pi/4)  q[7];
rz(pi/4)  q[2];
ry(pi/2)  q[5];
cx q[6], q[0];
rx(pi)  q[5];
rz(pi/4)  q[0];
cx q[2], q[7];
cx q[6], q[4];
rz(-pi/4)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[0];
cx q[7], q[8];
cx q[5], q[1];
rx(pi)  q[0];
rz(-pi/4)  q[8];
cx q[6], q[4];
cx q[6], q[8];
cx q[0], q[1];
rz(pi/4)  q[8];
cx q[7], q[8];
rz(pi/4)  q[7];
rz(-pi/4)  q[8];
cx q[6], q[8];
rz(pi/4)  q[8];
cx q[6], q[7];
ry(pi/2)  q[8];
rz(-pi/4)  q[7];
rz(pi/4)  q[6];
rx(pi)  q[8];
cx q[6], q[7];
measure q[3] -> c[0];
measure q[11] -> c[1];
measure q[1] -> c[2];
measure q[8] -> c[3];