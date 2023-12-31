OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
rx(pi)  q[0];
rx(pi)  q[1];
ry(pi/2)  q[3];
rz(pi/4)  q[0];
rz(pi/4)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[3];
cz q[0], q[1];
cz q[2], q[3];
ry(pi/2)  q[0];
ry(pi/2)  q[1];
rz(pi/4)  q[2];
ry(pi/2)  q[3];
rx(pi)  q[0];
rx(pi)  q[1];
rx(pi)  q[3];
rz(-pi/4)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[3];
cz q[1], q[2];
swap q[0], q[1];
swap q[3], q[2];
cz q[2], q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[2];
rx(pi)  q[0];
rx(pi)  q[3];
rx(pi)  q[1];
rx(pi)  q[2];
cz q[1], q[0];
cz q[3], q[2];
rz(-pi/4)  q[1];
ry(pi/2)  q[0];
rz(-pi/4)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[0];
rx(pi)  q[2];
rz(-pi/4)  q[0];
rz(pi/4)  q[2];
ry(pi/2)  q[0];
ry(pi/2)  q[2];
rx(pi)  q[0];
rx(pi)  q[2];
cz q[1], q[0];
cz q[3], q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[0];
rx(pi)  q[2];
rz(pi/2)  q[2];
cz q[2], q[1];
ry(pi/2)  q[1];
ry(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[2];
measure q[1] -> c[0];
measure q[0] -> c[1];
measure q[3] -> c[2];
measure q[2] -> c[3];
