OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[2];
ry(pi/2)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[4];
rx(pi)  q[3];
rz(-pi/2)  q[4];
ry(pi/2)  q[3];
ry(pi)  q[4];
rx(pi)  q[3];
rx(pi/2)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(pi/4)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
rx(pi)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(-pi/4)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[4];
rx(pi)  q[3];
rx(pi)  q[4];
ry(pi/2)  q[3];
rz(-pi/2)  q[4];
rx(pi)  q[3];
ry(pi)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rx(pi/2)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(pi/4)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
rx(pi)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(-pi/4)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
rx(pi)  q[4];
ry(pi/2)  q[3];
ry(pi/2)  q[4];
rx(pi)  q[3];
rx(pi)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rx(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
measure q[4] -> c[0];
measure q[3] -> c[1];

