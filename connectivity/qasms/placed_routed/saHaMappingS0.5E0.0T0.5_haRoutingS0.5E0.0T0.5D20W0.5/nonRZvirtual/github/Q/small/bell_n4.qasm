OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
ry(pi/2)  q[3];
ry(pi/2)  q[4];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[3];
rx(pi)  q[4];
rx(pi)  q[2];
rx(pi)  q[1];
rz(3*pi/4)  q[4];
rz(3*pi/4)  q[1];
cz q[3], q[2];
rx(pi/2)  q[4];
rx(-pi/4)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi/2)  q[4];
ry(-pi/2)  q[3];
rx(pi)  q[2];
rz(3*pi/2)  q[1];
rx(pi/2)  q[4];
rz(pi/4)  q[3];
ry(-pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi)  q[4];
rx(pi/2)  q[3];
rz(pi/4)  q[2];
rz(3*pi)  q[1];
rx(pi/2)  q[4];
rz(3*pi/2)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rz(3*pi/2)  q[2];
rz(3*pi)  q[3];
rx(pi/2)  q[2];
ry(pi/2)  q[3];
rz(3*pi)  q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi/4)  q[4];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[4];
ry(pi/2)  q[2];
rx(pi/4)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[4];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[2];
rx(pi)  q[1];
cz q[3], q[4];
rx(-pi/2)  q[3];
ry(pi/2)  q[4];
cz q[2], q[1];
rz(pi/2)  q[3];
rx(pi)  q[4];
rx(-pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rz(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[4], q[3];
ry(pi/2)  q[3];
rz(pi)  q[4];
cz q[1], q[2];
rx(pi)  q[3];
rx(pi/2)  q[4];
ry(pi/2)  q[2];
rz(pi)  q[1];
rz(pi)  q[3];
rz(3*pi/2)  q[4];
rx(pi)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(pi)  q[2];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[3];
rz(7*pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rz(3*pi/2)  q[2];
rz(7*pi/2)  q[1];
rz(4*pi)  q[3];
rx(pi/2)  q[2];
ry(pi/2)  q[3];
rz(4*pi)  q[2];
ry(pi/2)  q[2];
measure q[3] -> c[0];
measure q[4] -> c[1];
measure q[2] -> c[2];
measure q[1] -> c[3];
