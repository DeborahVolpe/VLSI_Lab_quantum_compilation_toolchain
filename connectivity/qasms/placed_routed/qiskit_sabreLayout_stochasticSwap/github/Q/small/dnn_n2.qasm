OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[2];
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
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rz(11*pi/10) q[3];
rz(pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(11.466813) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi) q[3];
rx(pi/2) q[3];
rz(4*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(9*pi/2) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rz(11*pi/10) q[3];
rz(3*pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(4*pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
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
ry(pi/2) q[3];
rx(pi) q[3];
rz(0) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(9.8960169) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
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
ry(pi/2) q[3];
rx(pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
ry(-pi/2) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rz(pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(pi/20) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(15.079645) q[2];
ry(pi/2) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(10.367256) q[3];
rz(pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(pi/20) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(15.079645) q[2];
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
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(10.367256) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rz(11*pi/10) q[3];
rz(pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(11.466813) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi) q[3];
rx(pi/2) q[3];
rz(4*pi) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(9*pi/2) q[3];
rx(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(2*pi/5) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(-pi/2) q[2];
rz(pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[3],q[2];
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
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
rz(11*pi/10) q[3];
rz(3*pi/4) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(4*pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
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
ry(pi/2) q[3];
rx(pi) q[3];
rz(0) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(9.8960169) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
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
ry(pi/2) q[3];
rx(pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(2*pi) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rx(2*pi/5) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rx(1.1) q[3];
ry(1.1) q[3];
rz(1.1) q[3];
measure q[3] -> c[0];
measure q[2] -> c[1];
