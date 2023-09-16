OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[5];
rz(pi)  q[4];
rz(pi)  q[2];
rz(pi)  q[9];
rz(pi)  q[10];
rz(pi)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rx(pi/2)  q[1];
rz(2*pi)  q[4];
rz(2*pi)  q[2];
rz(2*pi)  q[9];
rz(2*pi)  q[10];
rz(2*pi)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rx(pi/2)  q[1];
rz(3*pi)  q[4];
rz(3*pi)  q[2];
rz(3*pi)  q[9];
rz(3*pi)  q[10];
rz(3*pi)  q[1];
cx q[4], q[2];
cx q[8], q[9];
cx q[7], q[10];
cx q[4], q[3];
ry(pi/2)  q[4];
rx(pi)  q[4];
cx q[2], q[4];
rz(-pi/4)  q[4];
cx q[3], q[4];
rz(pi/4)  q[4];
cx q[2], q[4];
rz(-pi/4)  q[4];
rz(pi/4)  q[2];
cx q[3], q[4];
rz(pi/4)  q[4];
cx q[3], q[2];
ry(pi/2)  q[4];
rz(-pi/4)  q[2];
rz(pi/4)  q[3];
rx(pi)  q[4];
cx q[3], q[2];
cx q[6], q[2];
cx q[6], q[4];
ry(pi/2)  q[6];
rx(pi)  q[6];
cx q[2], q[6];
rz(-pi/4)  q[6];
cx q[4], q[6];
rz(pi/4)  q[6];
cx q[2], q[6];
rz(-pi/4)  q[6];
rz(pi/4)  q[2];
cx q[4], q[6];
rz(pi/4)  q[6];
cx q[4], q[2];
ry(pi/2)  q[6];
rz(pi/4)  q[4];
rz(-pi/4)  q[2];
rx(pi)  q[6];
cx q[4], q[2];
cx q[8], q[6];
ry(pi/2)  q[8];
rx(pi)  q[8];
cx q[9], q[8];
rz(-pi/4)  q[8];
cx q[6], q[8];
rz(pi/4)  q[8];
cx q[9], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[9];
cx q[6], q[8];
rz(pi/4)  q[8];
cx q[6], q[9];
ry(pi/2)  q[8];
rz(pi/4)  q[6];
rz(-pi/4)  q[9];
rx(pi)  q[8];
cx q[6], q[9];
cx q[7], q[8];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[10], q[7];
rz(-pi/4)  q[7];
cx q[8], q[7];
rz(pi/4)  q[7];
cx q[10], q[7];
rz(-pi/4)  q[7];
rz(pi/4)  q[10];
cx q[8], q[7];
rz(pi/4)  q[7];
cx q[8], q[10];
ry(pi/2)  q[7];
rz(pi/4)  q[8];
rz(-pi/4)  q[10];
rx(pi)  q[7];
cx q[8], q[10];
cx q[7], q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[1], q[7];
rz(-pi/4)  q[7];
cx q[8], q[7];
rz(pi/4)  q[7];
cx q[1], q[7];
rz(-pi/4)  q[7];
rz(pi/4)  q[1];
cx q[8], q[7];
rz(pi/4)  q[7];
cx q[8], q[1];
ry(pi/2)  q[7];
rz(pi/4)  q[8];
rz(-pi/4)  q[1];
rx(pi)  q[7];
cx q[8], q[1];
cx q[7], q[8];
cx q[8], q[1];
ry(pi/2)  q[8];
rx(pi)  q[8];
cx q[10], q[8];
rz(-pi/4)  q[8];
cx q[6], q[8];
rz(pi/4)  q[8];
cx q[10], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[10];
cx q[6], q[8];
rz(pi/4)  q[8];
cx q[6], q[10];
ry(pi/2)  q[8];
rz(pi/4)  q[6];
rz(-pi/4)  q[10];
rx(pi)  q[8];
cx q[6], q[10];
cx q[8], q[6];
cx q[6], q[10];
ry(pi/2)  q[6];
rx(pi)  q[6];
cx q[9], q[6];
rz(-pi/4)  q[6];
cx q[4], q[6];
rz(pi/4)  q[6];
cx q[9], q[6];
rz(-pi/4)  q[6];
rz(pi/4)  q[9];
cx q[4], q[6];
rz(pi/4)  q[6];
cx q[4], q[9];
ry(pi/2)  q[6];
rz(pi/4)  q[4];
rz(-pi/4)  q[9];
rx(pi)  q[6];
cx q[4], q[9];
cx q[6], q[4];
cx q[4], q[9];
ry(pi/2)  q[4];
rx(pi)  q[4];
cx q[2], q[4];
rz(-pi/4)  q[4];
cx q[3], q[4];
rz(pi/4)  q[4];
cx q[2], q[4];
rz(-pi/4)  q[4];
rz(pi/4)  q[2];
cx q[3], q[4];
rz(pi/4)  q[4];
cx q[3], q[2];
ry(pi/2)  q[4];
rz(-pi/4)  q[2];
rz(pi/4)  q[3];
rx(pi)  q[4];
cx q[3], q[2];
cx q[4], q[3];
cx q[3], q[2];
measure q[2] -> c[0];
measure q[9] -> c[1];
measure q[10] -> c[2];
measure q[1] -> c[3];
measure q[5] -> c[4];

