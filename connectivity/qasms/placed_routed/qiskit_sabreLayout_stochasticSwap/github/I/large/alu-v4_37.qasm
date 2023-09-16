OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[16];
cx q[7],q[2];
rz(pi/4) q[2];
rz(pi/4) q[7];
cx q[5],q[16];
rz(pi/4) q[16];
cx q[16],q[7];
rx(pi) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
cx q[5],q[16];
rz(-pi/4) q[16];
cx q[7],q[5];
rz(pi/4) q[5];
cx q[7],q[16];
rz(-pi/4) q[16];
cx q[5],q[16];
rz(-pi/4) q[7];
cx q[7],q[5];
cx q[16],q[7];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[13];
rz(pi/4) q[13];
cx q[13],q[2];
ry(pi/2) q[5];
rx(pi) q[5];
rz(pi/4) q[5];
cx q[5],q[13];
rz(-pi/4) q[13];
cx q[2],q[5];
cx q[2],q[13];
rz(-pi/4) q[13];
rz(-pi/4) q[2];
rz(pi/4) q[5];
cx q[5],q[13];
cx q[2],q[5];
cx q[13],q[2];
ry(pi/2) q[5];
rx(pi) q[5];
cx q[5],q[2];
measure q[13] -> c[0];
measure q[16] -> c[1];
measure q[5] -> c[2];
measure q[7] -> c[3];
measure q[2] -> c[4];
measure q[8] -> c[5];
measure q[3] -> c[6];
measure q[6] -> c[7];
measure q[1] -> c[8];
measure q[15] -> c[9];
measure q[12] -> c[10];
measure q[14] -> c[11];
measure q[11] -> c[12];
measure q[0] -> c[13];
measure q[4] -> c[14];
measure q[10] -> c[15];
