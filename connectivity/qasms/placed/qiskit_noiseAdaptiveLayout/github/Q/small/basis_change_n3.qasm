OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[3];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(9*pi/2) q[2];
rz(0.92535646) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(9*pi/2) q[3];
rz(0.17718795) q[4];
rx(pi/2) q[4];
rz(3*pi/2) q[4];
rx(pi/2) q[4];
rz(3*pi) q[4];
cz q[3],q[4];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3.5320769) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rz(0) q[4];
rx(pi/2) q[4];
rz(3.5320769) q[4];
rx(pi/2) q[4];
rz(3*pi) q[4];
cz q[3],q[4];
rz(pi) q[3];
rx(pi/2) q[3];
rz(5.4267399) q[3];
rx(pi/2) q[3];
rz(9*pi/2) q[3];
cz q[2],q[3];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4.1727956) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rz(0) q[3];
rx(pi/2) q[3];
rz(4.1727956) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
cz q[2],q[3];
rz(0) q[2];
rx(pi/2) q[2];
rz(6.209703) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3.5733968) q[3];
rx(pi/2) q[3];
rz(5*pi) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(3.23531) q[4];
rx(pi/2) q[4];
rz(9*pi/2) q[4];
cz q[3],q[4];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3.8725224) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rz(0) q[4];
rx(pi/2) q[4];
rz(3.8725224) q[4];
rx(pi/2) q[4];
rz(3*pi) q[4];
cz q[3],q[4];
rz(0) q[3];
rx(pi/2) q[3];
rz(5.1073028) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
cz q[2],q[3];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4.1727956) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rz(0) q[3];
rx(pi/2) q[3];
rz(4.1727956) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
cz q[2],q[3];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(10.553609) q[2];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(5.2833351) q[3];
rx(pi/2) q[3];
rz(3*pi) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(4.9574815) q[4];
rx(pi/2) q[4];
rz(7*pi/2) q[4];
cz q[3],q[4];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(3.5320769) q[3];
rx(pi/2) q[3];
rz(7*pi/2) q[3];
rz(0) q[4];
rx(pi/2) q[4];
rz(3.5320769) q[4];
rx(pi/2) q[4];
rz(3*pi) q[4];
cz q[3],q[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(3*pi/2) q[3];
rx(pi/2) q[3];
rz(13.055345) q[3];
rz(0) q[4];
rx(pi/2) q[4];
rz(3*pi/2) q[4];
rx(pi/2) q[4];
rz(13.803513) q[4];
measure q[2] -> c[0];
measure q[3] -> c[1];
measure q[4] -> c[2];
