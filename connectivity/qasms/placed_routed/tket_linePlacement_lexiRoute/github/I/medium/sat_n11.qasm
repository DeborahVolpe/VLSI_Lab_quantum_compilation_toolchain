OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[4];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
rz(1.0*pi) q[2];
ry(0.5*pi) q[3];
rz(1.0*pi) q[4];
rz(1.0*pi) q[5];
ry(0.5*pi) q[6];
rz(1.0*pi) q[7];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
rx(0.5*pi) q[5];
rx(1.0*pi) q[6];
rx(0.5*pi) q[7];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
rz(2.0*pi) q[2];
rz(1.0*pi) q[3];
rz(2.0*pi) q[4];
rz(2.0*pi) q[5];
rz(2.0*pi) q[7];
cx q[16],q[15];
rx(0.5*pi) q[2];
rx(0.5*pi) q[3];
rx(0.5*pi) q[4];
rx(0.5*pi) q[5];
rx(0.5*pi) q[7];
rz(3.75*pi) q[15];
rz(3.0*pi) q[2];
rz(2.0*pi) q[3];
rz(3.0*pi) q[4];
rz(3.0*pi) q[5];
rz(3.0*pi) q[7];
cx q[14],q[15];
ry(0.5*pi) q[2];
rx(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[7];
rz(0.25*pi) q[15];
rx(1.0*pi) q[2];
rz(3.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[7];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[2];
rz(3.75*pi) q[2];
cx q[3],q[2];
rz(0.25*pi) q[2];
cx q[0],q[2];
rz(0.25*pi) q[0];
rz(3.75*pi) q[2];
cx q[3],q[2];
cx q[3],q[0];
rz(0.25*pi) q[2];
rz(3.75*pi) q[0];
ry(0.5*pi) q[2];
rz(0.25*pi) q[3];
cx q[3],q[0];
rx(1.0*pi) q[2];
ry(0.5*pi) q[0];
rz(1.0*pi) q[3];
rx(1.0*pi) q[0];
rx(0.5*pi) q[3];
cx q[15],q[0];
rz(2.0*pi) q[3];
rz(3.75*pi) q[0];
rx(0.5*pi) q[3];
cx q[1],q[0];
rz(3.0*pi) q[3];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(1.0*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(1.0*pi) q[15];
rz(2.0*pi) q[1];
cx q[16],q[15];
rx(0.5*pi) q[1];
rz(3.75*pi) q[15];
rz(3.0*pi) q[1];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
rz(2.0*pi) q[16];
rx(0.5*pi) q[16];
rz(3.0*pi) q[16];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[4];
rz(3.75*pi) q[4];
cx q[3],q[4];
rz(0.25*pi) q[4];
cx q[0],q[4];
rz(0.25*pi) q[0];
rz(3.75*pi) q[4];
cx q[3],q[4];
cx q[3],q[0];
rz(0.25*pi) q[4];
rz(3.75*pi) q[0];
rz(0.25*pi) q[3];
ry(0.5*pi) q[4];
cx q[3],q[0];
rx(1.0*pi) q[4];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
rz(1.0*pi) q[14];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(0.5*pi) q[14];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
rz(2.0*pi) q[14];
rz(2.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(3.0*pi) q[14];
rz(3.0*pi) q[16];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[5];
rz(3.75*pi) q[5];
cx q[3],q[5];
rz(0.25*pi) q[5];
cx q[0],q[5];
rz(0.25*pi) q[0];
rz(3.75*pi) q[5];
cx q[3],q[5];
cx q[3],q[0];
rz(0.25*pi) q[5];
rz(3.75*pi) q[0];
rz(0.25*pi) q[3];
ry(0.5*pi) q[5];
cx q[3],q[0];
rx(1.0*pi) q[5];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
cx q[1],q[7];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rz(3.75*pi) q[7];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
rz(1.0*pi) q[14];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(0.5*pi) q[14];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
cx q[4],q[15];
rz(2.0*pi) q[14];
rz(2.0*pi) q[16];
rx(0.5*pi) q[14];
rz(3.75*pi) q[15];
rx(0.5*pi) q[16];
cx q[2],q[15];
rz(3.0*pi) q[14];
rz(3.0*pi) q[16];
cx q[16],q[7];
rz(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[4],q[15];
rz(0.25*pi) q[7];
rx(0.5*pi) q[14];
cx q[1],q[7];
rz(0.25*pi) q[4];
rz(2.0*pi) q[14];
rz(3.75*pi) q[15];
rz(0.25*pi) q[1];
cx q[2],q[15];
rz(3.75*pi) q[7];
rx(0.5*pi) q[14];
cx q[2],q[4];
cx q[16],q[7];
rz(3.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[16],q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[4];
rz(0.25*pi) q[7];
ry(0.5*pi) q[15];
rz(3.75*pi) q[1];
cx q[2],q[4];
ry(0.5*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[16];
cx q[15],q[0];
cx q[16],q[1];
rx(1.0*pi) q[7];
rz(3.75*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[16];
cx q[5],q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[16];
rz(0.25*pi) q[0];
rz(2.0*pi) q[1];
rz(2.0*pi) q[16];
cx q[15],q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[16];
rz(3.75*pi) q[0];
rz(3.0*pi) q[1];
rz(0.25*pi) q[15];
rz(3.0*pi) q[16];
cx q[5],q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[16];
rz(0.25*pi) q[0];
rx(0.5*pi) q[1];
cx q[5],q[15];
rx(0.5*pi) q[16];
ry(0.5*pi) q[0];
rz(2.0*pi) q[1];
rz(0.25*pi) q[5];
rz(3.75*pi) q[15];
rz(2.0*pi) q[16];
rx(1.0*pi) q[0];
rx(0.5*pi) q[1];
cx q[5],q[15];
rx(0.5*pi) q[16];
cx q[0],q[6];
rz(3.0*pi) q[1];
rz(3.0*pi) q[16];
rz(3.75*pi) q[6];
cx q[7],q[6];
rz(0.25*pi) q[6];
cx q[0],q[6];
rz(0.25*pi) q[0];
rz(3.75*pi) q[6];
cx q[7],q[6];
cx q[7],q[0];
rz(0.25*pi) q[6];
rz(3.75*pi) q[0];
ry(0.5*pi) q[6];
rz(0.25*pi) q[7];
cx q[7],q[0];
rx(1.0*pi) q[6];
ry(0.5*pi) q[0];
rz(1.0*pi) q[6];
ry(0.5*pi) q[7];
rx(1.0*pi) q[0];
rx(0.5*pi) q[6];
rx(1.0*pi) q[7];
cx q[15],q[0];
cx q[1],q[7];
rz(2.0*pi) q[6];
rz(3.75*pi) q[0];
rx(0.5*pi) q[6];
rz(3.75*pi) q[7];
cx q[5],q[0];
rz(3.0*pi) q[6];
cx q[16],q[7];
rz(0.25*pi) q[0];
ry(0.5*pi) q[6];
rz(0.25*pi) q[7];
cx q[15],q[0];
cx q[1],q[7];
rx(1.0*pi) q[6];
rz(3.75*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[6];
rz(3.75*pi) q[7];
rz(0.25*pi) q[15];
cx q[5],q[0];
rx(1.0*pi) q[6];
cx q[16],q[7];
rz(0.25*pi) q[0];
cx q[16],q[1];
cx q[5],q[15];
rz(0.25*pi) q[7];
ry(0.5*pi) q[0];
rz(3.75*pi) q[1];
rz(0.25*pi) q[5];
ry(0.5*pi) q[7];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
rx(1.0*pi) q[0];
cx q[16],q[1];
cx q[5],q[15];
rx(1.0*pi) q[7];
ry(0.5*pi) q[0];
ry(0.5*pi) q[5];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(1.0*pi) q[0];
rx(1.0*pi) q[5];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
cx q[4],q[15];
rz(2.0*pi) q[16];
rz(3.75*pi) q[15];
rx(0.5*pi) q[16];
cx q[2],q[15];
rz(3.0*pi) q[16];
rz(0.25*pi) q[15];
cx q[4],q[15];
rz(0.25*pi) q[4];
rz(3.75*pi) q[15];
cx q[2],q[15];
cx q[2],q[4];
rz(0.25*pi) q[15];
rz(0.25*pi) q[2];
rz(3.75*pi) q[4];
ry(0.5*pi) q[15];
cx q[2],q[4];
rx(1.0*pi) q[15];
ry(0.5*pi) q[2];
ry(0.5*pi) q[4];
ry(0.5*pi) q[15];
rx(1.0*pi) q[2];
rx(1.0*pi) q[4];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[5];
rz(3.75*pi) q[5];
cx q[3],q[5];
rz(0.25*pi) q[5];
cx q[0],q[5];
rz(0.25*pi) q[0];
rz(3.75*pi) q[5];
cx q[3],q[5];
cx q[3],q[0];
rz(0.25*pi) q[5];
rz(3.75*pi) q[0];
rz(0.25*pi) q[3];
ry(0.5*pi) q[5];
cx q[3],q[0];
rx(1.0*pi) q[5];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
rz(1.0*pi) q[14];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(0.5*pi) q[14];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
rz(2.0*pi) q[14];
rz(2.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(3.0*pi) q[14];
rz(3.0*pi) q[16];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[4];
rz(3.75*pi) q[4];
cx q[3],q[4];
rz(0.25*pi) q[4];
cx q[0],q[4];
rz(0.25*pi) q[0];
rz(3.75*pi) q[4];
cx q[3],q[4];
cx q[3],q[0];
rz(0.25*pi) q[4];
rz(3.75*pi) q[0];
rz(0.25*pi) q[3];
ry(0.5*pi) q[4];
cx q[3],q[0];
rx(1.0*pi) q[4];
ry(0.5*pi) q[0];
rz(1.0*pi) q[3];
rx(1.0*pi) q[0];
rx(0.5*pi) q[3];
cx q[15],q[0];
rz(2.0*pi) q[3];
rz(3.75*pi) q[0];
rx(0.5*pi) q[3];
cx q[1],q[0];
rz(3.0*pi) q[3];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(1.0*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(1.0*pi) q[15];
rz(2.0*pi) q[1];
cx q[16],q[15];
rx(0.5*pi) q[1];
rz(3.75*pi) q[15];
rz(3.0*pi) q[1];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
ry(0.5*pi) q[15];
rz(1.0*pi) q[16];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
rz(2.0*pi) q[16];
rx(0.5*pi) q[16];
rz(3.0*pi) q[16];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[2];
rz(3.75*pi) q[2];
cx q[3],q[2];
rz(0.25*pi) q[2];
cx q[0],q[2];
rz(0.25*pi) q[0];
rz(3.75*pi) q[2];
cx q[3],q[2];
cx q[3],q[0];
rz(0.25*pi) q[2];
rz(3.75*pi) q[0];
ry(0.5*pi) q[2];
rz(0.25*pi) q[3];
cx q[3],q[0];
rx(1.0*pi) q[2];
ry(0.5*pi) q[0];
rz(1.0*pi) q[3];
rx(1.0*pi) q[0];
rx(0.5*pi) q[3];
cx q[15],q[0];
rz(2.0*pi) q[3];
rz(3.75*pi) q[0];
rx(0.5*pi) q[3];
cx q[1],q[0];
rz(3.0*pi) q[3];
rz(0.25*pi) q[0];
ry(0.5*pi) q[3];
cx q[15],q[0];
rx(1.0*pi) q[3];
rz(3.75*pi) q[0];
rz(1.0*pi) q[3];
rz(0.25*pi) q[15];
cx q[1],q[0];
rx(0.5*pi) q[3];
rz(0.25*pi) q[0];
cx q[1],q[15];
rz(2.0*pi) q[3];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rx(0.5*pi) q[3];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
rz(3.0*pi) q[3];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[15];
rz(1.0*pi) q[1];
cx q[16],q[15];
rx(0.5*pi) q[1];
rz(3.75*pi) q[15];
rz(2.0*pi) q[1];
cx q[14],q[15];
rx(0.5*pi) q[1];
rz(0.25*pi) q[15];
rz(3.0*pi) q[1];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
rz(1.0*pi) q[14];
rz(1.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(2.0*pi) q[14];
rz(2.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(3.0*pi) q[14];
rz(3.0*pi) q[16];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
cx q[15],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[15],q[0];
rz(3.75*pi) q[0];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
cx q[0],q[6];
rz(3.75*pi) q[6];
cx q[3],q[6];
rz(0.25*pi) q[6];
cx q[0],q[6];
rz(0.25*pi) q[0];
rz(3.75*pi) q[6];
cx q[3],q[6];
cx q[3],q[0];
rz(0.25*pi) q[6];
rz(3.75*pi) q[0];
rz(0.25*pi) q[3];
ry(0.5*pi) q[6];
cx q[3],q[0];
rx(1.0*pi) q[6];
ry(0.5*pi) q[0];
rz(1.0*pi) q[3];
ry(0.5*pi) q[6];
rx(1.0*pi) q[0];
rx(0.5*pi) q[3];
rx(1.0*pi) q[6];
cx q[15],q[0];
rz(2.0*pi) q[3];
rz(1.0*pi) q[6];
rz(3.75*pi) q[0];
rx(0.5*pi) q[3];
rx(0.5*pi) q[6];
cx q[1],q[0];
rz(3.0*pi) q[3];
rz(2.0*pi) q[6];
rz(0.25*pi) q[0];
ry(0.5*pi) q[3];
rx(0.5*pi) q[6];
cx q[15],q[0];
rx(1.0*pi) q[3];
rz(3.0*pi) q[6];
measure q[3] -> c[3];
rz(3.75*pi) q[0];
ry(0.5*pi) q[6];
rz(0.25*pi) q[15];
cx q[1],q[0];
rx(1.0*pi) q[6];
rz(0.25*pi) q[0];
cx q[1],q[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(3.75*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[15];
rz(1.0*pi) q[1];
ry(0.5*pi) q[15];
rx(0.5*pi) q[1];
rx(1.0*pi) q[15];
rz(2.0*pi) q[1];
cx q[16],q[15];
rx(0.5*pi) q[1];
rz(3.75*pi) q[15];
rz(3.0*pi) q[1];
cx q[14],q[15];
ry(0.5*pi) q[1];
rz(0.25*pi) q[15];
rx(1.0*pi) q[1];
cx q[16],q[15];
measure q[1] -> c[2];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
rz(1.0*pi) q[14];
rz(1.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(2.0*pi) q[14];
rz(2.0*pi) q[16];
rx(0.5*pi) q[14];
rx(0.5*pi) q[16];
rz(3.0*pi) q[14];
rz(3.0*pi) q[16];
ry(0.5*pi) q[14];
ry(0.5*pi) q[16];
rx(1.0*pi) q[14];
rx(1.0*pi) q[16];
measure q[14] -> c[0];
measure q[16] -> c[1];
