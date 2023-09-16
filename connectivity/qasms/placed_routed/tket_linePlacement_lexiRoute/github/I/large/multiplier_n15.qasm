OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[3];
rz(1.0*pi) q[2];
rz(1.0*pi) q[6];
ry(0.5*pi) q[7];
rz(1.0*pi) q[8];
ry(0.5*pi) q[10];
ry(0.5*pi) q[12];
ry(0.5*pi) q[13];
rz(1.0*pi) q[14];
ry(0.5*pi) q[15];
rx(0.5*pi) q[2];
rx(0.5*pi) q[6];
rx(1.0*pi) q[7];
rx(0.5*pi) q[8];
rx(1.0*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[13];
rx(0.5*pi) q[14];
rx(1.0*pi) q[15];
rz(2.0*pi) q[2];
rz(2.0*pi) q[6];
rz(2.0*pi) q[8];
cx q[9],q[10];
cx q[11],q[12];
rz(2.0*pi) q[14];
cx q[16],q[15];
rx(0.5*pi) q[2];
rx(0.5*pi) q[6];
rx(0.5*pi) q[8];
rz(3.75*pi) q[10];
rz(3.75*pi) q[12];
rx(0.5*pi) q[14];
rz(3.75*pi) q[15];
rz(3.0*pi) q[2];
rz(3.0*pi) q[6];
rz(3.0*pi) q[8];
rz(3.0*pi) q[14];
cx q[6],q[7];
cx q[14],q[13];
rz(3.75*pi) q[7];
rz(3.75*pi) q[13];
cx q[8],q[7];
rz(0.25*pi) q[7];
cx q[6],q[7];
rz(0.25*pi) q[6];
rz(3.75*pi) q[7];
cx q[8],q[7];
cx q[8],q[6];
rz(0.25*pi) q[7];
rz(3.75*pi) q[6];
ry(0.5*pi) q[7];
rz(0.25*pi) q[8];
cx q[8],q[6];
rx(1.0*pi) q[7];
cx q[7],q[10];
cx q[8],q[13];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
cx q[9],q[10];
cx q[14],q[13];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
rz(3.75*pi) q[13];
rz(0.25*pi) q[14];
cx q[7],q[10];
cx q[8],q[13];
cx q[7],q[9];
cx q[8],q[14];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
rz(0.25*pi) q[7];
rz(0.25*pi) q[8];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[13];
rz(3.75*pi) q[14];
cx q[7],q[9];
cx q[8],q[14];
rx(1.0*pi) q[10];
rx(1.0*pi) q[13];
cx q[7],q[9];
cx q[8],q[15];
ry(0.5*pi) q[10];
cx q[13],q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
cx q[9],q[10];
cx q[11],q[12];
cx q[16],q[15];
rz(3.75*pi) q[10];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[0],q[10];
cx q[8],q[15];
cx q[13],q[12];
cx q[8],q[16];
rz(0.25*pi) q[10];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[8];
cx q[9],q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[8],q[16];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[13],q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[15];
cx q[0],q[10];
cx q[15],q[1];
cx q[13],q[11];
ry(0.5*pi) q[12];
cx q[0],q[9];
rz(0.25*pi) q[10];
rx(1.0*pi) q[12];
ry(0.5*pi) q[15];
rz(0.25*pi) q[0];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[11],q[12];
rx(1.0*pi) q[15];
cx q[0],q[9];
rx(1.0*pi) q[10];
rz(3.75*pi) q[12];
cx q[16],q[15];
cx q[10],q[12];
rz(3.75*pi) q[15];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[12],q[1];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[10],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[13],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[13],q[12];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[10];
cx q[11],q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[10];
rz(3.75*pi) q[12];
cx q[14],q[13];
cx q[9],q[10];
rz(3.75*pi) q[13];
rz(3.75*pi) q[10];
cx q[0],q[10];
rz(0.25*pi) q[10];
cx q[9],q[10];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[0],q[10];
cx q[0],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[0];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[0],q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[10];
cx q[9],q[10];
rz(3.75*pi) q[10];
cx q[7],q[10];
rz(0.25*pi) q[10];
cx q[9],q[10];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[7],q[10];
cx q[7],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[7];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[7],q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
ry(0.5*pi) q[10];
cx q[0],q[9];
ry(0.5*pi) q[7];
rx(1.0*pi) q[10];
rx(1.0*pi) q[7];
cx q[9],q[10];
cx q[6],q[7];
rz(3.75*pi) q[10];
rz(3.75*pi) q[7];
cx q[8],q[7];
rz(0.25*pi) q[7];
cx q[6],q[7];
rz(0.25*pi) q[6];
rz(3.75*pi) q[7];
cx q[8],q[7];
cx q[8],q[6];
rz(0.25*pi) q[7];
rz(3.75*pi) q[6];
ry(0.5*pi) q[7];
rz(0.25*pi) q[8];
cx q[8],q[6];
rx(1.0*pi) q[7];
cx q[7],q[10];
cx q[8],q[13];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
cx q[9],q[10];
cx q[14],q[13];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
rz(3.75*pi) q[13];
rz(0.25*pi) q[14];
cx q[7],q[10];
cx q[8],q[13];
cx q[7],q[9];
cx q[8],q[14];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
rz(0.25*pi) q[7];
rz(0.25*pi) q[8];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[13];
rz(3.75*pi) q[14];
cx q[7],q[9];
cx q[8],q[14];
rx(1.0*pi) q[10];
rx(1.0*pi) q[13];
cx q[7],q[9];
cx q[8],q[15];
ry(0.5*pi) q[10];
ry(0.5*pi) q[13];
rx(1.0*pi) q[10];
rx(1.0*pi) q[13];
rz(0.25*pi) q[15];
cx q[6],q[13];
cx q[9],q[10];
cx q[16],q[15];
rz(3.75*pi) q[10];
rz(3.75*pi) q[13];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[0],q[10];
cx q[2],q[13];
cx q[8],q[15];
cx q[8],q[16];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
rz(0.25*pi) q[15];
cx q[6],q[13];
rz(0.25*pi) q[8];
cx q[9],q[10];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
rz(0.25*pi) q[6];
cx q[8],q[16];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
rz(3.75*pi) q[13];
rx(1.0*pi) q[15];
cx q[0],q[10];
cx q[2],q[13];
ry(0.5*pi) q[15];
cx q[0],q[9];
cx q[2],q[6];
rz(0.25*pi) q[10];
rz(0.25*pi) q[13];
rx(1.0*pi) q[15];
rz(0.25*pi) q[0];
rz(0.25*pi) q[2];
rz(3.75*pi) q[6];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[13];
cx q[14],q[15];
cx q[0],q[9];
cx q[2],q[6];
rx(1.0*pi) q[10];
rx(1.0*pi) q[13];
rz(3.75*pi) q[15];
cx q[2],q[15];
cx q[13],q[12];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
cx q[11],q[12];
cx q[14],q[15];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
rz(0.25*pi) q[14];
rz(3.75*pi) q[15];
cx q[2],q[15];
cx q[13],q[12];
cx q[2],q[14];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[2];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
rz(3.75*pi) q[14];
ry(0.5*pi) q[15];
cx q[2],q[14];
cx q[13],q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[15];
cx q[15],q[1];
cx q[13],q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
ry(0.5*pi) q[15];
cx q[11],q[12];
rx(1.0*pi) q[15];
rz(3.75*pi) q[12];
cx q[14],q[15];
cx q[10],q[12];
rz(3.75*pi) q[15];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[12],q[1];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[10],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[13],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[13],q[12];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[10];
cx q[11],q[12];
rx(1.0*pi) q[13];
cx q[6],q[13];
rx(1.0*pi) q[10];
rz(3.75*pi) q[12];
cx q[9],q[10];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(3.75*pi) q[10];
cx q[0],q[10];
rz(0.25*pi) q[13];
cx q[6],q[13];
rz(0.25*pi) q[10];
rz(0.25*pi) q[6];
cx q[9],q[10];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[0],q[10];
cx q[2],q[6];
rz(0.25*pi) q[13];
cx q[0],q[9];
rz(0.25*pi) q[2];
rz(3.75*pi) q[6];
rz(0.25*pi) q[10];
ry(0.5*pi) q[13];
rz(0.25*pi) q[0];
cx q[2],q[6];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[13];
cx q[0],q[9];
cx q[2],q[15];
rx(1.0*pi) q[10];
cx q[13],q[12];
cx q[7],q[9];
ry(0.5*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[10];
cx q[11],q[12];
cx q[14],q[15];
cx q[9],q[10];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
rz(0.25*pi) q[14];
rz(3.75*pi) q[15];
cx q[2],q[15];
rz(3.75*pi) q[10];
cx q[13],q[12];
cx q[2],q[14];
cx q[7],q[10];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[2];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
rz(3.75*pi) q[14];
ry(0.5*pi) q[15];
cx q[2],q[14];
cx q[9],q[10];
cx q[13],q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[15];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[13],q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[15];
cx q[7],q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[15];
cx q[6],q[15];
cx q[7],q[9];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(0.25*pi) q[7];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[3],q[15];
cx q[7],q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
ry(0.5*pi) q[10];
rz(0.25*pi) q[15];
cx q[0],q[9];
cx q[6],q[15];
rx(1.0*pi) q[10];
rz(0.25*pi) q[6];
cx q[9],q[10];
rz(3.75*pi) q[15];
cx q[3],q[15];
rz(3.75*pi) q[10];
cx q[3],q[6];
cx q[7],q[10];
rz(0.25*pi) q[15];
rz(0.25*pi) q[3];
rz(3.75*pi) q[6];
rz(0.25*pi) q[10];
ry(0.5*pi) q[15];
cx q[3],q[6];
cx q[9],q[10];
rx(1.0*pi) q[15];
cx q[15],q[1];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[7],q[10];
ry(0.5*pi) q[15];
cx q[7],q[9];
rz(0.25*pi) q[10];
rx(1.0*pi) q[15];
cx q[6],q[15];
rz(0.25*pi) q[7];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[7],q[9];
rx(1.0*pi) q[10];
rz(3.75*pi) q[15];
cx q[3],q[15];
cx q[7],q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[10];
rz(0.25*pi) q[15];
cx q[6],q[15];
cx q[9],q[10];
rz(0.25*pi) q[6];
rz(3.75*pi) q[10];
rz(3.75*pi) q[15];
cx q[0],q[10];
cx q[3],q[15];
cx q[3],q[6];
rz(0.25*pi) q[10];
rz(0.25*pi) q[15];
rz(0.25*pi) q[3];
rz(3.75*pi) q[6];
cx q[9],q[10];
ry(0.5*pi) q[15];
cx q[3],q[6];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
rx(1.0*pi) q[15];
cx q[0],q[10];
cx q[0],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[0];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[0],q[9];
rx(1.0*pi) q[10];
cx q[10],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[12],q[1];
measure q[1] -> c[2];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[10],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
cx q[10],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[12];
cx q[11],q[12];
rz(3.75*pi) q[12];
cx q[13],q[12];
rz(0.25*pi) q[12];
cx q[11],q[12];
rz(0.25*pi) q[11];
rz(3.75*pi) q[12];
cx q[13],q[12];
cx q[13],q[11];
rz(0.25*pi) q[12];
rz(3.75*pi) q[11];
ry(0.5*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[11];
rx(1.0*pi) q[12];
cx q[13],q[11];
cx q[10],q[11];
measure q[11] -> c[1];
ry(0.5*pi) q[10];
rx(1.0*pi) q[10];
cx q[9],q[10];
rz(3.75*pi) q[10];
cx q[0],q[10];
rz(0.25*pi) q[10];
cx q[9],q[10];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[0],q[10];
cx q[0],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[0];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[0],q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[10];
cx q[9],q[10];
rz(3.75*pi) q[10];
cx q[7],q[10];
rz(0.25*pi) q[10];
cx q[9],q[10];
rz(0.25*pi) q[9];
rz(3.75*pi) q[10];
cx q[7],q[10];
cx q[7],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[7];
rz(3.75*pi) q[9];
ry(0.5*pi) q[10];
cx q[7],q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
cx q[0],q[9];
measure q[9] -> c[0];