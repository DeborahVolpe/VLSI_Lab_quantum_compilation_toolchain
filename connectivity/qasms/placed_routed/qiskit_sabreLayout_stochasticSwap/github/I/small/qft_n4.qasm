OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
rz(pi/4) q[4];
rx(pi) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
cx q[4],q[7];
rz(-pi/4) q[7];
cx q[4],q[7];
ry(pi/2) q[4];
rx(pi) q[4];
rz(pi/4) q[7];
rx(pi) q[11];
rz(pi/8) q[11];
cx q[11],q[7];
rz(-pi/8) q[7];
cx q[11],q[7];
rz(pi/4) q[11];
cx q[11],q[4];
rz(-pi/4) q[4];
cx q[11],q[4];
ry(pi/2) q[11];
rx(pi) q[11];
rz(pi/4) q[4];
rz(pi/8) q[7];
rz(pi/16) q[15];
cx q[15],q[7];
rz(-pi/16) q[7];
cx q[15],q[7];
rz(pi/8) q[15];
cx q[15],q[4];
rz(-pi/8) q[4];
cx q[15],q[4];
rz(pi/4) q[15];
cx q[15],q[11];
rz(-pi/4) q[11];
cx q[15],q[11];
rz(pi/4) q[11];
ry(pi/2) q[15];
rx(pi) q[15];
rz(pi/8) q[4];
rz(pi/16) q[7];
measure q[7] -> c[0];
measure q[4] -> c[1];
measure q[11] -> c[2];
measure q[15] -> c[3];
