OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[3];
ry(pi/2)  q[4];
ry(pi/2)  q[2];
ry(pi/2)  q[3];
rx(pi)  q[4];
rx(pi)  q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(5.654427)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[4], q[3];
ry(pi/2)  q[3];
swap q[2], q[3];
cz q[4], q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(-11.308885)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
rx(1.7132487)  q[2];
cz q[4], q[3];
rx(1.7132487)  q[4];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(-16.963312)  q[3];
rx(1.7132487)  q[3];
measure q[4] -> c[0];
measure q[3] -> c[1];
measure q[2] -> c[2];