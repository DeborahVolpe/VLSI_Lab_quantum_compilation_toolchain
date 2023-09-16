OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2)  q[14];
ry(pi/2)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[8];
ry(pi/2)  q[15];
rz(pi)  q[13];
rz(pi)  q[11];
rz(pi)  q[12];
rz(pi)  q[9];
ry(pi/2)  q[7];
ry(pi/2)  q[10];
rx(pi)  q[14];
rx(pi)  q[6];
rx(pi)  q[5];
rx(pi)  q[8];
rx(pi)  q[15];
rx(pi/2)  q[13];
rx(pi/2)  q[11];
rx(pi/2)  q[12];
rx(pi/2)  q[9];
rx(pi)  q[7];
rx(pi)  q[10];
rz(pi)  q[15];
rz(2*pi)  q[13];
rz(2*pi)  q[11];
rz(2*pi)  q[12];
rz(2*pi)  q[9];
cx q[5], q[7];
rx(pi/2)  q[15];
rx(pi/2)  q[13];
rx(pi/2)  q[11];
rx(pi/2)  q[12];
rx(pi/2)  q[9];
rz(-pi/4)  q[7];
rz(2*pi)  q[15];
rz(3*pi)  q[13];
rz(3*pi)  q[11];
rz(3*pi)  q[12];
rz(3*pi)  q[9];
cx q[6], q[7];
rx(pi/2)  q[15];
ry(pi/2)  q[13];
ry(pi/2)  q[11];
ry(pi/2)  q[12];
ry(pi/2)  q[9];
rz(pi/4)  q[7];
rz(3*pi)  q[15];
rx(pi)  q[13];
rx(pi)  q[11];
rx(pi)  q[12];
rx(pi)  q[9];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[13];
rz(-pi/4)  q[13];
cx q[15], q[13];
rz(pi/4)  q[13];
cx q[10], q[13];
rz(pi/4)  q[10];
rz(-pi/4)  q[13];
cx q[15], q[13];
rz(pi/4)  q[13];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[13];
rx(pi)  q[13];
cx q[15], q[10];
ry(pi/2)  q[10];
rz(pi)  q[15];
rx(pi)  q[10];
rx(pi/2)  q[15];
rz(2*pi)  q[15];
cx q[7], q[10];
rx(pi/2)  q[15];
rz(-pi/4)  q[10];
rz(3*pi)  q[15];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi)  q[8];
ry(pi/2)  q[7];
rx(pi)  q[10];
rx(pi/2)  q[8];
rx(pi)  q[7];
rz(2*pi)  q[8];
cx q[5], q[7];
rx(pi/2)  q[8];
rz(-pi/4)  q[7];
rz(3*pi)  q[8];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[5];
ry(pi/2)  q[7];
rx(pi/2)  q[5];
rx(pi)  q[7];
rz(2*pi)  q[5];
rx(pi/2)  q[5];
rz(3*pi)  q[5];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[11];
rz(-pi/4)  q[11];
cx q[15], q[11];
rz(pi/4)  q[11];
cx q[10], q[11];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
cx q[15], q[11];
rz(pi/4)  q[11];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[11];
rx(pi)  q[11];
cx q[15], q[10];
ry(pi/2)  q[10];
rx(pi)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
ry(pi/2)  q[7];
rx(pi)  q[10];
rx(pi)  q[7];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[6];
rz(pi)  q[5];
ry(pi/2)  q[7];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rx(pi)  q[7];
rz(2*pi)  q[6];
rz(2*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[5];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[12];
rz(-pi/4)  q[12];
cx q[15], q[12];
rz(pi/4)  q[12];
cx q[10], q[12];
rz(pi/4)  q[10];
rz(-pi/4)  q[12];
cx q[15], q[12];
rz(pi/4)  q[12];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[12];
rx(pi)  q[12];
cx q[15], q[10];
ry(pi/2)  q[10];
rx(pi)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
ry(pi/2)  q[7];
cx q[8], q[9];
rx(pi)  q[10];
rz(-pi/4)  q[9];
rx(pi)  q[7];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[6];
rz(pi)  q[5];
ry(pi/2)  q[7];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rx(pi)  q[7];
rz(2*pi)  q[6];
rz(2*pi)  q[5];
cx q[11], q[7];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(-pi/4)  q[7];
rz(3*pi)  q[6];
rz(3*pi)  q[5];
cx q[13], q[7];
rz(pi)  q[6];
rz(pi/4)  q[7];
cx q[5], q[9];
rx(pi/2)  q[6];
rz(pi/4)  q[9];
cx q[11], q[7];
rz(2*pi)  q[6];
rz(pi/4)  q[11];
rz(-pi/4)  q[7];
cx q[8], q[9];
rx(pi/2)  q[6];
rz(pi/4)  q[8];
rz(-pi/4)  q[9];
cx q[13], q[7];
rz(3*pi)  q[6];
rz(pi/4)  q[7];
cx q[5], q[9];
cx q[13], q[11];
rz(pi/4)  q[9];
rz(pi/4)  q[13];
rz(-pi/4)  q[11];
ry(pi/2)  q[7];
cx q[5], q[8];
rz(pi/4)  q[5];
rz(-pi/4)  q[8];
ry(pi/2)  q[9];
rx(pi)  q[7];
cx q[13], q[11];
rx(pi)  q[9];
cx q[5], q[8];
cx q[7], q[10];
rz(pi)  q[5];
rz(pi)  q[8];
rz(-pi/4)  q[10];
rx(pi/2)  q[5];
rx(pi/2)  q[8];
cx q[12], q[10];
rz(2*pi)  q[5];
rz(2*pi)  q[8];
rz(pi/4)  q[10];
rx(pi/2)  q[5];
rx(pi/2)  q[8];
cx q[7], q[10];
rz(3*pi)  q[5];
rz(3*pi)  q[8];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
rz(pi)  q[5];
rz(pi)  q[8];
cx q[12], q[10];
rx(pi/2)  q[5];
rx(pi/2)  q[8];
rz(pi/4)  q[10];
cx q[12], q[7];
rz(2*pi)  q[5];
rz(2*pi)  q[8];
ry(pi/2)  q[10];
rz(pi/4)  q[12];
rz(-pi/4)  q[7];
rx(pi/2)  q[5];
rx(pi/2)  q[8];
rx(pi)  q[10];
cx q[12], q[7];
rz(3*pi)  q[5];
rz(3*pi)  q[8];
cx q[10], q[14];
rz(-pi/4)  q[14];
cx q[9], q[14];
rz(pi/4)  q[14];
cx q[10], q[14];
rz(-pi/4)  q[14];
rz(pi/4)  q[10];
cx q[9], q[14];
rz(pi/4)  q[14];
cx q[9], q[10];
ry(pi/2)  q[14];
rz(-pi/4)  q[10];
rz(pi/4)  q[9];
rx(pi)  q[14];
cx q[9], q[10];
rz(pi)  q[14];
ry(pi/2)  q[10];
ry(pi/2)  q[9];
rx(pi/2)  q[14];
rx(pi)  q[10];
rx(pi)  q[9];
rz(2*pi)  q[14];
cx q[8], q[9];
cx q[7], q[10];
rx(pi/2)  q[14];
rz(-pi/4)  q[9];
rz(-pi/4)  q[10];
rz(3*pi)  q[14];
cx q[5], q[9];
cx q[12], q[10];
ry(pi/2)  q[14];
rz(pi/4)  q[9];
rz(pi/4)  q[10];
rx(pi)  q[14];
cx q[8], q[9];
cx q[7], q[10];
ry(pi/2)  q[14];
rz(pi/4)  q[8];
rz(-pi/4)  q[9];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
rx(pi)  q[14];
cx q[5], q[9];
cx q[12], q[10];
rz(pi/4)  q[9];
rz(pi/4)  q[10];
cx q[5], q[8];
cx q[12], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[8];
ry(pi/2)  q[9];
ry(pi/2)  q[10];
rz(pi/4)  q[12];
rz(-pi/4)  q[7];
rx(pi)  q[9];
rx(pi)  q[10];
cx q[5], q[8];
cx q[12], q[7];
rz(pi)  q[5];
ry(pi/2)  q[10];
ry(pi/2)  q[12];
ry(pi/2)  q[7];
rx(pi/2)  q[5];
rx(pi)  q[10];
rx(pi)  q[12];
rx(pi)  q[7];
rz(2*pi)  q[5];
cx q[11], q[7];
rx(pi/2)  q[5];
rz(-pi/4)  q[7];
rz(3*pi)  q[5];
cx q[13], q[7];
rz(pi/4)  q[7];
cx q[11], q[7];
rz(pi/4)  q[11];
rz(-pi/4)  q[7];
cx q[13], q[7];
rz(pi/4)  q[7];
cx q[13], q[11];
rz(pi/4)  q[13];
rz(-pi/4)  q[11];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[13], q[11];
ry(pi/2)  q[13];
ry(pi/2)  q[11];
ry(pi/2)  q[7];
rx(pi)  q[13];
rx(pi)  q[11];
rx(pi)  q[7];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[12];
rz(-pi/4)  q[12];
cx q[15], q[12];
rz(pi/4)  q[12];
cx q[10], q[12];
rz(pi/4)  q[10];
rz(-pi/4)  q[12];
cx q[15], q[12];
rz(pi/4)  q[12];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[12];
rx(pi)  q[12];
cx q[15], q[10];
ry(pi/2)  q[10];
rx(pi)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
ry(pi/2)  q[7];
rx(pi)  q[10];
rx(pi)  q[7];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[6];
rz(pi)  q[5];
ry(pi/2)  q[7];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rx(pi)  q[7];
rz(2*pi)  q[6];
rz(2*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[5];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[11];
rz(-pi/4)  q[11];
cx q[15], q[11];
rz(pi/4)  q[11];
cx q[10], q[11];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
cx q[15], q[11];
rz(pi/4)  q[11];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[11];
rx(pi)  q[11];
cx q[15], q[10];
ry(pi/2)  q[10];
rz(pi)  q[15];
rx(pi)  q[10];
rx(pi/2)  q[15];
rz(2*pi)  q[15];
cx q[7], q[10];
rx(pi/2)  q[15];
rz(-pi/4)  q[10];
rz(3*pi)  q[15];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi)  q[8];
ry(pi/2)  q[7];
rx(pi)  q[10];
rx(pi/2)  q[8];
rx(pi)  q[7];
rz(2*pi)  q[8];
cx q[5], q[7];
rx(pi/2)  q[8];
rz(-pi/4)  q[7];
rz(3*pi)  q[8];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[5];
ry(pi/2)  q[7];
rx(pi/2)  q[5];
rx(pi)  q[7];
rz(2*pi)  q[5];
rx(pi/2)  q[5];
rz(3*pi)  q[5];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[13];
rz(-pi/4)  q[13];
cx q[15], q[13];
rz(pi/4)  q[13];
cx q[10], q[13];
rz(pi/4)  q[10];
rz(-pi/4)  q[13];
cx q[15], q[13];
rz(pi/4)  q[13];
cx q[15], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
ry(pi/2)  q[13];
rx(pi)  q[13];
cx q[15], q[10];
ry(pi/2)  q[10];
rz(pi)  q[15];
rx(pi)  q[10];
rx(pi/2)  q[15];
rz(2*pi)  q[15];
cx q[7], q[10];
rx(pi/2)  q[15];
rz(-pi/4)  q[10];
rz(3*pi)  q[15];
cx q[8], q[10];
ry(pi/2)  q[15];
rz(pi/4)  q[10];
rx(pi)  q[15];
cx q[7], q[10];
rz(pi)  q[15];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
rx(pi/2)  q[15];
cx q[8], q[10];
rz(2*pi)  q[15];
rz(pi/4)  q[10];
cx q[8], q[7];
rx(pi/2)  q[15];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rz(3*pi)  q[15];
rx(pi)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
ry(pi/2)  q[8];
ry(pi/2)  q[7];
rx(pi)  q[10];
rx(pi)  q[8];
rx(pi)  q[7];
rz(pi)  q[8];
cx q[5], q[7];
rx(pi/2)  q[8];
rz(-pi/4)  q[7];
rz(2*pi)  q[8];
cx q[6], q[7];
rx(pi/2)  q[8];
rz(pi/4)  q[7];
rz(3*pi)  q[8];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[6];
rx(pi)  q[5];
rx(pi)  q[7];
rz(pi)  q[6];
rz(pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[5];
cx q[5], q[7];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
cx q[7], q[10];
rz(-pi/4)  q[10];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[7], q[10];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
cx q[10], q[14];
rz(-pi/4)  q[14];
cx q[15], q[14];
rz(pi/4)  q[14];
cx q[10], q[14];
rz(-pi/4)  q[14];
rz(pi/4)  q[10];
cx q[15], q[14];
rz(pi/4)  q[14];
cx q[15], q[10];
ry(pi/2)  q[14];
rz(-pi/4)  q[10];
rz(pi/4)  q[15];
rx(pi)  q[14];
cx q[15], q[10];
ry(pi/2)  q[14];
ry(pi/2)  q[10];
rz(pi)  q[15];
rx(pi)  q[14];
rx(pi)  q[10];
rx(pi/2)  q[15];
rz(pi)  q[14];
rz(2*pi)  q[15];
cx q[7], q[10];
rx(pi/2)  q[14];
rx(pi/2)  q[15];
rz(-pi/4)  q[10];
rz(2*pi)  q[14];
rz(3*pi)  q[15];
cx q[8], q[10];
rx(pi/2)  q[14];
ry(pi/2)  q[15];
rz(pi/4)  q[10];
rz(3*pi)  q[14];
rx(pi)  q[15];
cx q[7], q[10];
ry(pi/2)  q[14];
rz(-pi/4)  q[10];
rz(pi/4)  q[7];
rx(pi)  q[14];
cx q[8], q[10];
rz(pi/4)  q[10];
cx q[8], q[7];
ry(pi/2)  q[10];
rz(pi/4)  q[8];
rz(-pi/4)  q[7];
rx(pi)  q[10];
cx q[8], q[7];
rz(pi)  q[8];
ry(pi/2)  q[7];
rx(pi/2)  q[8];
rx(pi)  q[7];
rz(2*pi)  q[8];
cx q[5], q[7];
rx(pi/2)  q[8];
rz(-pi/4)  q[7];
rz(3*pi)  q[8];
cx q[6], q[7];
ry(pi/2)  q[8];
rz(pi/4)  q[7];
rx(pi)  q[8];
cx q[5], q[7];
rz(pi/4)  q[5];
rz(-pi/4)  q[7];
cx q[6], q[7];
rz(pi/4)  q[7];
cx q[6], q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[5];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[6], q[5];
rz(pi)  q[6];
rz(pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[5];
rx(pi)  q[6];
rx(pi)  q[5];
measure q[6] -> c[0];
measure q[5] -> c[1];
measure q[8] -> c[2];
measure q[15] -> c[3];
