OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
measure q[1] -> c[14];
measure q[2] -> c[15];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
cx q[7],q[8];
cx q[10],q[9];
cx q[12],q[11];
cx q[14],q[13];
cx q[16],q[15];
cx q[5],q[4];
cx q[7],q[6];
rz(0.25*pi) q[8];
rz(0.25*pi) q[9];
rz(0.25*pi) q[11];
rz(0.25*pi) q[13];
rz(0.25*pi) q[15];
ry(0.5*pi) q[6];
cx q[10],q[7];
rx(1.0*pi) q[6];
ry(0.5*pi) q[7];
cx q[12],q[10];
rz(0.25*pi) q[6];
rx(1.0*pi) q[7];
ry(0.5*pi) q[10];
cx q[14],q[12];
cx q[6],q[5];
rz(0.25*pi) q[7];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
cx q[16],q[14];
cx q[16],q[0];
cx q[4],q[6];
rz(3.75*pi) q[5];
rz(0.25*pi) q[10];
rx(1.0*pi) q[12];
ry(0.5*pi) q[14];
ry(0.5*pi) q[0];
cx q[4],q[5];
rz(0.25*pi) q[6];
rz(0.25*pi) q[12];
rx(1.0*pi) q[14];
rx(1.0*pi) q[0];
rz(3.75*pi) q[4];
rz(3.75*pi) q[5];
rz(0.25*pi) q[14];
rz(0.25*pi) q[0];
cx q[6],q[5];
cx q[4],q[6];
cx q[5],q[4];
ry(0.5*pi) q[6];
rz(0.25*pi) q[4];
rz(0.25*pi) q[5];
rx(1.0*pi) q[6];
cx q[5],q[4];
rz(0.25*pi) q[6];
cx q[8],q[6];
cx q[7],q[8];
cx q[6],q[7];
rz(3.75*pi) q[8];
cx q[6],q[8];
rz(0.25*pi) q[7];
rz(3.75*pi) q[6];
rz(3.75*pi) q[8];
cx q[7],q[8];
cx q[6],q[7];
cx q[8],q[6];
ry(0.5*pi) q[7];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
cx q[6],q[8];
rz(0.25*pi) q[7];
rz(0.25*pi) q[6];
cx q[9],q[7];
rz(0.25*pi) q[8];
cx q[8],q[6];
cx q[10],q[9];
cx q[7],q[10];
rz(3.75*pi) q[9];
cx q[7],q[9];
rz(0.25*pi) q[10];
rz(3.75*pi) q[7];
rz(3.75*pi) q[9];
cx q[10],q[9];
cx q[7],q[10];
cx q[9],q[7];
ry(0.5*pi) q[10];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
cx q[7],q[9];
rz(0.25*pi) q[10];
rz(0.25*pi) q[7];
rz(0.25*pi) q[9];
cx q[11],q[10];
cx q[9],q[7];
cx q[12],q[11];
cx q[10],q[12];
rz(3.75*pi) q[11];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(3.75*pi) q[10];
rz(3.75*pi) q[11];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[12];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
rz(0.25*pi) q[11];
cx q[13],q[12];
cx q[11],q[10];
cx q[14],q[13];
cx q[12],q[14];
rz(3.75*pi) q[13];
cx q[12],q[13];
rz(0.25*pi) q[14];
rz(3.75*pi) q[12];
rz(3.75*pi) q[13];
cx q[14],q[13];
cx q[12],q[14];
cx q[13],q[12];
ry(0.5*pi) q[14];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
cx q[12],q[13];
rz(0.25*pi) q[14];
rz(0.25*pi) q[12];
rz(0.25*pi) q[13];
cx q[15],q[14];
cx q[0],q[15];
cx q[13],q[12];
cx q[14],q[0];
rz(3.75*pi) q[15];
rz(0.25*pi) q[0];
cx q[14],q[15];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[0],q[15];
cx q[14],q[0];
ry(0.5*pi) q[0];
cx q[15],q[14];
rx(1.0*pi) q[0];
cx q[14],q[15];
measure q[0] -> c[13];
ry(0.5*pi) q[14];
rx(1.0*pi) q[14];
rz(0.25*pi) q[14];
cx q[14],q[13];
cx q[12],q[14];
rz(3.75*pi) q[13];
cx q[12],q[13];
rz(0.25*pi) q[14];
rz(3.75*pi) q[12];
rz(3.75*pi) q[13];
cx q[14],q[13];
cx q[12],q[14];
cx q[13],q[12];
ry(0.5*pi) q[14];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rx(1.0*pi) q[12];
cx q[16],q[14];
rz(0.25*pi) q[12];
cx q[16],q[15];
measure q[15] -> c[11];
measure q[16] -> c[12];
cx q[12],q[11];
cx q[10],q[12];
rz(3.75*pi) q[11];
cx q[10],q[11];
rz(0.25*pi) q[12];
rz(3.75*pi) q[10];
rz(3.75*pi) q[11];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
cx q[14],q[12];
rz(0.25*pi) q[10];
cx q[14],q[13];
measure q[13] -> c[9];
measure q[14] -> c[10];
cx q[10],q[9];
cx q[7],q[10];
rz(3.75*pi) q[9];
cx q[7],q[9];
rz(0.25*pi) q[10];
rz(3.75*pi) q[7];
rz(3.75*pi) q[9];
cx q[10],q[9];
cx q[7],q[10];
cx q[9],q[7];
ry(0.5*pi) q[10];
ry(0.5*pi) q[7];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[7];
cx q[12],q[10];
rz(0.25*pi) q[7];
cx q[12],q[11];
measure q[11] -> c[7];
measure q[12] -> c[8];
cx q[7],q[8];
cx q[6],q[7];
rz(3.75*pi) q[8];
cx q[6],q[8];
rz(0.25*pi) q[7];
rz(3.75*pi) q[6];
rz(3.75*pi) q[8];
cx q[7],q[8];
cx q[6],q[7];
cx q[8],q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[6];
cx q[10],q[7];
rz(0.25*pi) q[6];
cx q[10],q[9];
measure q[9] -> c[5];
measure q[10] -> c[6];
cx q[6],q[5];
cx q[4],q[6];
rz(3.75*pi) q[5];
cx q[4],q[5];
rz(0.25*pi) q[6];
rz(3.75*pi) q[4];
rz(3.75*pi) q[5];
cx q[6],q[5];
cx q[4],q[6];
cx q[5],q[4];
ry(0.5*pi) q[6];
cx q[5],q[4];
rx(1.0*pi) q[6];
measure q[4] -> c[0];
measure q[5] -> c[1];
cx q[7],q[6];
measure q[6] -> c[2];
cx q[7],q[8];
measure q[8] -> c[3];
measure q[7] -> c[4];
