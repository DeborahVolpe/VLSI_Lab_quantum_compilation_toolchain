OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[2];
rz(-1.5873088e-05) q[0];
rx(pi/2) q[0];
rz(4.7121781) q[0];
rx(pi/2) q[0];
rz(6.2580544) q[0];
rz(0.050219564) q[1];
rx(pi/2) q[1];
rz(3.9280429) q[1];
rx(pi/2) q[1];
rz(10.924523) q[1];
cx q[0],q[1];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.1918175) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
rz(pi) q[1];
rx(pi/2) q[1];
rz(4.78344) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
cx q[0],q[1];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.1416076) q[0];
rx(pi/2) q[0];
rz(7*pi/2) q[0];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
cx q[0],q[1];
rz(-0.025130909) q[0];
rx(pi/2) q[0];
rz(4.7121781) q[0];
rx(pi/2) q[0];
rz(6.2831694) q[0];
rz(-0.071021219) q[1];
rx(pi/2) q[1];
rz(5.496314) q[1];
rx(pi/2) q[1];
rz(12.516172) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
