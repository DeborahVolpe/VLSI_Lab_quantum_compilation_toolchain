OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
measure q[10] -> c[13];
measure q[11] -> c[14];
measure q[12] -> c[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
ry(0.5*pi) q[6];
rz(0.25*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rx(1.0*pi) q[0];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[6];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[14];
cx q[15],q[16];
rz(0.25*pi) q[0];
rz(0.25*pi) q[2];
rz(0.25*pi) q[3];
rz(0.25*pi) q[6];
rz(0.25*pi) q[8];
rz(0.25*pi) q[9];
rz(0.25*pi) q[14];
cx q[14],q[15];
cx q[16],q[14];
rz(3.75*pi) q[15];
rz(0.25*pi) q[14];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[15];
cx q[16],q[14];
ry(0.5*pi) q[14];
cx q[15],q[16];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
ry(0.5*pi) q[14];
cx q[15],q[16];
cx q[0],q[15];
rx(1.0*pi) q[14];
cx q[16],q[0];
rz(0.25*pi) q[14];
rz(3.75*pi) q[15];
rz(0.25*pi) q[0];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[0],q[15];
cx q[16],q[0];
ry(0.5*pi) q[0];
cx q[15],q[16];
rx(1.0*pi) q[0];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
ry(0.5*pi) q[0];
cx q[1],q[15];
rx(1.0*pi) q[0];
rz(0.25*pi) q[0];
cx q[0],q[1];
cx q[15],q[0];
rz(3.75*pi) q[1];
rz(0.25*pi) q[0];
cx q[15],q[1];
rz(3.75*pi) q[1];
rz(3.75*pi) q[15];
cx q[0],q[1];
cx q[15],q[0];
ry(0.5*pi) q[0];
cx q[1],q[15];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
rz(0.25*pi) q[15];
ry(0.5*pi) q[0];
cx q[1],q[15];
rx(1.0*pi) q[0];
cx q[2],q[1];
rz(0.25*pi) q[0];
rz(3.75*pi) q[1];
cx q[15],q[2];
cx q[15],q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[1];
rz(3.75*pi) q[15];
cx q[2],q[1];
cx q[15],q[2];
cx q[1],q[15];
ry(0.5*pi) q[2];
rz(0.25*pi) q[1];
rx(1.0*pi) q[2];
rz(0.25*pi) q[15];
cx q[1],q[15];
ry(0.5*pi) q[2];
cx q[3],q[1];
rx(1.0*pi) q[2];
rz(3.75*pi) q[1];
rz(0.25*pi) q[2];
cx q[15],q[3];
cx q[15],q[1];
rz(0.25*pi) q[3];
rz(3.75*pi) q[1];
rz(3.75*pi) q[15];
cx q[3],q[1];
cx q[15],q[3];
cx q[1],q[15];
ry(0.5*pi) q[3];
rz(0.25*pi) q[1];
rx(1.0*pi) q[3];
rz(0.25*pi) q[15];
cx q[1],q[4];
ry(0.5*pi) q[3];
cx q[5],q[15];
cx q[2],q[1];
rx(1.0*pi) q[3];
rz(3.75*pi) q[1];
cx q[4],q[2];
rz(0.25*pi) q[3];
cx q[4],q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[2],q[1];
cx q[4],q[2];
cx q[1],q[4];
ry(0.5*pi) q[2];
rz(0.25*pi) q[1];
rx(1.0*pi) q[2];
rz(0.25*pi) q[4];
cx q[1],q[4];
ry(0.5*pi) q[2];
cx q[3],q[1];
rx(1.0*pi) q[2];
rz(3.75*pi) q[1];
rz(0.25*pi) q[2];
cx q[4],q[3];
cx q[4],q[1];
rz(0.25*pi) q[3];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[3],q[1];
cx q[4],q[3];
cx q[1],q[4];
ry(0.5*pi) q[3];
rz(0.25*pi) q[1];
rx(1.0*pi) q[3];
rz(0.25*pi) q[4];
measure q[3] -> c[1];
cx q[1],q[4];
cx q[6],q[1];
rz(3.75*pi) q[1];
cx q[4],q[6];
cx q[4],q[1];
rz(0.25*pi) q[6];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[6],q[1];
cx q[4],q[6];
cx q[1],q[4];
ry(0.5*pi) q[6];
rz(0.25*pi) q[1];
rz(0.25*pi) q[4];
rx(1.0*pi) q[6];
cx q[4],q[7];
cx q[14],q[4];
rz(3.75*pi) q[4];
cx q[7],q[14];
cx q[7],q[4];
rz(0.25*pi) q[14];
rz(3.75*pi) q[4];
rz(3.75*pi) q[7];
cx q[14],q[4];
cx q[7],q[14];
cx q[4],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[4];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
cx q[4],q[7];
ry(0.5*pi) q[14];
cx q[8],q[4];
rx(1.0*pi) q[14];
rz(3.75*pi) q[4];
cx q[7],q[8];
rz(0.25*pi) q[14];
cx q[7],q[4];
rz(0.25*pi) q[8];
rz(3.75*pi) q[4];
rz(3.75*pi) q[7];
cx q[8],q[4];
cx q[7],q[8];
cx q[4],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[4];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
cx q[4],q[16];
ry(0.5*pi) q[8];
rx(1.0*pi) q[8];
rz(0.25*pi) q[8];
cx q[8],q[4];
rz(3.75*pi) q[4];
cx q[16],q[8];
cx q[16],q[4];
rz(0.25*pi) q[8];
rz(3.75*pi) q[4];
rz(3.75*pi) q[16];
cx q[8],q[4];
cx q[16],q[8];
cx q[4],q[16];
ry(0.5*pi) q[8];
rz(0.25*pi) q[4];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[4],q[16];
ry(0.5*pi) q[8];
cx q[0],q[4];
rx(1.0*pi) q[8];
cx q[16],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[8];
rz(0.25*pi) q[0];
cx q[16],q[4];
rz(3.75*pi) q[4];
rz(3.75*pi) q[16];
cx q[0],q[4];
cx q[16],q[0];
ry(0.5*pi) q[0];
cx q[4],q[16];
rx(1.0*pi) q[0];
cx q[4],q[6];
rz(0.25*pi) q[16];
measure q[6] -> c[0];
ry(0.5*pi) q[0];
rz(0.25*pi) q[4];
cx q[16],q[7];
rx(1.0*pi) q[0];
cx q[4],q[1];
rz(0.25*pi) q[0];
cx q[0],q[4];
cx q[1],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[0];
cx q[1],q[4];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[0],q[4];
cx q[1],q[0];
ry(0.5*pi) q[0];
cx q[4],q[1];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[4];
ry(0.5*pi) q[0];
rx(1.0*pi) q[4];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[0];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[15];
ry(0.5*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[4];
cx q[5],q[16];
cx q[7],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[5],q[16];
cx q[7],q[5];
ry(0.5*pi) q[5];
cx q[16],q[7];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[5];
cx q[16],q[7];
cx q[5],q[15];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[15];
rz(0.25*pi) q[4];
cx q[5],q[15];
cx q[4],q[1];
cx q[0],q[4];
cx q[1],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[0];
cx q[1],q[4];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[0],q[4];
cx q[1],q[0];
ry(0.5*pi) q[0];
cx q[4],q[1];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[4];
ry(0.5*pi) q[0];
rx(1.0*pi) q[4];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[0];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[15];
ry(0.5*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[4];
cx q[5],q[16];
cx q[7],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[5],q[16];
cx q[7],q[5];
ry(0.5*pi) q[5];
cx q[16],q[7];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[5];
cx q[16],q[7];
cx q[5],q[15];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[15];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
cx q[4],q[15];
cx q[5],q[16];
cx q[0],q[4];
cx q[7],q[5];
rz(3.75*pi) q[16];
cx q[15],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(0.25*pi) q[0];
cx q[15],q[4];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
rz(3.75*pi) q[4];
cx q[5],q[16];
rz(3.75*pi) q[15];
cx q[0],q[4];
cx q[7],q[5];
cx q[15],q[0];
ry(0.5*pi) q[5];
cx q[16],q[7];
ry(0.5*pi) q[0];
cx q[4],q[15];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
cx q[16],q[7];
rz(0.25*pi) q[15];
ry(0.5*pi) q[0];
cx q[4],q[15];
cx q[9],q[16];
rx(1.0*pi) q[0];
cx q[2],q[4];
cx q[7],q[9];
rz(3.75*pi) q[16];
rz(0.25*pi) q[0];
cx q[15],q[2];
rz(3.75*pi) q[4];
cx q[7],q[16];
rz(0.25*pi) q[9];
rz(0.25*pi) q[2];
cx q[15],q[4];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
rz(3.75*pi) q[4];
cx q[9],q[16];
rz(3.75*pi) q[15];
cx q[2],q[4];
cx q[7],q[9];
cx q[15],q[2];
cx q[16],q[7];
ry(0.5*pi) q[9];
ry(0.5*pi) q[2];
cx q[4],q[15];
rz(0.25*pi) q[7];
rx(1.0*pi) q[9];
rz(0.25*pi) q[16];
rx(1.0*pi) q[2];
rz(0.25*pi) q[4];
cx q[16],q[7];
ry(0.5*pi) q[9];
rz(0.25*pi) q[15];
cx q[15],q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[9];
cx q[14],q[16];
rx(1.0*pi) q[2];
cx q[7],q[14];
cx q[8],q[15];
rz(0.25*pi) q[9];
rz(3.75*pi) q[16];
cx q[1],q[8];
rz(0.25*pi) q[2];
cx q[7],q[16];
rz(0.25*pi) q[14];
rz(3.75*pi) q[15];
cx q[1],q[15];
rz(3.75*pi) q[7];
rz(0.25*pi) q[8];
rz(3.75*pi) q[16];
rz(3.75*pi) q[1];
cx q[14],q[16];
rz(3.75*pi) q[15];
cx q[7],q[14];
cx q[8],q[15];
cx q[1],q[8];
cx q[16],q[7];
ry(0.5*pi) q[14];
cx q[15],q[1];
rz(0.25*pi) q[7];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
rz(0.25*pi) q[1];
cx q[16],q[7];
rx(1.0*pi) q[8];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[8];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[8];
cx q[15],q[16];
cx q[7],q[15];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[15];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[15],q[16];
cx q[7],q[15];
cx q[16],q[7];
ry(0.5*pi) q[15];
rz(0.25*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[15];
cx q[15],q[1];
cx q[8],q[15];
cx q[1],q[8];
rz(3.75*pi) q[15];
cx q[1],q[15];
rz(0.25*pi) q[8];
rz(3.75*pi) q[1];
rz(3.75*pi) q[15];
cx q[8],q[15];
cx q[1],q[8];
cx q[15],q[1];
ry(0.5*pi) q[8];
rz(0.25*pi) q[1];
rx(1.0*pi) q[8];
ry(0.5*pi) q[15];
ry(0.5*pi) q[8];
rx(1.0*pi) q[15];
rx(1.0*pi) q[8];
rz(0.25*pi) q[15];
rz(0.25*pi) q[8];
cx q[15],q[16];
cx q[7],q[15];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[15];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[15],q[16];
cx q[7],q[15];
cx q[16],q[7];
ry(0.5*pi) q[15];
rz(0.25*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[16];
cx q[16],q[1];
rx(1.0*pi) q[15];
cx q[0],q[16];
rz(0.25*pi) q[15];
cx q[1],q[0];
cx q[15],q[7];
rz(3.75*pi) q[16];
rz(0.25*pi) q[0];
cx q[1],q[16];
cx q[9],q[15];
rz(3.75*pi) q[1];
cx q[7],q[9];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[0],q[16];
cx q[7],q[15];
rz(0.25*pi) q[9];
cx q[1],q[0];
rz(3.75*pi) q[7];
rz(3.75*pi) q[15];
ry(0.5*pi) q[0];
cx q[16],q[1];
cx q[9],q[15];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
cx q[7],q[9];
ry(0.5*pi) q[16];
ry(0.5*pi) q[0];
cx q[15],q[7];
ry(0.5*pi) q[9];
rx(1.0*pi) q[16];
rx(1.0*pi) q[0];
rz(0.25*pi) q[7];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[0];
cx q[15],q[7];
rz(0.25*pi) q[9];
cx q[9],q[4];
cx q[14],q[15];
cx q[7],q[14];
rz(3.75*pi) q[15];
cx q[7],q[15];
rz(0.25*pi) q[14];
rz(3.75*pi) q[7];
rz(3.75*pi) q[15];
cx q[14],q[15];
cx q[7],q[14];
cx q[15],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[15],q[7];
rz(0.25*pi) q[14];
cx q[16],q[15];
cx q[7],q[16];
rz(3.75*pi) q[15];
cx q[7],q[15];
rz(0.25*pi) q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[15];
cx q[16],q[15];
cx q[7],q[16];
cx q[15],q[7];
ry(0.5*pi) q[16];
rz(0.25*pi) q[7];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
cx q[15],q[7];
rz(0.25*pi) q[16];
cx q[16],q[1];
cx q[0],q[16];
cx q[1],q[0];
rz(3.75*pi) q[16];
rz(0.25*pi) q[0];
cx q[1],q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[16];
cx q[0],q[16];
cx q[1],q[0];
ry(0.5*pi) q[0];
cx q[16],q[1];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[16];
ry(0.5*pi) q[0];
cx q[5],q[1];
rx(1.0*pi) q[16];
rx(1.0*pi) q[0];
cx q[8],q[5];
rz(0.25*pi) q[16];
rz(0.25*pi) q[0];
cx q[1],q[8];
rz(3.75*pi) q[5];
cx q[16],q[15];
cx q[1],q[5];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[15];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[7],q[15];
rz(0.25*pi) q[16];
cx q[8],q[5];
rz(3.75*pi) q[7];
rz(3.75*pi) q[15];
cx q[1],q[8];
cx q[16],q[15];
cx q[5],q[1];
cx q[7],q[16];
ry(0.5*pi) q[8];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
cx q[15],q[7];
rx(1.0*pi) q[8];
ry(0.5*pi) q[16];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
rz(0.25*pi) q[5];
rx(1.0*pi) q[8];
cx q[14],q[15];
rz(0.25*pi) q[16];
cx q[5],q[9];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[9];
cx q[14],q[16];
cx q[7],q[14];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[14];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[7],q[14];
cx q[16],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[14];
cx q[14],q[15];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[9];
cx q[14],q[15];
cx q[9],q[4];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
cx q[9],q[4];
rz(0.25*pi) q[5];
cx q[5],q[1];
cx q[8],q[5];
cx q[1],q[8];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[8];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[8],q[5];
cx q[1],q[8];
cx q[5],q[1];
ry(0.5*pi) q[8];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[8];
rx(1.0*pi) q[5];
ry(0.5*pi) q[8];
rz(0.25*pi) q[5];
rx(1.0*pi) q[8];
cx q[5],q[9];
rz(0.25*pi) q[8];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[9];
cx q[14],q[16];
cx q[7],q[14];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[14];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[7],q[14];
cx q[16],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
rz(0.25*pi) q[14];
cx q[14],q[15];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[9];
cx q[15],q[16];
cx q[9],q[4];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
cx q[7],q[4];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
cx q[8],q[7];
rz(0.25*pi) q[9];
cx q[4],q[8];
rz(0.25*pi) q[5];
rz(3.75*pi) q[7];
cx q[4],q[7];
rz(0.25*pi) q[8];
rz(3.75*pi) q[4];
rz(3.75*pi) q[7];
cx q[8],q[7];
cx q[4],q[8];
cx q[7],q[4];
ry(0.5*pi) q[8];
rz(0.25*pi) q[4];
ry(0.5*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
cx q[7],q[15];
rz(0.25*pi) q[8];
cx q[16],q[7];
rz(3.75*pi) q[15];
rz(0.25*pi) q[7];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[7],q[15];
cx q[16],q[7];
ry(0.5*pi) q[7];
cx q[15],q[16];
rx(1.0*pi) q[7];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[7];
cx q[15],q[16];
cx q[7],q[4];
cx q[8],q[7];
cx q[4],q[8];
rz(3.75*pi) q[7];
cx q[4],q[7];
rz(0.25*pi) q[8];
rz(3.75*pi) q[4];
rz(3.75*pi) q[7];
cx q[8],q[7];
cx q[4],q[8];
cx q[7],q[4];
ry(0.5*pi) q[8];
rz(0.25*pi) q[4];
ry(0.5*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[7];
rz(0.25*pi) q[8];
rz(0.25*pi) q[7];
cx q[7],q[15];
cx q[16],q[7];
rz(3.75*pi) q[15];
rz(0.25*pi) q[7];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[7],q[15];
cx q[16],q[7];
ry(0.5*pi) q[7];
cx q[15],q[16];
rx(1.0*pi) q[7];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
cx q[4],q[15];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
cx q[7],q[1];
cx q[2],q[7];
cx q[1],q[2];
rz(3.75*pi) q[7];
cx q[1],q[7];
rz(0.25*pi) q[2];
rz(3.75*pi) q[1];
rz(3.75*pi) q[7];
cx q[2],q[7];
cx q[1],q[2];
cx q[7],q[1];
ry(0.5*pi) q[2];
rz(0.25*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[7];
ry(0.5*pi) q[2];
rx(1.0*pi) q[7];
rx(1.0*pi) q[2];
rz(0.25*pi) q[7];
rz(0.25*pi) q[2];
cx q[7],q[4];
rz(3.75*pi) q[4];
cx q[15],q[7];
cx q[15],q[4];
rz(0.25*pi) q[7];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[7],q[4];
cx q[15],q[7];
cx q[4],q[15];
ry(0.5*pi) q[7];
rz(0.25*pi) q[4];
rx(1.0*pi) q[7];
rz(0.25*pi) q[15];
cx q[4],q[15];
rz(0.25*pi) q[7];
cx q[7],q[1];
cx q[2],q[7];
cx q[1],q[2];
rz(3.75*pi) q[7];
cx q[1],q[7];
rz(0.25*pi) q[2];
rz(3.75*pi) q[1];
rz(3.75*pi) q[7];
cx q[2],q[7];
cx q[1],q[2];
cx q[7],q[1];
ry(0.5*pi) q[2];
rz(0.25*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[7];
cx q[1],q[16];
ry(0.5*pi) q[2];
rx(1.0*pi) q[7];
rx(1.0*pi) q[2];
rz(0.25*pi) q[7];
rz(0.25*pi) q[2];
cx q[7],q[4];
cx q[2],q[1];
rz(3.75*pi) q[4];
cx q[15],q[7];
rz(3.75*pi) q[1];
cx q[16],q[2];
cx q[15],q[4];
rz(0.25*pi) q[7];
cx q[16],q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
rz(3.75*pi) q[1];
cx q[7],q[4];
rz(3.75*pi) q[16];
cx q[2],q[1];
cx q[15],q[7];
cx q[16],q[2];
cx q[4],q[15];
ry(0.5*pi) q[7];
cx q[1],q[16];
ry(0.5*pi) q[2];
rx(1.0*pi) q[4];
rx(1.0*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[1];
rx(1.0*pi) q[2];
rz(0.25*pi) q[4];
rz(0.25*pi) q[7];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
measure q[2] -> c[2];
cx q[4],q[15];
cx q[16],q[7];
cx q[9],q[4];
rz(3.75*pi) q[4];
cx q[15],q[9];
cx q[15],q[4];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[9],q[4];
cx q[15],q[9];
cx q[4],q[15];
ry(0.5*pi) q[9];
ry(0.5*pi) q[4];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[9];
rz(0.25*pi) q[4];
rx(1.0*pi) q[9];
cx q[4],q[16];
rz(0.25*pi) q[9];
cx q[7],q[4];
rz(3.75*pi) q[16];
rz(0.25*pi) q[4];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[4],q[16];
cx q[7],q[4];
ry(0.5*pi) q[4];
cx q[16],q[7];
rx(1.0*pi) q[4];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[4];
cx q[16],q[7];
cx q[4],q[15];
cx q[9],q[4];
rz(3.75*pi) q[4];
cx q[15],q[9];
cx q[15],q[4];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[9],q[4];
cx q[15],q[9];
cx q[4],q[15];
ry(0.5*pi) q[9];
ry(0.5*pi) q[4];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rx(1.0*pi) q[4];
rz(0.25*pi) q[9];
cx q[9],q[1];
rz(0.25*pi) q[4];
cx q[4],q[16];
cx q[5],q[9];
cx q[1],q[5];
cx q[7],q[4];
rz(3.75*pi) q[9];
rz(3.75*pi) q[16];
cx q[1],q[9];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[7];
rz(3.75*pi) q[9];
rz(3.75*pi) q[16];
cx q[4],q[16];
cx q[5],q[9];
cx q[1],q[5];
cx q[7],q[4];
cx q[9],q[1];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
cx q[16],q[7];
rz(0.25*pi) q[1];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
ry(0.5*pi) q[9];
rz(0.25*pi) q[16];
rz(0.25*pi) q[4];
ry(0.5*pi) q[5];
cx q[16],q[7];
rx(1.0*pi) q[9];
cx q[4],q[15];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
cx q[0],q[4];
rz(0.25*pi) q[5];
cx q[15],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[0];
cx q[15],q[4];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[0],q[4];
cx q[15],q[0];
ry(0.5*pi) q[0];
cx q[4],q[15];
rx(1.0*pi) q[0];
ry(0.5*pi) q[4];
rz(0.25*pi) q[15];
ry(0.5*pi) q[0];
rx(1.0*pi) q[4];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[0];
cx q[4],q[16];
cx q[7],q[4];
rz(3.75*pi) q[16];
rz(0.25*pi) q[4];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[4],q[16];
cx q[7],q[4];
ry(0.5*pi) q[4];
cx q[16],q[7];
rx(1.0*pi) q[4];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[4];
cx q[16],q[7];
cx q[4],q[15];
cx q[0],q[4];
cx q[15],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[0];
cx q[15],q[4];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[0],q[4];
cx q[15],q[0];
ry(0.5*pi) q[0];
cx q[4],q[15];
rx(1.0*pi) q[0];
ry(0.5*pi) q[4];
rz(0.25*pi) q[15];
ry(0.5*pi) q[0];
rx(1.0*pi) q[4];
cx q[8],q[15];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[0];
cx q[4],q[16];
cx q[7],q[4];
rz(3.75*pi) q[16];
rz(0.25*pi) q[4];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[4],q[16];
cx q[7],q[4];
ry(0.5*pi) q[4];
cx q[16],q[7];
rx(1.0*pi) q[4];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[4];
cx q[16],q[7];
cx q[14],q[4];
cx q[9],q[14];
cx q[4],q[9];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[9],q[14];
cx q[4],q[9];
cx q[14],q[4];
ry(0.5*pi) q[9];
rz(0.25*pi) q[4];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
cx q[14],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
cx q[8],q[16];
rz(0.25*pi) q[14];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[8],q[15];
rz(0.25*pi) q[14];
cx q[14],q[4];
cx q[9],q[14];
cx q[4],q[9];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[9],q[14];
cx q[4],q[9];
cx q[14],q[4];
ry(0.5*pi) q[9];
rz(0.25*pi) q[4];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
cx q[14],q[4];
rz(0.25*pi) q[9];
cx q[9],q[1];
cx q[5],q[9];
cx q[1],q[5];
rz(3.75*pi) q[9];
cx q[1],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[1];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[1],q[5];
cx q[9],q[1];
ry(0.5*pi) q[5];
rz(0.25*pi) q[1];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
rz(0.25*pi) q[5];
rx(1.0*pi) q[9];
cx q[5],q[1];
rz(0.25*pi) q[9];
cx q[9],q[14];
cx q[4],q[9];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[9],q[14];
cx q[4],q[9];
cx q[14],q[4];
ry(0.5*pi) q[9];
rz(0.25*pi) q[4];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
cx q[14],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
cx q[8],q[16];
rz(0.25*pi) q[14];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[8],q[15];
rz(0.25*pi) q[14];
cx q[14],q[4];
cx q[9],q[14];
cx q[4],q[9];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[9];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[9],q[14];
cx q[4],q[9];
cx q[14],q[4];
ry(0.5*pi) q[9];
rz(0.25*pi) q[4];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
cx q[14],q[4];
ry(0.5*pi) q[9];
rx(1.0*pi) q[9];
rz(0.25*pi) q[9];
cx q[9],q[5];
cx q[1],q[9];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[9];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[9],q[5];
cx q[1],q[9];
cx q[5],q[1];
ry(0.5*pi) q[9];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
rz(0.25*pi) q[5];
rx(1.0*pi) q[9];
cx q[5],q[14];
rz(0.25*pi) q[9];
cx q[4],q[5];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[5],q[14];
cx q[4],q[5];
cx q[14],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[14];
ry(0.5*pi) q[5];
rx(1.0*pi) q[14];
rx(1.0*pi) q[5];
rz(0.25*pi) q[14];
rz(0.25*pi) q[5];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
cx q[8],q[16];
rz(0.25*pi) q[14];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[8],q[15];
rz(0.25*pi) q[14];
cx q[14],q[4];
cx q[5],q[14];
cx q[4],q[5];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[5],q[14];
cx q[4],q[5];
cx q[14],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[14];
cx q[14],q[4];
rz(0.25*pi) q[5];
cx q[5],q[1];
cx q[9],q[5];
cx q[1],q[9];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[9];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[9],q[5];
cx q[1],q[9];
cx q[5],q[1];
ry(0.5*pi) q[9];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[5],q[14];
cx q[4],q[5];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[5],q[14];
cx q[4],q[5];
cx q[14],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[14];
ry(0.5*pi) q[5];
rx(1.0*pi) q[14];
rx(1.0*pi) q[5];
rz(0.25*pi) q[14];
rz(0.25*pi) q[5];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
cx q[8],q[16];
rz(0.25*pi) q[14];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[14],q[8];
rz(3.75*pi) q[8];
cx q[15],q[14];
cx q[15],q[8];
rz(0.25*pi) q[14];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[14],q[8];
cx q[15],q[14];
cx q[8],q[15];
ry(0.5*pi) q[14];
rz(0.25*pi) q[8];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
cx q[8],q[15];
rz(0.25*pi) q[14];
cx q[14],q[4];
cx q[5],q[14];
cx q[4],q[5];
rz(3.75*pi) q[14];
cx q[4],q[14];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[14];
cx q[5],q[14];
cx q[4],q[5];
cx q[14],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[14];
cx q[9],q[4];
rz(0.25*pi) q[5];
rx(1.0*pi) q[14];
cx q[5],q[1];
rz(0.25*pi) q[14];
cx q[14],q[5];
cx q[1],q[14];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[14];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[14],q[5];
cx q[1],q[14];
cx q[5],q[1];
ry(0.5*pi) q[14];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[14];
rx(1.0*pi) q[5];
ry(0.5*pi) q[14];
rz(0.25*pi) q[5];
rx(1.0*pi) q[14];
cx q[5],q[9];
rz(0.25*pi) q[14];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[8];
rz(3.75*pi) q[8];
cx q[15],q[9];
cx q[15],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
ry(0.5*pi) q[9];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[9];
rz(0.25*pi) q[8];
rx(1.0*pi) q[9];
cx q[8],q[16];
rz(0.25*pi) q[9];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[9],q[8];
rz(3.75*pi) q[8];
cx q[15],q[9];
cx q[15],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
ry(0.5*pi) q[9];
rz(0.25*pi) q[8];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
cx q[8],q[15];
rz(0.25*pi) q[9];
cx q[9],q[4];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
cx q[9],q[4];
rz(0.25*pi) q[5];
cx q[5],q[1];
cx q[14],q[5];
cx q[1],q[14];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[14];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[14],q[5];
cx q[1],q[14];
cx q[5],q[1];
ry(0.5*pi) q[14];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[14];
rx(1.0*pi) q[5];
rz(0.25*pi) q[14];
rz(0.25*pi) q[5];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[8];
rz(3.75*pi) q[8];
cx q[15],q[9];
cx q[15],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
ry(0.5*pi) q[9];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
ry(0.5*pi) q[9];
rz(0.25*pi) q[8];
rx(1.0*pi) q[9];
cx q[8],q[16];
rz(0.25*pi) q[9];
cx q[7],q[8];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[8];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[8],q[16];
cx q[7],q[8];
cx q[16],q[7];
ry(0.5*pi) q[8];
rz(0.25*pi) q[7];
rx(1.0*pi) q[8];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[8];
cx q[8],q[15];
cx q[9],q[8];
rz(3.75*pi) q[8];
cx q[15],q[9];
cx q[15],q[8];
rz(0.25*pi) q[9];
rz(3.75*pi) q[8];
rz(3.75*pi) q[15];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
ry(0.5*pi) q[9];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rz(0.25*pi) q[15];
rx(1.0*pi) q[8];
rz(0.25*pi) q[9];
cx q[14],q[15];
cx q[9],q[4];
rz(0.25*pi) q[8];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
cx q[9],q[4];
rz(0.25*pi) q[5];
cx q[5],q[1];
cx q[8],q[5];
cx q[1],q[8];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[8];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[8],q[5];
cx q[1],q[8];
cx q[5],q[1];
ry(0.5*pi) q[8];
rz(0.25*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[8];
rx(1.0*pi) q[5];
ry(0.5*pi) q[8];
rz(0.25*pi) q[5];
rx(1.0*pi) q[8];
cx q[5],q[9];
rz(0.25*pi) q[8];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[9];
cx q[14],q[16];
cx q[7],q[14];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[14];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[7],q[14];
cx q[16],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[14];
cx q[14],q[15];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[9];
cx q[14],q[15];
cx q[9],q[4];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
cx q[9],q[4];
rz(0.25*pi) q[5];
cx q[5],q[1];
cx q[8],q[5];
cx q[1],q[8];
rz(3.75*pi) q[5];
cx q[1],q[5];
rz(0.25*pi) q[8];
rz(3.75*pi) q[1];
rz(3.75*pi) q[5];
cx q[8],q[5];
cx q[1],q[8];
cx q[5],q[1];
ry(0.5*pi) q[8];
rx(1.0*pi) q[1];
ry(0.5*pi) q[5];
rx(1.0*pi) q[8];
measure q[8] -> c[4];
rz(0.25*pi) q[1];
rx(1.0*pi) q[5];
rz(0.25*pi) q[5];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[9];
ry(0.5*pi) q[5];
rx(1.0*pi) q[9];
rx(1.0*pi) q[5];
rz(0.25*pi) q[9];
rz(0.25*pi) q[5];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
ry(0.5*pi) q[9];
rx(1.0*pi) q[14];
rx(1.0*pi) q[9];
rz(0.25*pi) q[14];
rz(0.25*pi) q[9];
cx q[14],q[16];
cx q[7],q[14];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[14];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[7],q[14];
cx q[16],q[7];
ry(0.5*pi) q[14];
rz(0.25*pi) q[7];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[14];
cx q[14],q[15];
cx q[9],q[14];
cx q[15],q[9];
rz(3.75*pi) q[14];
rz(0.25*pi) q[9];
cx q[15],q[14];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[9],q[14];
cx q[15],q[9];
ry(0.5*pi) q[9];
cx q[14],q[15];
rx(1.0*pi) q[9];
ry(0.5*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[9];
rx(1.0*pi) q[14];
cx q[9],q[4];
rz(0.25*pi) q[14];
cx q[5],q[9];
cx q[4],q[5];
rz(3.75*pi) q[9];
cx q[4],q[9];
rz(0.25*pi) q[5];
rz(3.75*pi) q[4];
rz(3.75*pi) q[9];
cx q[5],q[9];
cx q[4],q[5];
cx q[9],q[4];
ry(0.5*pi) q[5];
measure q[9] -> c[6];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
cx q[15],q[4];
cx q[14],q[15];
cx q[4],q[14];
rz(3.75*pi) q[15];
cx q[4],q[15];
rz(0.25*pi) q[14];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[14],q[15];
cx q[4],q[14];
cx q[15],q[4];
ry(0.5*pi) q[14];
rz(0.25*pi) q[4];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[14];
cx q[15],q[16];
cx q[7],q[15];
rz(3.75*pi) q[16];
cx q[7],q[16];
rz(0.25*pi) q[15];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[15],q[16];
cx q[7],q[15];
cx q[16],q[7];
ry(0.5*pi) q[15];
rz(0.25*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[16];
cx q[16],q[7];
rz(0.25*pi) q[15];
cx q[15],q[4];
cx q[14],q[15];
cx q[4],q[14];
rz(3.75*pi) q[15];
cx q[4],q[15];
rz(0.25*pi) q[14];
rz(3.75*pi) q[4];
rz(3.75*pi) q[15];
cx q[14],q[15];
cx q[4],q[14];
cx q[15],q[4];
ry(0.5*pi) q[14];
rz(0.25*pi) q[4];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
measure q[14] -> c[5];
cx q[4],q[1];
rx(1.0*pi) q[15];
cx q[0],q[4];
rz(0.25*pi) q[15];
cx q[1],q[0];
rz(3.75*pi) q[4];
cx q[15],q[16];
rz(0.25*pi) q[0];
cx q[1],q[4];
cx q[7],q[15];
rz(3.75*pi) q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[7],q[16];
rz(0.25*pi) q[15];
cx q[0],q[4];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[1],q[0];
cx q[15],q[16];
ry(0.5*pi) q[0];
cx q[4],q[1];
cx q[7],q[15];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[4];
cx q[16],q[7];
ry(0.5*pi) q[15];
ry(0.5*pi) q[0];
rx(1.0*pi) q[4];
rx(1.0*pi) q[7];
rx(1.0*pi) q[15];
rz(0.25*pi) q[16];
rx(1.0*pi) q[0];
rz(0.25*pi) q[4];
rz(0.25*pi) q[7];
rz(0.25*pi) q[15];
rz(0.25*pi) q[0];
cx q[5],q[15];
cx q[16],q[7];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[15];
ry(0.5*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[4];
cx q[5],q[16];
cx q[7],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[5],q[16];
cx q[7],q[5];
ry(0.5*pi) q[5];
cx q[16],q[7];
rx(1.0*pi) q[5];
rz(0.25*pi) q[7];
rz(0.25*pi) q[16];
rz(0.25*pi) q[5];
cx q[16],q[7];
cx q[5],q[15];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[15];
rz(0.25*pi) q[4];
cx q[5],q[15];
cx q[4],q[1];
cx q[0],q[4];
cx q[1],q[0];
rz(3.75*pi) q[4];
rz(0.25*pi) q[0];
cx q[1],q[4];
rz(3.75*pi) q[1];
rz(3.75*pi) q[4];
cx q[0],q[4];
cx q[1],q[0];
ry(0.5*pi) q[0];
cx q[4],q[1];
measure q[1] -> c[8];
rx(1.0*pi) q[0];
ry(0.5*pi) q[4];
measure q[0] -> c[3];
rx(1.0*pi) q[4];
rz(0.25*pi) q[4];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
rx(1.0*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[15];
ry(0.5*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[4];
rz(0.25*pi) q[5];
rz(0.25*pi) q[4];
cx q[5],q[16];
cx q[7],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[5];
cx q[7],q[16];
rz(3.75*pi) q[7];
rz(3.75*pi) q[16];
cx q[5],q[16];
cx q[7],q[5];
ry(0.5*pi) q[5];
cx q[16],q[7];
measure q[16] -> c[11];
measure q[7] -> c[12];
rx(1.0*pi) q[5];
rz(0.25*pi) q[5];
cx q[5],q[15];
cx q[4],q[5];
cx q[15],q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[4];
cx q[15],q[5];
rz(3.75*pi) q[5];
rz(3.75*pi) q[15];
cx q[4],q[5];
cx q[15],q[4];
ry(0.5*pi) q[4];
cx q[5],q[15];
measure q[5] -> c[7];
measure q[15] -> c[10];
rx(1.0*pi) q[4];
measure q[4] -> c[9];
