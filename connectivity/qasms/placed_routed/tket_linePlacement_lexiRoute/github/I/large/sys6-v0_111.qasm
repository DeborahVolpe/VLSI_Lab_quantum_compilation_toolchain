OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
measure q[7] -> c[10];
measure q[8] -> c[11];
measure q[9] -> c[12];
measure q[10] -> c[13];
measure q[11] -> c[14];
measure q[12] -> c[15];
rz(0.25*pi) q[0];
ry(0.5*pi) q[1];
rz(0.25*pi) q[2];
ry(0.5*pi) q[3];
rz(0.25*pi) q[4];
ry(0.5*pi) q[5];
rz(0.25*pi) q[6];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[1];
rx(1.0*pi) q[3];
rx(1.0*pi) q[5];
cx q[15],q[14];
rx(1.0*pi) q[16];
rz(0.25*pi) q[1];
rz(0.25*pi) q[3];
rz(0.25*pi) q[5];
rz(0.25*pi) q[16];
cx q[16],q[15];
cx q[14],q[16];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[16];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
cx q[16],q[15];
cx q[14],q[16];
cx q[15],q[14];
ry(0.5*pi) q[16];
cx q[14],q[15];
rx(1.0*pi) q[16];
measure q[14] -> c[0];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
cx q[16],q[0];
cx q[1],q[16];
cx q[0],q[1];
rz(3.75*pi) q[16];
cx q[0],q[16];
rz(0.25*pi) q[1];
rz(3.75*pi) q[0];
rz(3.75*pi) q[16];
cx q[1],q[16];
cx q[0],q[1];
cx q[16],q[0];
ry(0.5*pi) q[1];
rz(0.25*pi) q[0];
rx(1.0*pi) q[1];
ry(0.5*pi) q[16];
cx q[0],q[15];
rz(0.25*pi) q[1];
rx(1.0*pi) q[16];
cx q[1],q[2];
rz(0.25*pi) q[16];
cx q[16],q[0];
cx q[3],q[1];
rz(3.75*pi) q[0];
rz(3.75*pi) q[1];
cx q[2],q[3];
cx q[15],q[16];
cx q[15],q[0];
cx q[2],q[1];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
rz(3.75*pi) q[0];
rz(3.75*pi) q[1];
rz(3.75*pi) q[2];
rz(3.75*pi) q[15];
cx q[16],q[0];
cx q[3],q[1];
cx q[2],q[3];
cx q[15],q[16];
cx q[0],q[15];
cx q[1],q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[16];
cx q[15],q[0];
ry(0.5*pi) q[1];
rz(0.25*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[16];
measure q[15] -> c[1];
rz(0.25*pi) q[0];
rx(1.0*pi) q[1];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
rz(0.25*pi) q[1];
cx q[16],q[2];
cx q[3],q[4];
cx q[1],q[16];
cx q[5],q[3];
cx q[2],q[1];
rz(3.75*pi) q[3];
cx q[4],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[1];
cx q[2],q[16];
cx q[4],q[3];
rz(0.25*pi) q[5];
rz(3.75*pi) q[2];
rz(3.75*pi) q[3];
rz(3.75*pi) q[4];
rz(3.75*pi) q[16];
cx q[1],q[16];
cx q[5],q[3];
cx q[2],q[1];
cx q[4],q[5];
ry(0.5*pi) q[1];
cx q[16],q[2];
cx q[3],q[4];
ry(0.5*pi) q[5];
rx(1.0*pi) q[1];
rz(0.25*pi) q[2];
ry(0.5*pi) q[3];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
ry(0.5*pi) q[16];
cx q[2],q[0];
rz(0.25*pi) q[1];
rx(1.0*pi) q[3];
ry(0.5*pi) q[5];
rx(1.0*pi) q[16];
cx q[1],q[4];
rz(0.25*pi) q[3];
rx(1.0*pi) q[5];
rz(0.25*pi) q[16];
cx q[3],q[1];
cx q[16],q[2];
rz(0.25*pi) q[5];
cx q[0],q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[2];
cx q[4],q[3];
cx q[0],q[2];
cx q[4],q[1];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
rz(3.75*pi) q[0];
rz(3.75*pi) q[1];
rz(3.75*pi) q[2];
rz(3.75*pi) q[4];
cx q[3],q[1];
cx q[16],q[2];
cx q[0],q[16];
cx q[4],q[3];
cx q[2],q[0];
cx q[1],q[4];
ry(0.5*pi) q[3];
ry(0.5*pi) q[16];
cx q[0],q[2];
ry(0.5*pi) q[1];
rx(1.0*pi) q[3];
rz(0.25*pi) q[4];
rx(1.0*pi) q[16];
measure q[0] -> c[2];
rx(1.0*pi) q[1];
rz(0.25*pi) q[2];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
rz(0.25*pi) q[1];
cx q[3],q[6];
cx q[16],q[4];
cx q[1],q[16];
cx q[5],q[3];
cx q[4],q[1];
rz(3.75*pi) q[3];
cx q[6],q[5];
rz(3.75*pi) q[16];
rz(0.25*pi) q[1];
cx q[6],q[3];
cx q[4],q[16];
rz(0.25*pi) q[5];
rz(3.75*pi) q[3];
rz(3.75*pi) q[4];
rz(3.75*pi) q[6];
rz(3.75*pi) q[16];
cx q[1],q[16];
cx q[5],q[3];
cx q[4],q[1];
cx q[6],q[5];
ry(0.5*pi) q[1];
cx q[3],q[6];
cx q[16],q[4];
ry(0.5*pi) q[5];
rx(1.0*pi) q[1];
ry(0.5*pi) q[3];
rz(0.25*pi) q[4];
rx(1.0*pi) q[5];
rz(0.25*pi) q[6];
ry(0.5*pi) q[16];
rz(0.25*pi) q[1];
cx q[4],q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[16];
cx q[1],q[6];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
cx q[3],q[1];
cx q[16],q[4];
rz(3.75*pi) q[1];
cx q[2],q[16];
cx q[6],q[3];
rz(3.75*pi) q[4];
cx q[6],q[1];
cx q[2],q[4];
rz(0.25*pi) q[3];
rz(0.25*pi) q[16];
rz(3.75*pi) q[1];
rz(3.75*pi) q[2];
rz(3.75*pi) q[4];
rz(3.75*pi) q[6];
cx q[3],q[1];
cx q[16],q[4];
cx q[2],q[16];
cx q[6],q[3];
cx q[1],q[6];
cx q[4],q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[16];
measure q[1] -> c[7];
cx q[2],q[4];
rx(1.0*pi) q[3];
rz(0.25*pi) q[6];
rx(1.0*pi) q[16];
measure q[2] -> c[3];
rz(0.25*pi) q[4];
ry(0.5*pi) q[16];
cx q[6],q[4];
rx(1.0*pi) q[16];
rz(0.25*pi) q[16];
cx q[16],q[6];
cx q[4],q[16];
rz(3.75*pi) q[6];
cx q[4],q[6];
rz(0.25*pi) q[16];
rz(3.75*pi) q[4];
rz(3.75*pi) q[6];
cx q[16],q[6];
cx q[4],q[16];
cx q[6],q[4];
ry(0.5*pi) q[16];
cx q[4],q[6];
rx(1.0*pi) q[16];
measure q[4] -> c[4];
measure q[6] -> c[5];
cx q[16],q[5];
measure q[16] -> c[6];
cx q[3],q[5];
measure q[3] -> c[8];
measure q[5] -> c[9];
