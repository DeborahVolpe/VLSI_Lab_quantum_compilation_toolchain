OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
rz(pi/4) q[0];
rz(pi/4) q[1];
rz(pi/4) q[2];
rz(pi/4) q[4];
cx q[3],q[5];
rz(pi/4) q[3];
cx q[4],q[3];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
cx q[5],q[4];
cx q[3],q[5];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(-pi/4) q[3];
rz(-pi/4) q[4];
rz(pi/4) q[5];
cx q[5],q[4];
cx q[3],q[5];
cx q[4],q[3];
rz(pi/4) q[3];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[4],q[5];
rz(pi/4) q[4];
cx q[4],q[3];
rz(pi/4) q[5];
cx q[5],q[0];
ry(pi/2) q[6];
rx(pi) q[6];
rz(pi/4) q[6];
cx q[6],q[4];
cx q[3],q[6];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(-pi/4) q[3];
rz(-pi/4) q[4];
rz(pi/4) q[6];
cx q[6],q[4];
cx q[3],q[6];
cx q[4],q[3];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[6],q[7];
rz(pi/4) q[6];
ry(pi/2) q[7];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[5];
cx q[0],q[7];
rz(-pi/4) q[5];
cx q[0],q[5];
rz(-pi/4) q[0];
rz(-pi/4) q[5];
rz(pi/4) q[7];
cx q[7],q[5];
cx q[0],q[7];
cx q[5],q[0];
rz(pi/4) q[0];
rx(pi) q[5];
rz(pi/4) q[5];
cx q[6],q[0];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[6];
cx q[0],q[7];
rz(-pi/4) q[6];
cx q[0],q[6];
rz(-pi/4) q[0];
rz(-pi/4) q[6];
rz(pi/4) q[7];
cx q[7],q[6];
cx q[0],q[7];
cx q[6],q[0];
rz(pi/4) q[0];
rz(pi/4) q[6];
cx q[6],q[0];
ry(pi/2) q[7];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[2];
ry(pi/2) q[8];
rx(pi) q[8];
rz(pi/4) q[8];
cx q[8],q[6];
cx q[0],q[8];
rz(-pi/4) q[6];
cx q[0],q[6];
rz(-pi/4) q[0];
rz(-pi/4) q[6];
rz(pi/4) q[8];
cx q[8],q[6];
cx q[0],q[8];
cx q[6],q[0];
ry(pi/2) q[6];
rx(pi) q[6];
rz(pi/4) q[6];
ry(pi/2) q[8];
rx(pi) q[8];
cx q[8],q[9];
rz(pi/4) q[8];
ry(pi/2) q[9];
rx(pi) q[9];
rz(pi/4) q[9];
cx q[9],q[7];
cx q[2],q[9];
rz(-pi/4) q[7];
cx q[2],q[7];
rz(-pi/4) q[2];
rz(-pi/4) q[7];
rz(pi/4) q[9];
cx q[9],q[7];
cx q[2],q[9];
cx q[7],q[2];
rz(pi/4) q[2];
rz(pi/4) q[7];
cx q[8],q[2];
ry(pi/2) q[9];
rx(pi) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(pi/4) q[9];
cx q[9],q[8];
cx q[2],q[9];
rz(-pi/4) q[8];
cx q[2],q[8];
rz(-pi/4) q[2];
rz(-pi/4) q[8];
rz(pi/4) q[9];
cx q[9],q[8];
cx q[2],q[9];
cx q[8],q[2];
rz(pi/4) q[2];
rz(pi/4) q[8];
cx q[8],q[2];
ry(pi/2) q[9];
rx(pi) q[9];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi/4) q[10];
cx q[10],q[8];
cx q[2],q[10];
rz(pi/4) q[10];
rz(-pi/4) q[8];
cx q[2],q[8];
rz(-pi/4) q[2];
rz(-pi/4) q[8];
cx q[10],q[8];
cx q[2],q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[10],q[9];
ry(pi/2) q[10];
rx(pi) q[10];
rz(pi/4) q[10];
cx q[8],q[2];
rz(pi/4) q[9];
cx q[9],q[1];
cx q[10],q[9];
cx q[1],q[10];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[1],q[9];
rz(-pi/4) q[1];
rz(-pi/4) q[9];
cx q[10],q[9];
cx q[1],q[10];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[9],q[1];
rx(pi) q[11];
cx q[3],q[11];
cx q[4],q[11];
cx q[0],q[11];
rz(pi/4) q[0];
rx(pi) q[11];
cx q[2],q[11];
rx(pi) q[11];
cx q[1],q[11];
rz(pi/4) q[1];
rx(pi) q[11];
rz(pi/4) q[2];
cx q[5],q[0];
cx q[6],q[5];
cx q[0],q[6];
rz(-pi/4) q[5];
cx q[0],q[5];
rz(-pi/4) q[0];
rz(-pi/4) q[5];
rz(pi/4) q[6];
cx q[6],q[5];
cx q[0],q[6];
cx q[5],q[0];
rz(pi/4) q[0];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
ry(pi/2) q[6];
rx(pi) q[6];
rz(pi/4) q[6];
cx q[6],q[0];
cx q[5],q[6];
cx q[0],q[5];
rz(pi/4) q[5];
rz(-pi/4) q[6];
cx q[0],q[6];
rz(-pi/4) q[0];
rz(-pi/4) q[6];
cx q[5],q[6];
cx q[0],q[5];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[6],q[0];
cx q[7],q[2];
cx q[5],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(pi/4) q[12];
cx q[12],q[7];
cx q[2],q[12];
rz(pi/4) q[12];
rz(pi/4) q[5];
rz(-pi/4) q[7];
cx q[2],q[7];
rz(-pi/4) q[2];
rz(-pi/4) q[7];
cx q[12],q[7];
cx q[2],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(pi/4) q[12];
cx q[7],q[2];
rz(pi/4) q[2];
cx q[5],q[2];
cx q[12],q[5];
cx q[2],q[12];
rz(pi/4) q[12];
rz(-pi/4) q[5];
cx q[2],q[5];
rz(-pi/4) q[2];
rz(-pi/4) q[5];
cx q[12],q[5];
cx q[2],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
cx q[5],q[2];
rz(pi/4) q[2];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[2];
cx q[5],q[7];
cx q[2],q[5];
rz(pi/4) q[5];
rz(-pi/4) q[7];
cx q[2],q[7];
rz(-pi/4) q[2];
rz(-pi/4) q[7];
cx q[5],q[7];
cx q[2],q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
cx q[7],q[2];
rz(pi/4) q[2];
cx q[5],q[2];
ry(pi/2) q[7];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[5];
cx q[2],q[7];
rz(-pi/4) q[5];
cx q[2],q[5];
rz(-pi/4) q[2];
rz(-pi/4) q[5];
rz(pi/4) q[7];
cx q[7],q[5];
cx q[2],q[7];
cx q[5],q[2];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[12];
rz(pi/4) q[12];
cx q[12],q[1];
ry(pi/2) q[7];
rx(pi) q[7];
rz(pi/4) q[7];
cx q[7],q[12];
cx q[1],q[7];
rz(-pi/4) q[12];
cx q[1],q[12];
rz(-pi/4) q[1];
rz(-pi/4) q[12];
rz(pi/4) q[7];
cx q[7],q[12];
cx q[1],q[7];
cx q[12],q[1];
ry(pi/2) q[7];
rx(pi) q[7];
rx(pi) q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];
measure q[15] -> c[15];
