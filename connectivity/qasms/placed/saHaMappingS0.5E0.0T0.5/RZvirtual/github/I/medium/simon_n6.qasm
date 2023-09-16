OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[6];
ry(pi/2)  q[6];
ry(pi/2)  q[7];
ry(pi/2)  q[4];
rz(pi)  q[5];
rx(pi)  q[6];
rx(pi)  q[7];
rx(pi)  q[4];
rx(pi/2)  q[5];
rz(2*pi)  q[5];
cx q[4], q[3];
rx(pi/2)  q[5];
rz(3*pi)  q[5];
cx q[4], q[5];
ry(pi/2)  q[4];
ry(pi/2)  q[5];
rx(pi)  q[4];
rx(pi)  q[5];
cx q[7], q[5];
rz(-pi/4)  q[5];
cx q[6], q[5];
rz(pi/4)  q[5];
cx q[7], q[5];
rz(pi/4)  q[7];
rz(-pi/4)  q[5];
cx q[6], q[5];
cx q[6], q[7];
rz(pi/4)  q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[7];
ry(pi/2)  q[5];
cx q[6], q[7];
rx(pi)  q[5];
rz(pi)  q[6];
rz(pi)  q[7];
ry(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rx(pi)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[7];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi)  q[6];
rz(3*pi)  q[7];
cx q[7], q[5];
rz(-pi/4)  q[5];
cx q[6], q[5];
rz(pi/4)  q[5];
cx q[7], q[5];
rz(pi/4)  q[7];
rz(-pi/4)  q[5];
cx q[6], q[5];
cx q[6], q[7];
rz(pi/4)  q[5];
rz(pi/4)  q[6];
rz(-pi/4)  q[7];
ry(pi/2)  q[5];
cx q[6], q[7];
rx(pi)  q[5];
rz(pi)  q[6];
rz(pi)  q[7];
rz(pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[7];
rz(2*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[7];
rz(3*pi)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[7];
rx(pi)  q[6];
rx(pi)  q[7];
measure q[6] -> c[0];
measure q[7] -> c[1];
measure q[4] -> c[2];
measure q[5] -> c[3];
measure q[3] -> c[4];
measure q[8] -> c[5];

