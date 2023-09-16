OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[2];
rx(pi) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
measure q[2] -> c[0];
measure q[3] -> c[1];
