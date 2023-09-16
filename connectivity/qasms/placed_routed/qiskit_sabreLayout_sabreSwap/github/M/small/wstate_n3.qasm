OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[3];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(5.0522227) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/2) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[1],q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[1],q[3];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[3];
rx(pi) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
measure q[2] -> c[0];
measure q[1] -> c[1];
measure q[3] -> c[2];
