OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2)  q[1];
ry(pi/2)  q[4];
ry(pi/2)  q[3];
ry(pi/2)  q[9];
ry(pi/2)  q[6];
rz(pi)  q[10];
rz(pi)  q[11];
rz(pi)  q[7];
rz(pi)  q[2];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[1];
rx(pi)  q[4];
rx(pi)  q[3];
rx(pi)  q[9];
rx(pi)  q[6];
rx(pi/2)  q[10];
rx(pi/2)  q[11];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi)  q[5];
rx(pi)  q[8];
rz(pi)  q[6];
rz(2*pi)  q[10];
rz(2*pi)  q[11];
rz(2*pi)  q[7];
rz(2*pi)  q[2];
cx q[3], q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[10];
rx(pi/2)  q[11];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rz(-pi/4)  q[5];
rz(2*pi)  q[6];
rz(3*pi)  q[10];
rz(3*pi)  q[11];
rz(3*pi)  q[7];
rz(3*pi)  q[2];
cx q[4], q[5];
rx(pi/2)  q[6];
ry(pi/2)  q[10];
ry(pi/2)  q[11];
ry(pi/2)  q[7];
ry(pi/2)  q[2];
rz(pi/4)  q[5];
rz(3*pi)  q[6];
rx(pi)  q[10];
rx(pi)  q[11];
rx(pi)  q[7];
rx(pi)  q[2];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[10];
rz(-pi/4)  q[10];
cx q[6], q[10];
rz(pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[10];
cx q[6], q[10];
cx q[6], q[8];
rz(pi/4)  q[10];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[10];
cx q[6], q[8];
rx(pi)  q[10];
ry(pi/2)  q[8];
rz(pi)  q[6];
rx(pi)  q[8];
rx(pi/2)  q[6];
rz(2*pi)  q[6];
cx q[5], q[8];
rx(pi/2)  q[6];
rz(-pi/4)  q[8];
rz(3*pi)  q[6];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi)  q[9];
ry(pi/2)  q[5];
rx(pi)  q[8];
rx(pi/2)  q[9];
rx(pi)  q[5];
rz(2*pi)  q[9];
cx q[3], q[5];
rx(pi/2)  q[9];
rz(-pi/4)  q[5];
rz(3*pi)  q[9];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[3];
ry(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi)  q[5];
rz(2*pi)  q[3];
rx(pi/2)  q[3];
rz(3*pi)  q[3];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[11];
rz(-pi/4)  q[11];
cx q[6], q[11];
rz(pi/4)  q[11];
cx q[8], q[11];
rz(pi/4)  q[8];
rz(-pi/4)  q[11];
cx q[6], q[11];
cx q[6], q[8];
rz(pi/4)  q[11];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[11];
cx q[6], q[8];
rx(pi)  q[11];
ry(pi/2)  q[8];
rx(pi)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
ry(pi/2)  q[5];
rx(pi)  q[8];
rx(pi)  q[5];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[4];
rz(pi)  q[3];
ry(pi/2)  q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi)  q[5];
rz(2*pi)  q[4];
rz(2*pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[3];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[8], q[7];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[6], q[7];
cx q[6], q[8];
rz(pi/4)  q[7];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[7];
cx q[6], q[8];
rx(pi)  q[7];
ry(pi/2)  q[8];
rx(pi)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
cx q[9], q[2];
ry(pi/2)  q[5];
rx(pi)  q[8];
rz(-pi/4)  q[2];
rx(pi)  q[5];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[4];
rz(pi)  q[3];
ry(pi/2)  q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi)  q[5];
rz(2*pi)  q[4];
rz(2*pi)  q[3];
cx q[11], q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(-pi/4)  q[5];
rz(3*pi)  q[4];
rz(3*pi)  q[3];
cx q[10], q[5];
rz(pi)  q[4];
cx q[3], q[2];
rz(pi/4)  q[5];
rx(pi/2)  q[4];
rz(pi/4)  q[2];
cx q[11], q[5];
rz(2*pi)  q[4];
cx q[9], q[2];
rz(pi/4)  q[11];
rz(-pi/4)  q[5];
rx(pi/2)  q[4];
rz(pi/4)  q[9];
rz(-pi/4)  q[2];
cx q[10], q[5];
rz(3*pi)  q[4];
cx q[3], q[2];
cx q[10], q[11];
rz(pi/4)  q[5];
cx q[3], q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
ry(pi/2)  q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[9];
ry(pi/2)  q[2];
cx q[10], q[11];
rx(pi)  q[5];
cx q[3], q[9];
rx(pi)  q[2];
cx q[5], q[8];
rz(pi)  q[3];
rz(pi)  q[9];
rz(-pi/4)  q[8];
rx(pi/2)  q[3];
rx(pi/2)  q[9];
cx q[7], q[8];
rz(2*pi)  q[3];
rz(2*pi)  q[9];
rz(pi/4)  q[8];
rx(pi/2)  q[3];
rx(pi/2)  q[9];
cx q[5], q[8];
rz(3*pi)  q[3];
rz(3*pi)  q[9];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
rz(pi)  q[3];
rz(pi)  q[9];
cx q[7], q[8];
rx(pi/2)  q[3];
rx(pi/2)  q[9];
rz(pi/4)  q[8];
cx q[7], q[5];
rz(2*pi)  q[3];
rz(2*pi)  q[9];
ry(pi/2)  q[8];
rz(pi/4)  q[7];
rz(-pi/4)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[9];
rx(pi)  q[8];
cx q[7], q[5];
rz(3*pi)  q[3];
rz(3*pi)  q[9];
cx q[8], q[1];
rz(-pi/4)  q[1];
cx q[2], q[1];
rz(pi/4)  q[1];
cx q[8], q[1];
rz(-pi/4)  q[1];
rz(pi/4)  q[8];
cx q[2], q[1];
rz(pi/4)  q[1];
cx q[2], q[8];
ry(pi/2)  q[1];
rz(-pi/4)  q[8];
rz(pi/4)  q[2];
rx(pi)  q[1];
cx q[2], q[8];
rz(pi)  q[1];
ry(pi/2)  q[8];
ry(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi)  q[8];
rx(pi)  q[2];
rz(2*pi)  q[1];
cx q[9], q[2];
cx q[5], q[8];
rx(pi/2)  q[1];
rz(-pi/4)  q[2];
rz(-pi/4)  q[8];
rz(3*pi)  q[1];
cx q[3], q[2];
cx q[7], q[8];
ry(pi/2)  q[1];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
rx(pi)  q[1];
cx q[9], q[2];
cx q[5], q[8];
ry(pi/2)  q[1];
rz(pi/4)  q[9];
rz(-pi/4)  q[2];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
rx(pi)  q[1];
cx q[3], q[2];
cx q[7], q[8];
cx q[3], q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[9];
ry(pi/2)  q[2];
ry(pi/2)  q[8];
rz(pi/4)  q[7];
rz(-pi/4)  q[5];
cx q[3], q[9];
rx(pi)  q[2];
rx(pi)  q[8];
cx q[7], q[5];
rz(pi)  q[3];
ry(pi/2)  q[8];
ry(pi/2)  q[7];
ry(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi)  q[8];
rx(pi)  q[7];
rx(pi)  q[5];
rz(2*pi)  q[3];
cx q[11], q[5];
rx(pi/2)  q[3];
rz(-pi/4)  q[5];
rz(3*pi)  q[3];
cx q[10], q[5];
rz(pi/4)  q[5];
cx q[11], q[5];
rz(pi/4)  q[11];
rz(-pi/4)  q[5];
cx q[10], q[5];
cx q[10], q[11];
rz(pi/4)  q[5];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
ry(pi/2)  q[5];
cx q[10], q[11];
rx(pi)  q[5];
ry(pi/2)  q[10];
ry(pi/2)  q[11];
ry(pi/2)  q[5];
rx(pi)  q[10];
rx(pi)  q[11];
rx(pi)  q[5];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[8], q[7];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[6], q[7];
cx q[6], q[8];
rz(pi/4)  q[7];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[7];
cx q[6], q[8];
rx(pi)  q[7];
ry(pi/2)  q[8];
rx(pi)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
ry(pi/2)  q[5];
rx(pi)  q[8];
rx(pi)  q[5];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[4];
rz(pi)  q[3];
ry(pi/2)  q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi)  q[5];
rz(2*pi)  q[4];
rz(2*pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[3];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[11];
rz(-pi/4)  q[11];
cx q[6], q[11];
rz(pi/4)  q[11];
cx q[8], q[11];
rz(pi/4)  q[8];
rz(-pi/4)  q[11];
cx q[6], q[11];
cx q[6], q[8];
rz(pi/4)  q[11];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[11];
cx q[6], q[8];
rx(pi)  q[11];
ry(pi/2)  q[8];
rz(pi)  q[6];
rx(pi)  q[8];
rx(pi/2)  q[6];
rz(2*pi)  q[6];
cx q[5], q[8];
rx(pi/2)  q[6];
rz(-pi/4)  q[8];
rz(3*pi)  q[6];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi)  q[9];
ry(pi/2)  q[5];
rx(pi)  q[8];
rx(pi/2)  q[9];
rx(pi)  q[5];
rz(2*pi)  q[9];
cx q[3], q[5];
rx(pi/2)  q[9];
rz(-pi/4)  q[5];
rz(3*pi)  q[9];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[3];
ry(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi)  q[5];
rz(2*pi)  q[3];
rx(pi/2)  q[3];
rz(3*pi)  q[3];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[10];
rz(-pi/4)  q[10];
cx q[6], q[10];
rz(pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[10];
cx q[6], q[10];
cx q[6], q[8];
rz(pi/4)  q[10];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
ry(pi/2)  q[10];
cx q[6], q[8];
rx(pi)  q[10];
ry(pi/2)  q[8];
rz(pi)  q[6];
rx(pi)  q[8];
rx(pi/2)  q[6];
rz(2*pi)  q[6];
cx q[5], q[8];
rx(pi/2)  q[6];
rz(-pi/4)  q[8];
rz(3*pi)  q[6];
cx q[9], q[8];
ry(pi/2)  q[6];
rz(pi/4)  q[8];
rx(pi)  q[6];
cx q[5], q[8];
rz(pi)  q[6];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
rx(pi/2)  q[6];
cx q[9], q[8];
rz(2*pi)  q[6];
rz(pi/4)  q[8];
cx q[9], q[5];
rx(pi/2)  q[6];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rz(3*pi)  q[6];
rx(pi)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
ry(pi/2)  q[9];
ry(pi/2)  q[5];
rx(pi)  q[8];
rx(pi)  q[9];
rx(pi)  q[5];
rz(pi)  q[9];
cx q[3], q[5];
rx(pi/2)  q[9];
rz(-pi/4)  q[5];
rz(2*pi)  q[9];
cx q[4], q[5];
rx(pi/2)  q[9];
rz(pi/4)  q[5];
rz(3*pi)  q[9];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
ry(pi/2)  q[4];
ry(pi/2)  q[3];
ry(pi/2)  q[5];
rx(pi)  q[4];
rx(pi)  q[3];
rx(pi)  q[5];
rz(pi)  q[4];
rz(pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[3];
cx q[3], q[5];
rz(-pi/4)  q[5];
cx q[4], q[5];
rz(pi/4)  q[5];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[5], q[8];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
cx q[8], q[1];
rz(-pi/4)  q[1];
cx q[6], q[1];
rz(pi/4)  q[1];
cx q[8], q[1];
rz(-pi/4)  q[1];
rz(pi/4)  q[8];
cx q[6], q[1];
rz(pi/4)  q[1];
cx q[6], q[8];
ry(pi/2)  q[1];
rz(-pi/4)  q[8];
rz(pi/4)  q[6];
rx(pi)  q[1];
cx q[6], q[8];
ry(pi/2)  q[1];
ry(pi/2)  q[8];
rz(pi)  q[6];
rx(pi)  q[1];
rx(pi)  q[8];
rx(pi/2)  q[6];
rz(pi)  q[1];
rz(2*pi)  q[6];
cx q[5], q[8];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rz(-pi/4)  q[8];
rz(2*pi)  q[1];
rz(3*pi)  q[6];
cx q[9], q[8];
rx(pi/2)  q[1];
ry(pi/2)  q[6];
rz(pi/4)  q[8];
rz(3*pi)  q[1];
rx(pi)  q[6];
cx q[5], q[8];
ry(pi/2)  q[1];
rz(-pi/4)  q[8];
rz(pi/4)  q[5];
rx(pi)  q[1];
cx q[9], q[8];
rz(pi/4)  q[8];
cx q[9], q[5];
ry(pi/2)  q[8];
rz(pi/4)  q[9];
rz(-pi/4)  q[5];
rx(pi)  q[8];
cx q[9], q[5];
rz(pi)  q[9];
ry(pi/2)  q[5];
rx(pi/2)  q[9];
rx(pi)  q[5];
rz(2*pi)  q[9];
cx q[3], q[5];
rx(pi/2)  q[9];
rz(-pi/4)  q[5];
rz(3*pi)  q[9];
cx q[4], q[5];
ry(pi/2)  q[9];
rz(pi/4)  q[5];
rx(pi)  q[9];
cx q[3], q[5];
rz(pi/4)  q[3];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[4], q[3];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
rz(-pi/4)  q[3];
ry(pi/2)  q[5];
cx q[4], q[3];
rx(pi)  q[5];
rz(pi)  q[4];
rz(pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[3];
ry(pi/2)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[4];
rx(pi)  q[3];
measure q[4] -> c[0];
measure q[3] -> c[1];
measure q[9] -> c[2];
measure q[6] -> c[3];

