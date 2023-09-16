OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[4];
rz(pi/4)  q[3];
rz(pi/4)  q[2];
rx(pi)  q[4];
cx q[3], q[2];
cx q[5], q[4];
rz(pi/4)  q[5];
rz(-pi/4)  q[4];
cx q[5], q[4];
cx q[2], q[5];
cx q[4], q[3];
cx q[3], q[2];
cx q[5], q[4];
rz(-pi/4)  q[3];
rz(-pi/4)  q[2];
rz(-pi/4)  q[5];
rz(pi/4)  q[4];
cx q[3], q[2];
cx q[5], q[4];
rz(pi/2)  q[4];
cx q[4], q[3];
ry(pi/2)  q[4];
rx(pi)  q[4];
measure q[3] -> c[0];
measure q[2] -> c[1];
measure q[5] -> c[2];
measure q[4] -> c[3];
