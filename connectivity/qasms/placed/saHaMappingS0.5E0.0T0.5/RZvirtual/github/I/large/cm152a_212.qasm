OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[16];
ry(pi/2)  q[4];
rz(pi/4)  q[6];
rz(pi/4)  q[7];
rz(pi/4)  q[9];
rz(pi/4)  q[14];
rz(pi/4)  q[12];
rz(pi/4)  q[15];
rz(pi/4)  q[1];
rz(pi/4)  q[13];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
rz(pi/4)  q[5];
rx(pi)  q[4];
cx q[9], q[14];
cx q[8], q[7];
cx q[5], q[6];
rz(pi/4)  q[4];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
cx q[8], q[9];
rz(pi/4)  q[5];
rz(-pi/4)  q[9];
cx q[14], q[8];
rz(pi/4)  q[8];
cx q[14], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[14];
cx q[8], q[9];
cx q[14], q[8];
ry(pi/2)  q[8];
cx q[9], q[14];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[14];
rz(pi/4)  q[8];
cx q[9], q[14];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[14], q[8];
rz(pi/4)  q[8];
cx q[14], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[14];
cx q[8], q[9];
cx q[14], q[8];
ry(pi/2)  q[8];
cx q[9], q[14];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[8];
cx q[9], q[13];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[13], q[8];
rz(pi/4)  q[8];
cx q[13], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[13];
cx q[8], q[9];
cx q[13], q[8];
ry(pi/2)  q[8];
cx q[9], q[13];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[13];
rz(pi/4)  q[8];
cx q[9], q[13];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[13], q[8];
rz(pi/4)  q[8];
cx q[13], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[13];
cx q[8], q[9];
cx q[13], q[8];
ry(pi/2)  q[8];
cx q[9], q[13];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[13];
rz(pi/4)  q[8];
cx q[9], q[13];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rz(pi/4)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[9];
rz(-pi/4)  q[9];
cx q[13], q[5];
rz(pi/4)  q[5];
cx q[13], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[13];
cx q[5], q[9];
cx q[13], q[5];
ry(pi/2)  q[5];
cx q[9], q[13];
rx(pi)  q[5];
rz(pi/4)  q[9];
rz(pi/4)  q[13];
rz(pi/4)  q[5];
cx q[9], q[13];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rx(pi)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[4];
rz(pi/4)  q[5];
cx q[8], q[7];
rz(pi/4)  q[4];
cx q[5], q[9];
rz(-pi/4)  q[9];
cx q[13], q[5];
rz(pi/4)  q[5];
cx q[13], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[13];
cx q[5], q[9];
cx q[13], q[5];
ry(pi/2)  q[5];
cx q[9], q[13];
rx(pi)  q[5];
rz(pi/4)  q[9];
rz(pi/4)  q[5];
cx q[9], q[15];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[15], q[8];
rz(pi/4)  q[8];
cx q[15], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[15];
cx q[8], q[9];
cx q[15], q[8];
ry(pi/2)  q[8];
cx q[9], q[15];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[15];
rz(pi/4)  q[8];
cx q[9], q[15];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[15], q[8];
rz(pi/4)  q[8];
cx q[15], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[15];
cx q[8], q[9];
cx q[15], q[8];
ry(pi/2)  q[8];
cx q[9], q[15];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[8];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[9], q[8];
cx q[2], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[2];
cx q[7], q[5];
rz(-pi/4)  q[2];
rz(pi/4)  q[5];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[5], q[2];
cx q[7], q[5];
ry(pi/2)  q[5];
cx q[2], q[7];
rx(pi)  q[5];
rz(pi/4)  q[7];
ry(pi/2)  q[2];
ry(pi/2)  q[5];
rx(pi)  q[2];
rx(pi)  q[5];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[2], q[9];
cx q[8], q[2];
rz(-pi/4)  q[9];
cx q[8], q[9];
rz(pi/4)  q[2];
rz(-pi/4)  q[8];
rz(-pi/4)  q[9];
cx q[2], q[9];
cx q[8], q[2];
cx q[9], q[8];
ry(pi/2)  q[2];
rz(pi/4)  q[8];
rz(pi/4)  q[9];
rx(pi)  q[2];
cx q[9], q[8];
rz(pi/4)  q[2];
cx q[2], q[7];
cx q[5], q[2];
cx q[7], q[5];
rz(-pi/4)  q[2];
rz(pi/4)  q[5];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[5], q[2];
cx q[7], q[5];
ry(pi/2)  q[5];
cx q[2], q[7];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[2], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[2];
cx q[7], q[5];
rz(-pi/4)  q[2];
rz(pi/4)  q[5];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[5], q[2];
cx q[7], q[5];
ry(pi/2)  q[5];
cx q[2], q[7];
rx(pi)  q[5];
rz(pi/4)  q[7];
ry(pi/2)  q[2];
ry(pi/2)  q[5];
rx(pi)  q[2];
rx(pi)  q[5];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[2], q[9];
cx q[8], q[2];
rz(-pi/4)  q[9];
cx q[8], q[9];
rz(pi/4)  q[2];
rz(-pi/4)  q[8];
rz(-pi/4)  q[9];
cx q[2], q[9];
cx q[8], q[2];
cx q[9], q[8];
ry(pi/2)  q[2];
rz(pi/4)  q[8];
rz(pi/4)  q[9];
rx(pi)  q[2];
cx q[9], q[8];
rz(pi/4)  q[2];
cx q[2], q[7];
cx q[5], q[2];
cx q[7], q[5];
rz(-pi/4)  q[2];
rz(pi/4)  q[5];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[5], q[2];
cx q[7], q[5];
ry(pi/2)  q[5];
cx q[2], q[7];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rz(pi/4)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[9];
cx q[8], q[5];
rz(-pi/4)  q[9];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[8];
rz(-pi/4)  q[9];
cx q[5], q[9];
cx q[8], q[5];
ry(pi/2)  q[5];
cx q[9], q[8];
rx(pi)  q[5];
rz(pi/4)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[5];
cx q[9], q[8];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rx(pi)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[9];
cx q[8], q[5];
rz(-pi/4)  q[9];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[8];
rz(-pi/4)  q[9];
cx q[5], q[9];
cx q[8], q[5];
ry(pi/2)  q[5];
cx q[9], q[8];
rx(pi)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[9];
rz(pi/4)  q[5];
cx q[8], q[7];
rz(pi/4)  q[9];
cx q[5], q[6];
cx q[9], q[12];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[12], q[8];
rz(pi/4)  q[8];
cx q[12], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[12];
cx q[8], q[9];
cx q[12], q[8];
ry(pi/2)  q[8];
cx q[9], q[12];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[12];
rz(pi/4)  q[8];
cx q[9], q[12];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[12], q[8];
rz(pi/4)  q[8];
cx q[12], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[12];
cx q[8], q[9];
cx q[12], q[8];
ry(pi/2)  q[8];
cx q[9], q[12];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[8];
cx q[9], q[2];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[2], q[8];
rz(pi/4)  q[8];
cx q[2], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[2];
cx q[8], q[9];
cx q[2], q[8];
ry(pi/2)  q[8];
cx q[9], q[2];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[9], q[2];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[2], q[8];
rz(pi/4)  q[8];
cx q[2], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[2];
cx q[8], q[9];
cx q[2], q[8];
ry(pi/2)  q[8];
cx q[9], q[2];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[9], q[2];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rz(pi/4)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[9];
rz(-pi/4)  q[9];
cx q[2], q[5];
rz(pi/4)  q[5];
cx q[2], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[2];
cx q[5], q[9];
cx q[2], q[5];
ry(pi/2)  q[5];
cx q[9], q[2];
rx(pi)  q[5];
rz(pi/4)  q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[9], q[2];
cx q[5], q[7];
cx q[4], q[5];
rz(-pi/4)  q[5];
cx q[7], q[4];
rz(pi/4)  q[4];
cx q[7], q[5];
rz(-pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[4], q[5];
cx q[7], q[4];
ry(pi/2)  q[4];
cx q[5], q[7];
rx(pi)  q[4];
ry(pi/2)  q[5];
rx(pi)  q[7];
ry(pi/2)  q[4];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[4];
rz(pi/4)  q[5];
cx q[8], q[7];
rz(pi/4)  q[4];
cx q[5], q[9];
rz(-pi/4)  q[9];
cx q[2], q[5];
rz(pi/4)  q[5];
cx q[2], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[2];
cx q[5], q[9];
cx q[2], q[5];
ry(pi/2)  q[5];
cx q[9], q[2];
rx(pi)  q[5];
rz(pi/4)  q[9];
rz(pi/4)  q[2];
rz(pi/4)  q[5];
cx q[9], q[1];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[1], q[8];
rz(pi/4)  q[8];
cx q[1], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[1];
cx q[8], q[9];
cx q[1], q[8];
ry(pi/2)  q[8];
cx q[9], q[1];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[1];
rz(pi/4)  q[8];
cx q[9], q[1];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rz(pi/4)  q[5];
cx q[8], q[7];
cx q[5], q[6];
cx q[4], q[5];
cx q[6], q[4];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[6], q[5];
rz(-pi/4)  q[6];
rz(-pi/4)  q[5];
cx q[4], q[5];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[5], q[6];
rx(pi)  q[4];
rx(pi)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[4];
rz(pi/4)  q[6];
rx(pi)  q[5];
rx(pi)  q[4];
rz(pi/4)  q[5];
rz(pi/4)  q[4];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
rx(pi)  q[8];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[5];
cx q[8], q[9];
rz(-pi/4)  q[9];
cx q[1], q[8];
rz(pi/4)  q[8];
cx q[1], q[9];
rz(-pi/4)  q[9];
rz(-pi/4)  q[1];
cx q[8], q[9];
cx q[1], q[8];
ry(pi/2)  q[8];
cx q[9], q[1];
rx(pi)  q[8];
rz(pi/4)  q[9];
rz(pi/4)  q[8];
cx q[8], q[7];
cx q[5], q[8];
rz(-pi/4)  q[8];
cx q[7], q[5];
rz(pi/4)  q[5];
cx q[7], q[8];
rz(-pi/4)  q[8];
rz(-pi/4)  q[7];
cx q[5], q[8];
cx q[7], q[5];
cx q[8], q[7];
ry(pi/2)  q[5];
rz(pi/4)  q[8];
rx(pi)  q[5];
rz(pi/4)  q[7];
cx q[8], q[6];
rz(pi/4)  q[5];
cx q[2], q[7];
cx q[4], q[8];
cx q[9], q[5];
cx q[6], q[4];
rz(-pi/4)  q[8];
rz(pi/4)  q[4];
cx q[6], q[8];
rz(-pi/4)  q[6];
rz(-pi/4)  q[8];
cx q[4], q[8];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[8], q[6];
rx(pi)  q[4];
rz(pi/4)  q[6];
ry(pi/2)  q[8];
ry(pi/2)  q[4];
rx(pi)  q[8];
rx(pi)  q[4];
rz(pi/4)  q[8];
rz(pi/4)  q[4];
cx q[8], q[2];
cx q[7], q[8];
rz(-pi/4)  q[2];
rz(pi/4)  q[8];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[8], q[2];
cx q[7], q[8];
ry(pi/2)  q[8];
cx q[2], q[7];
rx(pi)  q[8];
rz(pi/4)  q[7];
ry(pi/2)  q[2];
ry(pi/2)  q[8];
rx(pi)  q[2];
rx(pi)  q[8];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[2], q[9];
cx q[5], q[2];
rz(-pi/4)  q[9];
cx q[5], q[9];
rz(pi/4)  q[2];
rz(-pi/4)  q[5];
rz(-pi/4)  q[9];
cx q[2], q[9];
cx q[5], q[2];
cx q[9], q[5];
ry(pi/2)  q[2];
rz(pi/4)  q[5];
rz(pi/4)  q[9];
rx(pi)  q[2];
cx q[9], q[5];
rz(pi/4)  q[2];
cx q[2], q[7];
cx q[8], q[2];
cx q[7], q[8];
rz(-pi/4)  q[2];
rz(pi/4)  q[8];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[8], q[2];
cx q[7], q[8];
ry(pi/2)  q[8];
cx q[2], q[7];
rx(pi)  q[8];
rz(pi/4)  q[7];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[2], q[7];
cx q[8], q[6];
cx q[4], q[8];
cx q[6], q[4];
rz(-pi/4)  q[8];
rz(pi/4)  q[4];
cx q[6], q[8];
rz(-pi/4)  q[6];
rz(-pi/4)  q[8];
cx q[4], q[8];
cx q[6], q[4];
ry(pi/2)  q[4];
cx q[8], q[6];
rx(pi)  q[4];
ry(pi/2)  q[8];
rx(pi)  q[8];
rz(pi/4)  q[8];
cx q[8], q[2];
cx q[7], q[8];
rz(-pi/4)  q[2];
rz(pi/4)  q[8];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[8], q[2];
cx q[7], q[8];
ry(pi/2)  q[8];
cx q[2], q[7];
rx(pi)  q[8];
rz(pi/4)  q[7];
ry(pi/2)  q[2];
ry(pi/2)  q[8];
rx(pi)  q[2];
rx(pi)  q[8];
rz(pi/4)  q[2];
rz(pi/4)  q[8];
cx q[2], q[9];
cx q[5], q[2];
rz(-pi/4)  q[9];
cx q[5], q[9];
rz(pi/4)  q[2];
rz(-pi/4)  q[5];
rz(-pi/4)  q[9];
cx q[2], q[9];
cx q[5], q[2];
cx q[9], q[5];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(pi/4)  q[2];
cx q[2], q[7];
cx q[8], q[2];
cx q[7], q[8];
rz(-pi/4)  q[2];
rz(pi/4)  q[8];
cx q[7], q[2];
rz(-pi/4)  q[7];
rz(-pi/4)  q[2];
cx q[8], q[2];
cx q[7], q[8];
ry(pi/2)  q[8];
cx q[2], q[7];
rx(pi)  q[8];
measure q[4] -> c[0];
measure q[6] -> c[1];
measure q[7] -> c[2];
measure q[9] -> c[3];
measure q[14] -> c[4];
measure q[12] -> c[5];
measure q[15] -> c[6];
measure q[1] -> c[7];
measure q[13] -> c[8];
measure q[2] -> c[9];
measure q[8] -> c[10];
measure q[5] -> c[11];
measure q[11] -> c[12];
measure q[10] -> c[13];
measure q[0] -> c[14];
measure q[3] -> c[15];

