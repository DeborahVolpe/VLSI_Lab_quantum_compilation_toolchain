OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
ry(pi/2)  q[0];
rx(pi)  q[2];
rx(pi)  q[0];
ry(pi/2)  q[2];
cx q[0], q[1];
rx(pi)  q[2];
ry(pi/2)  q[0];
ry(pi/2)  q[1];
rx(pi)  q[0];
rx(pi)  q[1];
ry(pi/2)  q[0];
cx q[2], q[1];
rx(pi)  q[0];
ry(pi/2)  q[1];
ry(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[2];
ry(pi/2)  q[1];
rz(0.0)  q[2];
rx(pi)  q[1];
rx(pi/2)  q[2];
rz(2.56159265358979)  q[2];
rx(pi/2)  q[2];
rz(3*pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cx q[2], q[1];
ry(pi/2)  q[1];
ry(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[2];
cx q[0], q[1];
rz(0.0)  q[2];
ry(pi/2)  q[0];
rx(pi/2)  q[2];
rx(pi)  q[0];
rz(3.72159265358979)  q[2];
rx(pi/2)  q[2];
rz(3*pi)  q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

