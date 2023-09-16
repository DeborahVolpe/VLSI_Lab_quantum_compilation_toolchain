OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
rz(-1.58730875641222e-5) q[0];
rx(pi/2) q[0];
rz(4.71217807818890) q[0];
rx(pi/2) q[0];
rz(6.25805439858898) q[0];
rz(-pi/2) q[0];
ry(pi) q[0];
rz(0.0502195643591570) q[1];
rx(pi/2) q[1];
rz(3.92804288166833) q[1];
rx(pi/2) q[1];
rz(10.9245231827363) q[1];
rx(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.19181745777772) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
ry(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(4.78344002009664) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rx(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.14160761038035) q[0];
rx(pi/2) q[0];
rz(7*pi/2) q[0];
rz(-pi/2) q[0];
ry(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
rx(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/4) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
cz q[0],q[1];
rz(-0.0251309085906506) q[0];
rx(pi/2) q[0];
rz(4.71217807818891) q[0];
rx(pi/2) q[0];
rz(6.28316943409205) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-0.0710212194315534) q[1];
rx(pi/2) q[1];
rz(5.49631401827607) q[1];
rx(pi/2) q[1];
rz(12.5161721546081) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
