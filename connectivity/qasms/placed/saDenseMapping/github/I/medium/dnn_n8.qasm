OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[8];
rx(1.1)  q[0];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[7];
ry(1.1)  q[0];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[7];
rz(1.1)  q[0];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[7];
rz(11*pi/10)  q[0];
rz(11*pi/10)  q[1];
rz(11*pi/10)  q[2];
rz(11*pi/10)  q[3];
rz(11*pi/10)  q[4];
rz(11*pi/10)  q[5];
rz(11*pi/10)  q[6];
rz(11*pi/10)  q[7];
rz(pi/4)  q[0];
rz(3*pi/4)  q[1];
rz(pi/4)  q[2];
rz(3*pi/4)  q[3];
rz(pi/4)  q[4];
rz(3*pi/4)  q[5];
rz(pi/4)  q[6];
rz(3*pi/4)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi)  q[0];
rz(4*pi)  q[1];
rz(3*pi)  q[2];
rz(4*pi)  q[3];
rz(3*pi)  q[4];
rz(4*pi)  q[5];
rz(3*pi)  q[6];
rz(4*pi)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[2];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[1], q[0];
cx q[3], q[2];
cx q[5], q[4];
cx q[7], q[6];
rx(-pi/2)  q[1];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[7];
rz(pi/2)  q[1];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[7];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rz(pi)  q[0];
rz(0.0)  q[1];
rz(pi)  q[2];
rz(0.0)  q[3];
rz(pi)  q[4];
rz(0.0)  q[5];
rz(pi)  q[6];
rz(0.0)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(11.4668131856027)  q[0];
rz(9.89601685880785)  q[1];
rz(11.4668131856027)  q[2];
rz(9.89601685880785)  q[3];
rz(11.4668131856027)  q[4];
rz(9.89601685880785)  q[5];
rz(11.4668131856027)  q[6];
rz(9.89601685880785)  q[7];
rz(pi/2)  q[0];
rz(pi/2)  q[1];
rz(pi/2)  q[2];
rz(pi/2)  q[3];
rz(pi/2)  q[4];
rz(pi/2)  q[5];
rz(pi/2)  q[6];
rz(pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(pi)  q[0];
rz(pi)  q[1];
rz(pi)  q[2];
rz(pi)  q[3];
rz(pi)  q[4];
rz(pi)  q[5];
rz(pi)  q[6];
rz(pi)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(4*pi)  q[0];
rz(3*pi)  q[1];
rz(4*pi)  q[2];
rz(3*pi)  q[3];
rz(4*pi)  q[4];
rz(3*pi)  q[5];
rz(4*pi)  q[6];
rz(3*pi)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[2];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[1], q[0];
cx q[3], q[2];
cx q[5], q[4];
cx q[7], q[6];
rx(-pi/2)  q[1];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[7];
rz(pi/2)  q[1];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[7];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rz(pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(2*pi)  q[0];
rz(2*pi)  q[1];
rz(2*pi)  q[2];
rz(2*pi)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi)  q[0];
rz(3*pi)  q[1];
rz(3*pi)  q[2];
rz(3*pi)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(9*pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(9*pi/2)  q[2];
rz(7*pi/2)  q[3];
rz(9*pi/2)  q[4];
rz(7*pi/2)  q[5];
rz(9*pi/2)  q[6];
rz(7*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[2];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[1], q[0];
cx q[3], q[2];
cx q[5], q[4];
cx q[7], q[6];
rx(-pi/2)  q[1];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[7];
rz(pi/2)  q[1];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[7];
cx q[0], q[1];
cx q[2], q[3];
cx q[4], q[5];
cx q[6], q[7];
rz(pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(7*pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(7*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(7*pi/2)  q[5];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[7];
rx(1.1)  q[0];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[7];
ry(1.1)  q[0];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[7];
rz(1.1)  q[0];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[7];
rx(1.1)  q[0];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[7];
ry(1.1)  q[0];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[7];
rz(1.1)  q[0];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[7];
rz(11*pi/10)  q[0];
rz(11*pi/10)  q[1];
rz(11*pi/10)  q[2];
rz(11*pi/10)  q[3];
rz(11*pi/10)  q[4];
rz(11*pi/10)  q[5];
rz(11*pi/10)  q[6];
rz(11*pi/10)  q[7];
rz(3*pi/4)  q[0];
rz(pi/4)  q[1];
rz(3*pi/4)  q[2];
rz(pi/4)  q[3];
rz(3*pi/4)  q[4];
rz(pi/4)  q[5];
rz(3*pi/4)  q[6];
rz(pi/4)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(4*pi)  q[0];
rz(3*pi)  q[1];
rz(4*pi)  q[2];
rz(3*pi)  q[3];
rz(4*pi)  q[4];
rz(3*pi)  q[5];
rz(4*pi)  q[6];
rz(3*pi)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rx(pi/2)  q[5];
rx(pi/2)  q[7];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[2], q[1];
cx q[4], q[3];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[2];
rx(-pi/2)  q[4];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[2];
rz(pi/2)  q[4];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rz(pi)  q[1];
rz(0.0)  q[2];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[5];
rz(0.0)  q[6];
rz(0.0)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(11.4668131856027)  q[1];
rz(9.89601685880785)  q[2];
rz(11.4668131856027)  q[3];
rz(9.89601685880785)  q[4];
rz(11.4668131856027)  q[5];
rz(9.89601685880785)  q[6];
rz(9.89601685880785)  q[0];
rz(11.4668131856027)  q[7];
rz(pi/2)  q[1];
rz(pi/2)  q[2];
rz(pi/2)  q[3];
rz(pi/2)  q[4];
rz(pi/2)  q[5];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(pi)  q[1];
rz(pi)  q[2];
rz(pi)  q[3];
rz(pi)  q[4];
rz(pi)  q[5];
rz(pi)  q[6];
rz(pi)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(4*pi)  q[1];
rz(3*pi)  q[2];
rz(4*pi)  q[3];
rz(3*pi)  q[4];
rz(4*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rz(4*pi)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rx(pi/2)  q[5];
rx(pi/2)  q[7];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[2], q[1];
cx q[4], q[3];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[2];
rx(-pi/2)  q[4];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[2];
rz(pi/2)  q[4];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rz(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(2*pi)  q[1];
rz(2*pi)  q[2];
rz(2*pi)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[0];
rz(2*pi)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi)  q[1];
rz(3*pi)  q[2];
rz(3*pi)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rz(3*pi)  q[7];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(9*pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(9*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(9*pi/2)  q[5];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[0];
rz(9*pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[3];
rx(pi/2)  q[5];
rx(pi/2)  q[7];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[2], q[1];
cx q[4], q[3];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[2];
rx(-pi/2)  q[4];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[2];
rz(pi/2)  q[4];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[1], q[2];
cx q[3], q[4];
cx q[5], q[6];
cx q[7], q[0];
rz(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(7*pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(7*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(7*pi/2)  q[5];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[0];
rz(7*pi/2)  q[7];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[0];
rx(1.1)  q[7];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[0];
ry(1.1)  q[7];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[0];
rz(1.1)  q[7];
ry(-pi/2)  q[1];
rz(pi/4)  q[2];
ry(-pi/2)  q[3];
rz(pi/4)  q[4];
ry(-pi/2)  q[5];
rz(pi/4)  q[6];
rz(pi/4)  q[0];
ry(-pi/2)  q[7];
rz(3*pi/4)  q[1];
rx(pi/2)  q[2];
rz(3*pi/4)  q[3];
rx(pi/2)  q[4];
rz(3*pi/4)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rz(3*pi/4)  q[7];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[1];
rz(3*pi)  q[2];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rx(pi/2)  q[7];
rz(4*pi)  q[1];
rx(pi/2)  q[2];
rz(4*pi)  q[3];
rx(pi/2)  q[4];
rz(4*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rz(4*pi)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rx(pi/20)  q[2];
ry(pi/2)  q[3];
rx(pi/20)  q[4];
ry(pi/2)  q[5];
rx(pi/20)  q[0];
ry(pi/2)  q[1];
rx(pi/20)  q[6];
ry(pi/2)  q[7];
cx q[3], q[2];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[6];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[1];
rx(-pi/2)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rz(pi)  q[2];
rz(0.0)  q[3];
rz(pi)  q[4];
rz(0.0)  q[5];
rz(pi)  q[0];
rz(0.0)  q[1];
rz(pi)  q[6];
rz(0.0)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(10.3672557568463)  q[2];
rz(15.0796447372310)  q[3];
rz(10.3672557568463)  q[4];
rz(15.0796447372310)  q[5];
rz(10.3672557568463)  q[0];
rz(15.0796447372310)  q[1];
rz(10.3672557568463)  q[6];
rz(15.0796447372310)  q[7];
rz(pi/4)  q[2];
ry(pi/2)  q[3];
rz(pi/4)  q[4];
ry(pi/2)  q[5];
rz(pi/4)  q[0];
ry(pi/2)  q[1];
rz(pi/4)  q[6];
ry(pi/2)  q[7];
rx(pi/2)  q[2];
rz(3*pi/4)  q[3];
rx(pi/2)  q[4];
rz(3*pi/4)  q[5];
rx(pi/2)  q[0];
rz(3*pi/4)  q[1];
rx(pi/2)  q[6];
rz(3*pi/4)  q[7];
rz(3*pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[0];
rx(pi/2)  q[1];
rz(3*pi/2)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[0];
rz(3*pi/2)  q[1];
rx(pi/2)  q[6];
rz(3*pi/2)  q[7];
rz(3*pi)  q[2];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rx(pi/2)  q[5];
rz(3*pi)  q[0];
rx(pi/2)  q[1];
rz(3*pi)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rz(4*pi)  q[3];
rx(pi/2)  q[4];
rz(4*pi)  q[5];
rx(pi/2)  q[0];
rz(4*pi)  q[1];
rx(pi/2)  q[6];
rz(4*pi)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rx(pi/20)  q[2];
ry(pi/2)  q[3];
rx(pi/20)  q[4];
ry(pi/2)  q[5];
rx(pi/20)  q[0];
ry(pi/2)  q[1];
rx(pi/20)  q[6];
ry(pi/2)  q[7];
cx q[3], q[2];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[6];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[1];
rx(-pi/2)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rz(pi)  q[2];
rz(0.0)  q[3];
rz(pi)  q[4];
rz(0.0)  q[5];
rz(pi)  q[0];
rz(0.0)  q[1];
rz(pi)  q[6];
rz(0.0)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(10.3672557568463)  q[2];
rz(15.0796447372310)  q[3];
rz(10.3672557568463)  q[4];
rz(15.0796447372310)  q[5];
rz(10.3672557568463)  q[0];
rz(15.0796447372310)  q[1];
rz(10.3672557568463)  q[6];
rz(15.0796447372310)  q[7];
ry(-pi/2)  q[2];
rz(pi/4)  q[3];
ry(-pi/2)  q[4];
rz(pi/4)  q[5];
ry(-pi/2)  q[0];
rz(pi/4)  q[1];
ry(-pi/2)  q[6];
rz(pi/4)  q[7];
rz(3*pi/4)  q[2];
rx(pi/2)  q[3];
rz(3*pi/4)  q[4];
rx(pi/2)  q[5];
rz(3*pi/4)  q[0];
rx(pi/2)  q[1];
rz(3*pi/4)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[0];
rz(3*pi/2)  q[1];
rx(pi/2)  q[6];
rz(3*pi/2)  q[7];
rz(3*pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[0];
rx(pi/2)  q[1];
rz(3*pi/2)  q[6];
rx(pi/2)  q[7];
rx(pi/2)  q[2];
rz(3*pi)  q[3];
rx(pi/2)  q[4];
rz(3*pi)  q[5];
rx(pi/2)  q[0];
rz(3*pi)  q[1];
rx(pi/2)  q[6];
rz(3*pi)  q[7];
rz(4*pi)  q[2];
rx(pi/2)  q[3];
rz(4*pi)  q[4];
rx(pi/2)  q[5];
rz(4*pi)  q[0];
rx(pi/2)  q[1];
rz(4*pi)  q[6];
rx(pi/2)  q[7];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rx(pi/20)  q[3];
ry(pi/2)  q[4];
rx(pi/20)  q[1];
ry(pi/2)  q[2];
rx(pi/20)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(pi/20)  q[7];
cx q[4], q[3];
cx q[2], q[1];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[4];
rx(-pi/2)  q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[4];
rz(pi/2)  q[2];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[1];
rz(0.0)  q[2];
rz(pi)  q[5];
rz(0.0)  q[6];
rz(0.0)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(10.3672557568463)  q[3];
rz(15.0796447372310)  q[4];
rz(10.3672557568463)  q[1];
rz(15.0796447372310)  q[2];
rz(10.3672557568463)  q[5];
rz(15.0796447372310)  q[6];
rz(15.0796447372310)  q[0];
rz(10.3672557568463)  q[7];
rz(pi/4)  q[3];
ry(pi/2)  q[4];
rz(pi/4)  q[1];
ry(pi/2)  q[2];
rz(pi/4)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rz(pi/4)  q[7];
rx(pi/2)  q[3];
rz(3*pi/4)  q[4];
rx(pi/2)  q[1];
rz(3*pi/4)  q[2];
rx(pi/2)  q[5];
rz(3*pi/4)  q[6];
rz(3*pi/4)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rz(3*pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rx(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi)  q[3];
rx(pi/2)  q[4];
rz(3*pi)  q[1];
rx(pi/2)  q[2];
rz(3*pi)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rz(3*pi)  q[7];
rx(pi/2)  q[3];
rz(4*pi)  q[4];
rx(pi/2)  q[1];
rz(4*pi)  q[2];
rx(pi/2)  q[5];
rz(4*pi)  q[6];
rz(4*pi)  q[0];
rx(pi/2)  q[7];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rx(pi/20)  q[3];
ry(pi/2)  q[4];
rx(pi/20)  q[1];
ry(pi/2)  q[2];
rx(pi/20)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(pi/20)  q[7];
cx q[4], q[3];
cx q[2], q[1];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[4];
rx(-pi/2)  q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[4];
rz(pi/2)  q[2];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[1];
rz(0.0)  q[2];
rz(pi)  q[5];
rz(0.0)  q[6];
rz(0.0)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(10.3672557568463)  q[3];
rz(15.0796447372310)  q[4];
rz(10.3672557568463)  q[1];
rz(15.0796447372310)  q[2];
rz(10.3672557568463)  q[5];
rz(15.0796447372310)  q[6];
rz(15.0796447372310)  q[0];
rz(10.3672557568463)  q[7];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[0];
rx(1.1)  q[7];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[0];
ry(1.1)  q[7];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[0];
rz(1.1)  q[7];
rz(11*pi/10)  q[3];
rz(11*pi/10)  q[4];
rz(11*pi/10)  q[1];
rz(11*pi/10)  q[2];
rz(11*pi/10)  q[5];
rz(11*pi/10)  q[6];
rz(11*pi/10)  q[0];
rz(11*pi/10)  q[7];
rz(3*pi/4)  q[3];
rz(pi/4)  q[4];
rz(3*pi/4)  q[1];
rz(pi/4)  q[2];
rz(3*pi/4)  q[5];
rz(pi/4)  q[6];
rz(pi/4)  q[0];
rz(3*pi/4)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(4*pi)  q[3];
rz(3*pi)  q[4];
rz(4*pi)  q[1];
rz(3*pi)  q[2];
rz(4*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rz(4*pi)  q[7];
rx(pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[3], q[2];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[6];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[1];
rx(-pi/2)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rz(pi)  q[2];
rz(0.0)  q[3];
rz(pi)  q[4];
rz(0.0)  q[5];
rz(pi)  q[0];
rz(0.0)  q[1];
rz(pi)  q[6];
rz(0.0)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(11.4668131856027)  q[2];
rz(9.89601685880785)  q[3];
rz(11.4668131856027)  q[4];
rz(9.89601685880785)  q[5];
rz(11.4668131856027)  q[0];
rz(9.89601685880785)  q[1];
rz(11.4668131856027)  q[6];
rz(9.89601685880785)  q[7];
rz(pi/2)  q[2];
rz(pi/2)  q[3];
rz(pi/2)  q[4];
rz(pi/2)  q[5];
rz(pi/2)  q[0];
rz(pi/2)  q[1];
rz(pi/2)  q[6];
rz(pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(pi)  q[2];
rz(pi)  q[3];
rz(pi)  q[4];
rz(pi)  q[5];
rz(pi)  q[0];
rz(pi)  q[1];
rz(pi)  q[6];
rz(pi)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(4*pi)  q[2];
rz(3*pi)  q[3];
rz(4*pi)  q[4];
rz(3*pi)  q[5];
rz(4*pi)  q[0];
rz(3*pi)  q[1];
rz(4*pi)  q[6];
rz(3*pi)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[4];
rx(pi/2)  q[0];
rx(pi/2)  q[6];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[3], q[2];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[6];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[1];
rx(-pi/2)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rz(pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(2*pi)  q[2];
rz(2*pi)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[5];
rz(2*pi)  q[0];
rz(2*pi)  q[1];
rz(2*pi)  q[6];
rz(2*pi)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi)  q[2];
rz(3*pi)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[5];
rz(3*pi)  q[0];
rz(3*pi)  q[1];
rz(3*pi)  q[6];
rz(3*pi)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(9*pi/2)  q[2];
rz(7*pi/2)  q[3];
rz(9*pi/2)  q[4];
rz(7*pi/2)  q[5];
rz(9*pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(9*pi/2)  q[6];
rz(7*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[4];
rx(pi/2)  q[0];
rx(pi/2)  q[6];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rx(2*pi/5)  q[2];
ry(pi/2)  q[3];
rx(2*pi/5)  q[4];
ry(pi/2)  q[5];
rx(2*pi/5)  q[0];
ry(pi/2)  q[1];
rx(2*pi/5)  q[6];
ry(pi/2)  q[7];
cx q[3], q[2];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[6];
rx(-pi/2)  q[3];
rx(-pi/2)  q[5];
rx(-pi/2)  q[1];
rx(-pi/2)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[7];
cx q[2], q[3];
cx q[4], q[5];
cx q[0], q[1];
cx q[6], q[7];
rz(pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(7*pi/2)  q[2];
rz(7*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(7*pi/2)  q[5];
rz(7*pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[7];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[0];
rx(1.1)  q[1];
rx(1.1)  q[6];
rx(1.1)  q[7];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[0];
ry(1.1)  q[1];
ry(1.1)  q[6];
ry(1.1)  q[7];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[0];
rz(1.1)  q[1];
rz(1.1)  q[6];
rz(1.1)  q[7];
rx(1.1)  q[2];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[5];
rx(1.1)  q[0];
rx(1.1)  q[1];
rx(1.1)  q[6];
rx(1.1)  q[7];
ry(1.1)  q[2];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[5];
ry(1.1)  q[0];
ry(1.1)  q[1];
ry(1.1)  q[6];
ry(1.1)  q[7];
rz(1.1)  q[2];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[5];
rz(1.1)  q[0];
rz(1.1)  q[1];
rz(1.1)  q[6];
rz(1.1)  q[7];
rz(11*pi/10)  q[2];
rz(11*pi/10)  q[3];
rz(11*pi/10)  q[4];
rz(11*pi/10)  q[5];
rz(11*pi/10)  q[0];
rz(11*pi/10)  q[1];
rz(11*pi/10)  q[6];
rz(11*pi/10)  q[7];
rz(3*pi/4)  q[2];
rz(pi/4)  q[3];
rz(3*pi/4)  q[4];
rz(pi/4)  q[5];
rz(3*pi/4)  q[0];
rz(pi/4)  q[1];
rz(3*pi/4)  q[6];
rz(pi/4)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[7];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[7];
rz(4*pi)  q[2];
rz(3*pi)  q[3];
rz(4*pi)  q[4];
rz(3*pi)  q[5];
rz(4*pi)  q[0];
rz(3*pi)  q[1];
rz(4*pi)  q[6];
rz(3*pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[5];
rx(pi/2)  q[1];
rx(pi/2)  q[7];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[4], q[3];
cx q[2], q[1];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[4];
rx(-pi/2)  q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[4];
rz(pi/2)  q[2];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[1];
rz(0.0)  q[2];
rz(pi)  q[5];
rz(0.0)  q[6];
rz(0.0)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(11.4668131856027)  q[3];
rz(9.89601685880785)  q[4];
rz(11.4668131856027)  q[1];
rz(9.89601685880785)  q[2];
rz(11.4668131856027)  q[5];
rz(9.89601685880785)  q[6];
rz(9.89601685880785)  q[0];
rz(11.4668131856027)  q[7];
rz(pi/2)  q[3];
rz(pi/2)  q[4];
rz(pi/2)  q[1];
rz(pi/2)  q[2];
rz(pi/2)  q[5];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(pi)  q[3];
rz(pi)  q[4];
rz(pi)  q[1];
rz(pi)  q[2];
rz(pi)  q[5];
rz(pi)  q[6];
rz(pi)  q[0];
rz(pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(4*pi)  q[3];
rz(3*pi)  q[4];
rz(4*pi)  q[1];
rz(3*pi)  q[2];
rz(4*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rz(4*pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[5];
rx(pi/2)  q[7];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[4], q[3];
cx q[2], q[1];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[4];
rx(-pi/2)  q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[4];
rz(pi/2)  q[2];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rz(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(2*pi)  q[3];
rz(2*pi)  q[4];
rz(2*pi)  q[1];
rz(2*pi)  q[2];
rz(2*pi)  q[5];
rz(2*pi)  q[6];
rz(2*pi)  q[0];
rz(2*pi)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[1];
rz(3*pi)  q[2];
rz(3*pi)  q[5];
rz(3*pi)  q[6];
rz(3*pi)  q[0];
rz(3*pi)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(9*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(9*pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(9*pi/2)  q[5];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[0];
rz(9*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[5];
rx(pi/2)  q[7];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rx(2*pi/5)  q[3];
ry(pi/2)  q[4];
rx(2*pi/5)  q[1];
ry(pi/2)  q[2];
rx(2*pi/5)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[0];
rx(2*pi/5)  q[7];
cx q[4], q[3];
cx q[2], q[1];
cx q[6], q[5];
cx q[0], q[7];
rx(-pi/2)  q[4];
rx(-pi/2)  q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[0];
rz(pi/2)  q[4];
rz(pi/2)  q[2];
rz(pi/2)  q[6];
rz(pi/2)  q[0];
cx q[3], q[4];
cx q[1], q[2];
cx q[5], q[6];
cx q[7], q[0];
rz(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[0];
rz(3*pi/2)  q[7];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[0];
rx(pi/2)  q[7];
rz(7*pi/2)  q[3];
rz(7*pi/2)  q[4];
rz(7*pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(7*pi/2)  q[5];
rz(7*pi/2)  q[6];
rz(7*pi/2)  q[0];
rz(7*pi/2)  q[7];
rx(1.1)  q[3];
rx(1.1)  q[4];
rx(1.1)  q[1];
rx(1.1)  q[2];
rx(1.1)  q[5];
rx(1.1)  q[6];
rx(1.1)  q[0];
rx(1.1)  q[7];
ry(1.1)  q[3];
ry(1.1)  q[4];
ry(1.1)  q[1];
ry(1.1)  q[2];
ry(1.1)  q[5];
ry(1.1)  q[6];
ry(1.1)  q[0];
ry(1.1)  q[7];
rz(1.1)  q[3];
rz(1.1)  q[4];
rz(1.1)  q[1];
rz(1.1)  q[2];
rz(1.1)  q[5];
rz(1.1)  q[6];
rz(1.1)  q[0];
rz(1.1)  q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
