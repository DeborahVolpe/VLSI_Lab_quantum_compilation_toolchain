OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[6];
ry(pi/2)  q[9];
ry(pi/2)  q[10];
ry(pi/2)  q[12];
rz(pi)  q[11];
rx(pi)  q[9];
rx(pi)  q[10];
rx(pi)  q[12];
rx(pi/2)  q[11];
rz(2*pi)  q[11];
cx q[12], q[13];
rx(pi/2)  q[11];
rz(3*pi)  q[11];
cx q[12], q[11];
ry(pi/2)  q[12];
ry(pi/2)  q[11];
rx(pi)  q[12];
rx(pi)  q[11];
cx q[10], q[11];
rz(-pi/4)  q[11];
cx q[9], q[11];
rz(pi/4)  q[11];
cx q[10], q[11];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
cx q[9], q[11];
rz(pi/4)  q[11];
cx q[9], q[10];
rz(pi/4)  q[9];
rz(-pi/4)  q[10];
ry(pi/2)  q[11];
rx(pi)  q[11];
cx q[9], q[10];
rz(pi)  q[9];
rz(pi)  q[10];
ry(pi/2)  q[11];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rx(pi)  q[11];
rz(2*pi)  q[9];
rz(2*pi)  q[10];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rz(3*pi)  q[9];
rz(3*pi)  q[10];
cx q[10], q[11];
rz(-pi/4)  q[11];
cx q[9], q[11];
rz(pi/4)  q[11];
cx q[10], q[11];
rz(pi/4)  q[10];
rz(-pi/4)  q[11];
cx q[9], q[11];
rz(pi/4)  q[11];
cx q[9], q[10];
rz(pi/4)  q[9];
rz(-pi/4)  q[10];
ry(pi/2)  q[11];
rx(pi)  q[11];
cx q[9], q[10];
rz(pi)  q[9];
rz(pi)  q[10];
rz(pi)  q[11];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rx(pi/2)  q[11];
rz(2*pi)  q[9];
rz(2*pi)  q[10];
rz(2*pi)  q[11];
rx(pi/2)  q[9];
rx(pi/2)  q[10];
rx(pi/2)  q[11];
rz(3*pi)  q[9];
rz(3*pi)  q[10];
rz(3*pi)  q[11];
ry(pi/2)  q[9];
ry(pi/2)  q[10];
rx(pi)  q[9];
rx(pi)  q[10];
measure q[9] -> c[0];
measure q[10] -> c[1];
measure q[12] -> c[2];
measure q[11] -> c[3];
measure q[13] -> c[4];
measure q[8] -> c[5];
