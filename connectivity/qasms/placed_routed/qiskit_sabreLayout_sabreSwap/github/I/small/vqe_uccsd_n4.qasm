OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi) q[16];
ry(pi) q[16];
ry(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
ry(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
ry(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(2.151746) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
cx q[12],q[11];
rz(1.995482) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi) q[12];
cx q[12],q[11];
rz(1.995482) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[12];
cx q[7],q[16];
ry(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(4.332582) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(4.332582) q[11];
cx q[12],q[11];
ry(pi) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[16],q[12];
rz(0.461922) q[12];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi) q[12];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
cx q[16],q[12];
rz(0.461922) q[12];
cx q[16],q[12];
ry(pi) q[12];
ry(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(1.086976) q[11];
cx q[12],q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi) q[11];
cx q[16],q[12];
cx q[7],q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
cx q[12],q[11];
rz(1.086976) q[11];
cx q[12],q[11];
ry(pi) q[11];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
cx q[7],q[16];
ry(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
rz(2.258394) q[12];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi) q[12];
cx q[7],q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
cx q[16],q[12];
rz(2.258394) q[12];
cx q[16],q[12];
ry(pi) q[12];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[7],q[16];
rz(1.228531) q[16];
cx q[7],q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi) q[16];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi) q[7];
cx q[7],q[16];
rz(1.228531) q[16];
cx q[7],q[16];
ry(pi) q[16];
ry(pi) q[7];
measure q[11] -> c[0];
measure q[12] -> c[1];
measure q[16] -> c[2];
measure q[7] -> c[3];
