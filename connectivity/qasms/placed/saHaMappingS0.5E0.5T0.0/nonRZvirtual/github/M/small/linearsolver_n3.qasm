OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[3];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rz(pi)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
rx(pi/2)  q[3];
cz q[1], q[0];
rz(2*pi)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
rz(3*pi)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[0];
rx(pi)  q[0];
cz q[3], q[0];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[0];
rz(0.0)  q[3];
rx(pi)  q[0];
rx(pi/2)  q[3];
ry(pi/2)  q[0];
rz(2.56159265358979)  q[3];
rx(pi)  q[0];
rx(pi/2)  q[3];
ry(pi/2)  q[0];
rz(3*pi)  q[3];
rx(pi)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[3], q[0];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[0];
rz(0.0)  q[3];
rx(pi)  q[0];
rx(pi/2)  q[3];
ry(pi/2)  q[0];
rz(3.72159265358979)  q[3];
rx(pi)  q[0];
rx(pi/2)  q[3];
cz q[1], q[0];
rz(3*pi)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[1];
rx(pi)  q[0];
measure q[1] -> c[0];
measure q[0] -> c[1];
measure q[3] -> c[2];

