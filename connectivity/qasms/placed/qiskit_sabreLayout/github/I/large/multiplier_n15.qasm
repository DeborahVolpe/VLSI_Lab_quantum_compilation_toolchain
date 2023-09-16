OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
ry(pi/2) q[2];
rx(pi) q[2];
rz(pi) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
cx q[3],q[2];
rz(-pi/4) q[2];
rz(pi) q[4];
rx(pi/2) q[4];
rz(2*pi) q[4];
rx(pi/2) q[4];
rz(3*pi) q[4];
cx q[4],q[2];
rz(pi/4) q[2];
cx q[3],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[3];
cx q[4],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[4],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[4];
cx q[4],q[3];
rz(pi) q[7];
rx(pi/2) q[7];
rz(2*pi) q[7];
rx(pi/2) q[7];
rz(3*pi) q[7];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[7],q[10];
rz(-pi/4) q[10];
cx q[4],q[10];
rz(pi/4) q[10];
cx q[7],q[10];
rz(-pi/4) q[10];
cx q[4],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi/4) q[7];
cx q[4],q[7];
rz(pi/4) q[4];
rz(-pi/4) q[7];
cx q[4],q[7];
cx q[12],q[8];
rz(-pi/4) q[8];
cx q[4],q[8];
rz(pi/4) q[8];
cx q[12],q[8];
rz(pi/4) q[12];
rz(-pi/4) q[8];
cx q[4],q[8];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[8],q[11];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[12],q[8];
rz(-pi/4) q[8];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi) q[15];
rx(pi/2) q[15];
rz(2*pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[13],q[11];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[14],q[9];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[3],q[2];
rz(-pi/4) q[2];
cx q[4],q[2];
rz(pi/4) q[2];
cx q[3],q[2];
rz(-pi/4) q[2];
rz(pi/4) q[3];
cx q[4],q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[4],q[3];
rz(-pi/4) q[3];
rz(pi/4) q[4];
cx q[4],q[3];
cx q[6],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
cx q[7],q[10];
rz(-pi/4) q[10];
cx q[4],q[10];
rz(pi/4) q[10];
cx q[7],q[10];
rz(-pi/4) q[10];
cx q[4],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[15],q[10];
rz(pi/4) q[10];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[15],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi/4) q[3];
cx q[15],q[3];
rz(pi/4) q[15];
rz(-pi/4) q[3];
cx q[15],q[3];
rz(pi/4) q[7];
cx q[4],q[7];
rz(pi/4) q[4];
rz(-pi/4) q[7];
cx q[4],q[7];
cx q[4],q[8];
rz(pi/4) q[8];
cx q[12],q[8];
rz(pi/4) q[12];
rz(-pi/4) q[8];
cx q[4],q[8];
cx q[4],q[12];
rz(-pi/4) q[12];
rz(pi/4) q[4];
cx q[4],q[12];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[7],q[8];
rz(-pi/4) q[8];
cx q[15],q[8];
rz(pi/4) q[8];
cx q[7],q[8];
rz(pi/4) q[7];
rz(-pi/4) q[8];
cx q[15],q[8];
cx q[15],q[7];
rz(pi/4) q[15];
rz(-pi/4) q[7];
cx q[15],q[7];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[8],q[11];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[7],q[8];
rz(-pi/4) q[8];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[13],q[11];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[14],q[9];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[15],q[10];
rz(pi/4) q[10];
cx q[3],q[10];
rz(-pi/4) q[10];
cx q[15],q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi/4) q[3];
cx q[15],q[3];
rz(pi/4) q[15];
rz(-pi/4) q[3];
cx q[15],q[3];
cx q[15],q[8];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
cx q[6],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
rz(pi/4) q[8];
cx q[7],q[8];
rz(pi/4) q[7];
rz(-pi/4) q[8];
cx q[15],q[8];
cx q[15],q[7];
rz(pi/4) q[15];
rz(-pi/4) q[7];
cx q[15],q[7];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[3],q[8];
rz(-pi/4) q[8];
cx q[1],q[8];
rz(pi/4) q[8];
cx q[3],q[8];
rz(pi/4) q[3];
rz(-pi/4) q[8];
cx q[1],q[8];
cx q[1],q[3];
rz(pi/4) q[1];
rz(-pi/4) q[3];
cx q[1],q[3];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[8],q[11];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[3],q[8];
rz(-pi/4) q[8];
cx q[1],q[8];
rz(pi/4) q[8];
cx q[3],q[8];
rz(pi/4) q[3];
rz(-pi/4) q[8];
cx q[1],q[8];
cx q[1],q[3];
rz(pi/4) q[1];
rz(-pi/4) q[3];
cx q[1],q[3];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
cx q[13],q[11];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[14],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[14],q[9];
rz(pi/4) q[14];
rz(-pi/4) q[9];
cx q[14],q[9];
cx q[10],q[9];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
cx q[9],q[13];
rz(-pi/4) q[13];
cx q[10],q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(pi/4) q[9];
cx q[10],q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[10],q[9];
cx q[14],q[9];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[6],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[6],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[6],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[6];
cx q[6],q[16];
cx q[2],q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[2],q[14];
rz(pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[14];
rz(pi/4) q[16];
cx q[2],q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[2],q[16];
rz(-pi/4) q[16];
rz(pi/4) q[2];
cx q[2],q[16];
cx q[2],q[16];
cx q[6],q[16];
measure q[16] -> c[0];
measure q[9] -> c[1];
measure q[11] -> c[2];
