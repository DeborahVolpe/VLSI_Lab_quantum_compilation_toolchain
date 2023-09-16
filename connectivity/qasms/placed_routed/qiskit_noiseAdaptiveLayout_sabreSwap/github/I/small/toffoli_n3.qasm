OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
rx(pi) q[0];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cx q[1],q[2];
rz(-pi/4) q[2];
cx q[0],q[2];
rz(pi/4) q[2];
cx q[1],q[2];
rz(-pi/4) q[1];
rz(-pi/4) q[2];
cx q[0],q[2];
cx q[0],q[1];
rz(-pi/4) q[1];
cx q[0],q[1];
rz(pi/4) q[0];
rz(pi/2) q[1];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
