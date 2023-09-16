OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[5];
ry(pi/2) q[5];
rx(pi) q[5];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[9];
rx(pi) q[9];
ry(pi/2) q[10];
rx(pi) q[10];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
cx q[5],q[16];
rz(-pi/2) q[5];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[7],q[16];
cx q[10],q[16];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[10],q[16];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
cx q[7],q[16];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
cx q[7],q[16];
cx q[10],q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[10],q[16];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
cx q[10],q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[9],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[9],q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[10],q[9];
ry(pi/2) q[9];
rx(pi) q[9];
cx q[9],q[16];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[9];
measure q[10] -> c[0];
measure q[9] -> c[1];
measure q[16] -> c[2];
measure q[7] -> c[3];
measure q[5] -> c[4];
