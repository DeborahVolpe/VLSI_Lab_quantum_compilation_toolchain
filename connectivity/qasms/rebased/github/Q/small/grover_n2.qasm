OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
ry(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[0];
rx(pi) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
ry(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
