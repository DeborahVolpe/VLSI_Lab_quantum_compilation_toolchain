OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[4];
ry(pi/2)  q[15];
ry(pi/2)  q[16];
ry(pi/2)  q[13];
rx(pi)  q[15];
rx(pi)  q[16];
rx(pi)  q[13];
rz(3*pi/4)  q[16];
rz(3*pi/4)  q[13];
cx q[15], q[14];
rx(pi/2)  q[16];
rx(-pi/4)  q[15];
ry(-pi/2)  q[14];
rx(pi/2)  q[13];
rz(3*pi/2)  q[16];
ry(-pi/2)  q[15];
rz(pi/4)  q[14];
rz(3*pi/2)  q[13];
rx(pi/2)  q[16];
rz(pi/4)  q[15];
rx(pi/2)  q[14];
rx(pi/2)  q[13];
rz(3*pi)  q[16];
rx(pi/2)  q[15];
rz(3*pi/2)  q[14];
rz(3*pi)  q[13];
rx(pi/2)  q[16];
rz(3*pi/2)  q[15];
rx(pi/2)  q[14];
rx(pi/2)  q[13];
rx(pi/2)  q[15];
rz(3*pi)  q[14];
rz(3*pi)  q[15];
cx q[13], q[14];
ry(pi/2)  q[14];
rx(pi/4)  q[13];
cx q[16], q[15];
ry(pi/2)  q[15];
rx(pi/4)  q[16];
cx q[14], q[13];
rx(-pi/2)  q[14];
cx q[15], q[16];
rx(-pi/2)  q[15];
rz(pi/2)  q[14];
rz(pi/2)  q[15];
cx q[13], q[14];
rz(pi)  q[14];
rz(pi)  q[13];
cx q[16], q[15];
rz(pi)  q[15];
rz(pi)  q[16];
rx(pi/2)  q[14];
rx(pi/2)  q[13];
rx(pi/2)  q[15];
rx(pi/2)  q[16];
rz(3*pi/2)  q[14];
rz(3*pi/2)  q[13];
rz(3*pi/2)  q[15];
rz(3*pi/2)  q[16];
rx(pi/2)  q[14];
rx(pi/2)  q[13];
rx(pi/2)  q[15];
rx(pi/2)  q[16];
rz(4*pi)  q[14];
rz(7*pi/2)  q[13];
rz(4*pi)  q[15];
rz(7*pi/2)  q[16];
ry(pi/2)  q[14];
ry(pi/2)  q[15];
measure q[15] -> c[0];
measure q[16] -> c[1];
measure q[14] -> c[2];
measure q[13] -> c[3];
