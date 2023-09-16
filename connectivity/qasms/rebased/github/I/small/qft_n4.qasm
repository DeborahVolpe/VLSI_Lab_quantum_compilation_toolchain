OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(pi/4) q[1];
cx q[1],q[0];
rz(-pi/4) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rx(pi) q[2];
rz(pi/8) q[2];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q[2],q[0];
rz(pi/8) q[0];
rz(pi/4) q[2];
cx q[2],q[1];
rz(-pi/4) q[1];
cx q[2],q[1];
rz(pi/4) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(pi/16) q[3];
cx q[3],q[0];
rz(-pi/16) q[0];
cx q[3],q[0];
rz(pi/16) q[0];
rz(pi/8) q[3];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q[3],q[1];
rz(pi/8) q[1];
rz(pi/4) q[3];
cx q[3],q[2];
rz(-pi/4) q[2];
cx q[3],q[2];
rz(pi/4) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
