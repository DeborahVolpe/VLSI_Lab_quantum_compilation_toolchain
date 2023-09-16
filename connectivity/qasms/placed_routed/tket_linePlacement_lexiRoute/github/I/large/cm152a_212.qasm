OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
measure q[5] -> c[12];
measure q[6] -> c[13];
measure q[7] -> c[14];
measure q[8] -> c[15];
rz(0.25*pi) q[0];
rz(0.25*pi) q[1];
rz(0.25*pi) q[2];
rz(0.25*pi) q[3];
rz(0.25*pi) q[4];
ry(0.5*pi) q[10];
rz(0.25*pi) q[11];
rz(0.25*pi) q[12];
rz(0.25*pi) q[13];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rx(1.0*pi) q[10];
cx q[12],q[11];
cx q[13],q[14];
cx q[16],q[15];
rz(0.25*pi) q[10];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
rz(3.75*pi) q[13];
cx q[14],q[16];
cx q[14],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[13];
rz(3.75*pi) q[14];
cx q[16],q[13];
cx q[14],q[16];
cx q[13],q[14];
ry(0.5*pi) q[16];
rz(0.25*pi) q[13];
rz(0.25*pi) q[14];
rx(1.0*pi) q[16];
cx q[13],q[14];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
rz(3.75*pi) q[13];
cx q[14],q[16];
cx q[14],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[13];
rz(3.75*pi) q[14];
cx q[16],q[13];
cx q[14],q[16];
cx q[13],q[14];
ry(0.5*pi) q[16];
measure q[14] -> c[4];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[0];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[0],q[16];
rz(3.75*pi) q[13];
cx q[0],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[0];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[0],q[16];
cx q[13],q[0];
ry(0.5*pi) q[16];
rz(0.25*pi) q[0];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[0];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[0],q[16];
rz(3.75*pi) q[13];
cx q[0],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[0];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[0],q[16];
cx q[13],q[0];
ry(0.5*pi) q[16];
rz(0.25*pi) q[0];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[0];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[0],q[12];
rz(3.75*pi) q[13];
cx q[0],q[13];
rz(0.25*pi) q[12];
rz(3.75*pi) q[0];
rz(3.75*pi) q[13];
cx q[12],q[13];
cx q[0],q[12];
cx q[13],q[0];
ry(0.5*pi) q[12];
rz(0.25*pi) q[0];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[0];
rz(0.25*pi) q[12];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rx(1.0*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
cx q[16],q[15];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[0],q[12];
rz(3.75*pi) q[13];
cx q[0],q[13];
rz(0.25*pi) q[12];
rz(3.75*pi) q[0];
rz(3.75*pi) q[13];
cx q[12],q[13];
cx q[0],q[12];
cx q[13],q[0];
ry(0.5*pi) q[12];
measure q[0] -> c[8];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[1];
rz(0.25*pi) q[12];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[1],q[16];
rz(3.75*pi) q[13];
cx q[1],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[1],q[16];
cx q[13],q[1];
ry(0.5*pi) q[16];
rz(0.25*pi) q[1];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[1];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[1],q[16];
rz(3.75*pi) q[13];
cx q[1],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[1],q[16];
cx q[13],q[1];
ry(0.5*pi) q[16];
measure q[1] -> c[6];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
cx q[2],q[15];
rz(0.25*pi) q[12];
cx q[13],q[16];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
cx q[12],q[2];
rz(0.25*pi) q[10];
rz(3.75*pi) q[2];
cx q[15],q[12];
cx q[15],q[2];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[12],q[2];
cx q[15],q[12];
cx q[2],q[15];
ry(0.5*pi) q[12];
ry(0.5*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[2];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
cx q[2],q[13];
rz(0.25*pi) q[12];
cx q[16],q[2];
rz(3.75*pi) q[13];
rz(0.25*pi) q[2];
cx q[16],q[13];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[2],q[13];
cx q[16],q[2];
ry(0.5*pi) q[2];
cx q[13],q[16];
rx(1.0*pi) q[2];
rz(0.25*pi) q[13];
rz(0.25*pi) q[16];
rz(0.25*pi) q[2];
cx q[13],q[16];
cx q[2],q[15];
cx q[12],q[2];
rz(3.75*pi) q[2];
cx q[15],q[12];
cx q[15],q[2];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[12],q[2];
cx q[15],q[12];
cx q[2],q[15];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
cx q[2],q[15];
rz(0.25*pi) q[12];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
cx q[12],q[2];
rz(0.25*pi) q[10];
rz(3.75*pi) q[2];
cx q[15],q[12];
cx q[15],q[2];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[12],q[2];
cx q[15],q[12];
cx q[2],q[15];
ry(0.5*pi) q[12];
ry(0.5*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[2];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
cx q[2],q[13];
rz(0.25*pi) q[12];
cx q[16],q[2];
rz(3.75*pi) q[13];
rz(0.25*pi) q[2];
cx q[16],q[13];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[2],q[13];
cx q[16],q[2];
ry(0.5*pi) q[2];
cx q[13],q[16];
rx(1.0*pi) q[2];
rz(0.25*pi) q[13];
rz(0.25*pi) q[16];
rz(0.25*pi) q[2];
cx q[13],q[16];
cx q[2],q[15];
cx q[12],q[2];
rz(3.75*pi) q[2];
cx q[15],q[12];
cx q[15],q[2];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[12],q[2];
cx q[15],q[12];
cx q[2],q[15];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[12];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[16],q[12];
rz(3.75*pi) q[13];
rz(0.25*pi) q[12];
cx q[16],q[13];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[12],q[13];
cx q[16],q[12];
ry(0.5*pi) q[12];
cx q[13],q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[13],q[16];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rx(1.0*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[16],q[12];
rz(3.75*pi) q[13];
rz(0.25*pi) q[12];
cx q[16],q[13];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[12],q[13];
cx q[16],q[12];
ry(0.5*pi) q[12];
cx q[13],q[16];
rx(1.0*pi) q[12];
rx(1.0*pi) q[13];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
rz(0.25*pi) q[13];
cx q[16],q[15];
cx q[13],q[3];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[3],q[16];
rz(3.75*pi) q[13];
cx q[3],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[3];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[3],q[16];
cx q[13],q[3];
ry(0.5*pi) q[16];
rz(0.25*pi) q[3];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[3];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[3],q[16];
rz(3.75*pi) q[13];
cx q[3],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[3];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[3],q[16];
cx q[13],q[3];
ry(0.5*pi) q[16];
measure q[3] -> c[5];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[2];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[2],q[16];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[2],q[16];
cx q[13],q[2];
ry(0.5*pi) q[16];
rz(0.25*pi) q[2];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[2];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[2],q[16];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[2],q[16];
cx q[13],q[2];
ry(0.5*pi) q[16];
rz(0.25*pi) q[2];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[2];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[2],q[12];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[13];
cx q[12],q[13];
cx q[2],q[12];
cx q[13],q[2];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[2];
rz(0.25*pi) q[12];
cx q[12],q[15];
cx q[10],q[12];
cx q[15],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[15],q[12];
rz(3.75*pi) q[12];
rz(3.75*pi) q[15];
cx q[10],q[12];
cx q[15],q[10];
ry(0.5*pi) q[10];
cx q[12],q[15];
rx(1.0*pi) q[10];
ry(0.5*pi) q[12];
rx(1.0*pi) q[15];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
cx q[16],q[15];
rz(0.25*pi) q[10];
cx q[12],q[13];
cx q[2],q[12];
rz(3.75*pi) q[13];
cx q[2],q[13];
rz(0.25*pi) q[12];
rz(3.75*pi) q[2];
rz(3.75*pi) q[13];
cx q[12],q[13];
cx q[2],q[12];
cx q[13],q[2];
ry(0.5*pi) q[12];
rz(0.25*pi) q[2];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
cx q[13],q[4];
rz(0.25*pi) q[12];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[4],q[16];
rz(3.75*pi) q[13];
cx q[4],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[4];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[4],q[16];
cx q[13],q[4];
ry(0.5*pi) q[16];
rz(0.25*pi) q[4];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
cx q[13],q[4];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[15];
cx q[12],q[11];
cx q[10],q[12];
cx q[11],q[10];
rz(3.75*pi) q[12];
rz(0.25*pi) q[10];
cx q[11],q[12];
rz(3.75*pi) q[11];
rz(3.75*pi) q[12];
cx q[10],q[12];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[12],q[11];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[10];
rz(0.25*pi) q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[10];
rz(0.25*pi) q[12];
rz(0.25*pi) q[10];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[12];
rx(1.0*pi) q[16];
rx(1.0*pi) q[12];
rz(0.25*pi) q[16];
rz(0.25*pi) q[12];
cx q[16],q[13];
cx q[4],q[16];
rz(3.75*pi) q[13];
cx q[4],q[13];
rz(0.25*pi) q[16];
rz(3.75*pi) q[4];
rz(3.75*pi) q[13];
cx q[16],q[13];
cx q[4],q[16];
cx q[13],q[4];
ry(0.5*pi) q[16];
measure q[4] -> c[7];
rz(0.25*pi) q[13];
rx(1.0*pi) q[16];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[12],q[16];
cx q[15],q[12];
rz(3.75*pi) q[16];
rz(0.25*pi) q[12];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[12],q[16];
cx q[15],q[12];
ry(0.5*pi) q[12];
cx q[16],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
cx q[2],q[15];
cx q[16],q[11];
rz(0.25*pi) q[12];
cx q[10],q[16];
cx q[13],q[12];
cx q[11],q[10];
rz(3.75*pi) q[16];
rz(0.25*pi) q[10];
cx q[11],q[16];
rz(3.75*pi) q[11];
rz(3.75*pi) q[16];
cx q[10],q[16];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[16],q[11];
rx(1.0*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[16];
ry(0.5*pi) q[10];
rx(1.0*pi) q[16];
rx(1.0*pi) q[10];
rz(0.25*pi) q[16];
cx q[16],q[2];
rz(0.25*pi) q[10];
rz(3.75*pi) q[2];
cx q[15],q[16];
cx q[15],q[2];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[16],q[2];
cx q[15],q[16];
cx q[2],q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[2];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[2];
ry(0.5*pi) q[16];
rz(0.25*pi) q[2];
rx(1.0*pi) q[16];
cx q[2],q[13];
rz(0.25*pi) q[16];
cx q[12],q[2];
rz(3.75*pi) q[13];
rz(0.25*pi) q[2];
cx q[12],q[13];
rz(3.75*pi) q[12];
rz(3.75*pi) q[13];
cx q[2],q[13];
cx q[12],q[2];
ry(0.5*pi) q[2];
cx q[13],q[12];
rx(1.0*pi) q[2];
rz(0.25*pi) q[12];
rz(0.25*pi) q[13];
rz(0.25*pi) q[2];
cx q[13],q[12];
cx q[2],q[15];
cx q[16],q[2];
rz(3.75*pi) q[2];
cx q[15],q[16];
cx q[15],q[2];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[16],q[2];
cx q[15],q[16];
cx q[2],q[15];
ry(0.5*pi) q[16];
rz(0.25*pi) q[2];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
cx q[2],q[15];
rz(0.25*pi) q[16];
cx q[16],q[11];
cx q[10],q[16];
cx q[11],q[10];
rz(3.75*pi) q[16];
rz(0.25*pi) q[10];
cx q[11],q[16];
rz(3.75*pi) q[11];
rz(3.75*pi) q[16];
cx q[10],q[16];
cx q[11],q[10];
ry(0.5*pi) q[10];
cx q[16],q[11];
measure q[11] -> c[1];
rx(1.0*pi) q[10];
ry(0.5*pi) q[16];
measure q[10] -> c[0];
rx(1.0*pi) q[16];
rz(0.25*pi) q[16];
cx q[16],q[2];
rz(3.75*pi) q[2];
cx q[15],q[16];
cx q[15],q[2];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[16],q[2];
cx q[15],q[16];
cx q[2],q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[2];
rz(0.25*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[2];
ry(0.5*pi) q[16];
rz(0.25*pi) q[2];
rx(1.0*pi) q[16];
cx q[2],q[13];
rz(0.25*pi) q[16];
cx q[12],q[2];
rz(3.75*pi) q[13];
rz(0.25*pi) q[2];
cx q[12],q[13];
rz(3.75*pi) q[12];
rz(3.75*pi) q[13];
cx q[2],q[13];
cx q[12],q[2];
ry(0.5*pi) q[2];
cx q[13],q[12];
measure q[13] -> c[3];
measure q[12] -> c[11];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
cx q[2],q[15];
cx q[16],q[2];
rz(3.75*pi) q[2];
cx q[15],q[16];
cx q[15],q[2];
rz(0.25*pi) q[16];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[16],q[2];
cx q[15],q[16];
cx q[2],q[15];
ry(0.5*pi) q[16];
measure q[15] -> c[2];
measure q[2] -> c[9];
rx(1.0*pi) q[16];
measure q[16] -> c[10];
