OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(pi) q[5];
rx(pi/2) q[5];
rz(2*pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
ry(pi/2) q[6];
rx(pi) q[6];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
rz(pi) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi) q[13];
rx(pi/2) q[13];
rz(2*pi) q[13];
rx(pi/2) q[13];
rz(3*pi) q[13];
cx q[13],q[1];
rz(-pi/4) q[1];
cx q[11],q[1];
rz(pi/4) q[1];
cx q[13],q[1];
rz(-pi/4) q[1];
cx q[11],q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[13];
cx q[11],q[13];
rz(pi/4) q[11];
rz(-pi/4) q[13];
cx q[11],q[13];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
cx q[14],q[2];
rz(-pi/4) q[2];
rz(pi) q[16];
rx(pi/2) q[16];
rz(2*pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
cx q[16],q[6];
rz(-pi/4) q[6];
cx q[11],q[6];
rz(pi/4) q[6];
cx q[16],q[6];
rz(pi/4) q[16];
rz(-pi/4) q[6];
cx q[11],q[6];
cx q[11],q[16];
rz(pi/4) q[11];
rz(-pi/4) q[16];
cx q[11],q[16];
cx q[11],q[2];
rz(pi/4) q[2];
cx q[14],q[2];
rz(pi/4) q[14];
rz(-pi/4) q[2];
cx q[11],q[2];
cx q[11],q[14];
rz(pi/4) q[11];
rz(-pi/4) q[14];
cx q[11],q[14];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[2],q[10];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[14],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[10];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
cx q[0],q[3];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
ry(pi/2) q[1];
rx(pi) q[1];
cx q[13],q[1];
rz(-pi/4) q[1];
cx q[11],q[1];
rz(pi/4) q[1];
cx q[13],q[1];
rz(-pi/4) q[1];
cx q[11],q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[13];
cx q[11],q[13];
rz(pi/4) q[11];
rz(-pi/4) q[13];
cx q[11],q[13];
cx q[4],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[16],q[6];
rz(-pi/4) q[6];
cx q[11],q[6];
rz(pi/4) q[6];
cx q[16],q[6];
rz(pi/4) q[16];
rz(-pi/4) q[6];
cx q[11],q[6];
cx q[11],q[16];
rz(pi/4) q[11];
rz(-pi/4) q[16];
cx q[11],q[16];
cx q[11],q[2];
rz(pi/4) q[2];
cx q[14],q[2];
rz(pi/4) q[14];
rz(-pi/4) q[2];
cx q[11],q[2];
cx q[11],q[14];
rz(pi/4) q[11];
rz(-pi/4) q[14];
cx q[11],q[14];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[16],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[13],q[6];
rz(-pi/4) q[6];
cx q[5],q[6];
rz(pi/4) q[6];
cx q[13],q[6];
rz(pi/4) q[13];
rz(-pi/4) q[6];
cx q[5],q[6];
cx q[5],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[5];
cx q[5],q[13];
cx q[5],q[2];
rz(pi/4) q[2];
cx q[16],q[2];
rz(pi/4) q[16];
rz(-pi/4) q[2];
cx q[5],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[2],q[10];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[5],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[5];
cx q[5],q[16];
cx q[16],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[10];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
cx q[0],q[3];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
cx q[4],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[13],q[6];
rz(-pi/4) q[6];
cx q[5],q[6];
rz(pi/4) q[6];
cx q[13],q[6];
rz(pi/4) q[13];
rz(-pi/4) q[6];
cx q[5],q[6];
cx q[5],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[5];
cx q[5],q[13];
cx q[5],q[2];
rz(pi/4) q[2];
cx q[16],q[2];
rz(pi/4) q[16];
rz(-pi/4) q[2];
cx q[5],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[13],q[2];
rz(-pi/4) q[2];
cx q[5],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[5];
cx q[5],q[16];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[8],q[2];
rz(pi/4) q[2];
cx q[13],q[2];
rz(pi/4) q[13];
rz(-pi/4) q[2];
cx q[8],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[2],q[10];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[7],q[10];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[0],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[3];
rz(pi/4) q[0];
rz(-pi/4) q[3];
cx q[0],q[3];
cx q[6],q[3];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[3],q[7];
rz(-pi/4) q[7];
cx q[6],q[7];
rz(pi/4) q[7];
cx q[3],q[7];
rz(pi/4) q[3];
rz(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[6],q[3];
cx q[0],q[3];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[4],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
rz(pi/4) q[12];
cx q[4],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
cx q[1],q[12];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[12],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[12];
cx q[1],q[12];
rz(pi/4) q[1];
rz(-pi/4) q[12];
cx q[1],q[12];
cx q[1],q[12];
cx q[4],q[12];
rz(pi/4) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[8],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[8];
cx q[8],q[13];
cx q[13],q[2];
rz(-pi/4) q[2];
cx q[8],q[2];
rz(pi/4) q[2];
cx q[13],q[2];
rz(pi/4) q[13];
rz(-pi/4) q[2];
cx q[8],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[8],q[13];
rz(-pi/4) q[13];
rz(pi/4) q[8];
cx q[8],q[13];
measure q[12] -> c[0];
measure q[3] -> c[1];
measure q[10] -> c[2];
