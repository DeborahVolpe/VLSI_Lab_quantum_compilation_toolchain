OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[16];
rz(pi/4) q[3];
rz(pi/4) q[4];
rz(pi/4) q[6];
cx q[6],q[3];
rz(pi/4) q[14];
cx q[14],q[4];
ry(pi/2) q[16];
rx(pi) q[16];
rz(pi/4) q[16];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[4],q[16];
rz(pi/4) q[16];
cx q[4],q[14];
rz(-pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[4];
cx q[4],q[16];
cx q[14],q[4];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[14],q[6];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(pi/4) q[16];
cx q[3],q[14];
rz(pi/4) q[14];
rz(pi/4) q[4];
rz(-pi/4) q[6];
cx q[3],q[6];
rz(-pi/4) q[3];
rz(-pi/4) q[6];
cx q[14],q[6];
cx q[3],q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[14],q[4];
cx q[16],q[14];
rz(-pi/4) q[14];
cx q[4],q[16];
rz(pi/4) q[16];
cx q[4],q[14];
rz(-pi/4) q[14];
cx q[16],q[14];
rz(-pi/4) q[4];
cx q[4],q[16];
cx q[14],q[4];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
ry(pi/2) q[16];
rx(pi) q[16];
rz(pi/4) q[16];
rz(pi/4) q[4];
cx q[6],q[3];
rz(pi/4) q[3];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[14],q[6];
cx q[3],q[14];
rz(pi/4) q[14];
rz(-pi/4) q[6];
cx q[3],q[6];
rz(-pi/4) q[3];
rz(-pi/4) q[6];
cx q[14],q[6];
cx q[3],q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[6],q[3];
cx q[6],q[3];
rz(pi/4) q[3];
cx q[4],q[3];
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
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[4];
ry(pi/2) q[6];
rx(pi) q[6];
cx q[6],q[3];
rz(pi/4) q[3];
cx q[16],q[3];
rz(pi/4) q[6];
cx q[14],q[6];
cx q[4],q[14];
rz(-pi/4) q[14];
cx q[6],q[4];
rz(pi/4) q[4];
cx q[6],q[14];
rz(-pi/4) q[14];
cx q[4],q[14];
rz(-pi/4) q[6];
cx q[6],q[4];
cx q[14],q[6];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[14],q[16];
rz(-pi/4) q[16];
cx q[3],q[14];
rz(pi/4) q[14];
cx q[3],q[16];
rz(-pi/4) q[16];
cx q[14],q[16];
rz(-pi/4) q[3];
cx q[3],q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[16],q[3];
rz(pi/4) q[16];
rz(pi/4) q[3];
cx q[16],q[3];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[4];
rz(pi/4) q[6];
cx q[14],q[6];
cx q[4],q[14];
rz(-pi/4) q[14];
cx q[6],q[4];
rz(pi/4) q[4];
cx q[6],q[14];
rz(-pi/4) q[14];
cx q[4],q[14];
rz(-pi/4) q[6];
cx q[6],q[4];
cx q[14],q[6];
ry(pi/2) q[14];
rx(pi) q[14];
rz(pi/4) q[14];
cx q[14],q[16];
rz(-pi/4) q[16];
cx q[3],q[14];
rz(pi/4) q[14];
cx q[3],q[16];
rz(-pi/4) q[16];
cx q[14],q[16];
rz(-pi/4) q[3];
cx q[3],q[14];
ry(pi/2) q[14];
rx(pi) q[14];
cx q[16],q[3];
ry(pi/2) q[16];
rx(pi) q[16];
rz(pi/4) q[16];
rz(pi/4) q[3];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[4];
rz(pi/4) q[6];
cx q[6],q[3];
cx q[4],q[6];
cx q[3],q[4];
rz(pi/4) q[4];
rz(-pi/4) q[6];
cx q[3],q[6];
rz(-pi/4) q[3];
rz(-pi/4) q[6];
cx q[4],q[6];
cx q[3],q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[4];
cx q[6],q[3];
rz(pi/4) q[3];
cx q[4],q[3];
cx q[16],q[4];
cx q[3],q[16];
rz(pi/4) q[16];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(-pi/4) q[3];
rz(-pi/4) q[4];
cx q[16],q[4];
cx q[3],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(pi/4) q[16];
cx q[4],q[3];
rz(pi/4) q[3];
cx q[16],q[3];
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[4];
cx q[4],q[16];
rz(-pi/4) q[16];
cx q[3],q[4];
cx q[3],q[16];
rz(-pi/4) q[16];
rz(-pi/4) q[3];
rz(pi/4) q[4];
cx q[4],q[16];
cx q[3],q[4];
cx q[16],q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(pi/4) q[3];
ry(pi/2) q[4];
rx(pi) q[4];
cx q[6],q[4];
cx q[16],q[4];
rz(pi/4) q[16];
rz(pi/4) q[4];
cx q[4],q[16];
cx q[3],q[4];
cx q[16],q[3];
rz(pi/4) q[3];
rz(-pi/4) q[4];
cx q[16],q[4];
rz(-pi/4) q[16];
rz(-pi/4) q[4];
cx q[3],q[4];
cx q[16],q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cx q[4],q[16];
cx q[3],q[4];
rx(pi) q[4];
cx q[4],q[6];
cx q[4],q[16];
cx q[6],q[3];
measure q[3] -> c[0];
measure q[16] -> c[1];
measure q[6] -> c[2];
measure q[4] -> c[3];
measure q[14] -> c[4];
measure q[12] -> c[5];
measure q[5] -> c[6];
measure q[10] -> c[7];
measure q[1] -> c[8];
measure q[7] -> c[9];
measure q[13] -> c[10];
measure q[9] -> c[11];
measure q[2] -> c[12];
measure q[15] -> c[13];
measure q[11] -> c[14];
measure q[8] -> c[15];
