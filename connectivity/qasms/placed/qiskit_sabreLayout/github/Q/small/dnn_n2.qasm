OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[2];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rz(11*pi/10) q[1];
rz(3*pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(9.8960169) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(11.466813) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(9*pi/2) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rz(11*pi/10) q[1];
rz(pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rx(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(11.466813) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
rx(pi/2) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(9.8960169) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(9*pi/2) q[1];
rx(pi/2) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
ry(-pi/2) q[1];
rz(3*pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi/20) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(15.079645) q[1];
ry(pi/2) q[1];
rz(3*pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(10.367256) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(pi/20) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(15.079645) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rz(11*pi/10) q[1];
rz(3*pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(10.367256) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(9.8960169) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(11.466813) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(9*pi/2) q[2];
rx(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(-pi/2) q[1];
rz(pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
rz(11*pi/10) q[1];
rz(pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rx(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(11.466813) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(4*pi) q[1];
rx(pi/2) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(9.8960169) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(9*pi/2) q[1];
rx(pi/2) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rx(2*pi/5) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
cz q[2],q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(7*pi/2) q[1];
rx(1.1) q[1];
ry(1.1) q[1];
rz(1.1) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
measure q[2] -> c[0];
measure q[1] -> c[1];
