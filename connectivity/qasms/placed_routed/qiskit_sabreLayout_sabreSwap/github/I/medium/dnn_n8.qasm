OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[8];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rz(11*pi/10) q[5];
rz(3*pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rz(11*pi/10) q[6];
rz(3*pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rz(11*pi/10) q[8];
rz(pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rx(pi/2) q[8];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(11*pi/10) q[11];
rz(pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rx(pi/2) q[11];
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(11.466813) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
rx(pi/2) q[11];
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
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(9*pi/2) q[11];
rx(pi/2) q[11];
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
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(11*pi/10) q[11];
rz(3*pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
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
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(11*pi/10) q[12];
rz(pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rx(pi/2) q[12];
cx q[12],q[5];
rx(2*pi/5) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(11.466813) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rx(pi/2) q[12];
rz(0) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(9.8960169) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
cx q[12],q[5];
rx(2*pi/5) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(2*pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(9*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(2*pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
cx q[12],q[5];
rx(2*pi/5) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(11*pi/10) q[12];
rz(3*pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rz(11*pi/10) q[5];
rz(pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rx(pi/2) q[5];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(11*pi/10) q[15];
rz(pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rx(pi/2) q[15];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(11.466813) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
rx(pi/2) q[15];
rz(0) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(9.8960169) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(2*pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(9*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(2*pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(11*pi/10) q[15];
rz(3*pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(0) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(9.8960169) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(11.466813) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(2*pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(2*pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(9*pi/2) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rx(pi/2) q[15];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
ry(-pi/2) q[5];
rz(3*pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rz(11*pi/10) q[6];
rz(pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(9.8960169) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(11.466813) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(2*pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(9*pi/2) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rx(pi/2) q[11];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
ry(-pi/2) q[6];
rz(3*pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
cx q[15],q[6];
rx(pi/20) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(10.367256) q[15];
rz(pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rx(pi/2) q[15];
rz(0) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(15.079645) q[6];
ry(pi/2) q[6];
rz(3*pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
cx q[15],q[6];
rx(pi/20) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(10.367256) q[15];
ry(-pi/2) q[15];
rz(3*pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
rz(0) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(15.079645) q[6];
rz(pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rx(pi/2) q[6];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rz(11*pi/10) q[16];
rz(3*pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(0) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(9.8960169) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(11.466813) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(2*pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(2*pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(9*pi/2) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rz(11*pi/10) q[16];
rz(pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(0) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(9.8960169) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(11.466813) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(2*pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(2*pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(9*pi/2) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rx(pi/2) q[12];
cx q[12],q[5];
rx(pi/20) q[12];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
ry(-pi/2) q[16];
rz(3*pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(10.367256) q[12];
rz(pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rx(pi/2) q[12];
rz(0) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(15.079645) q[5];
ry(pi/2) q[5];
rz(3*pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
cx q[12],q[5];
rx(pi/20) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(10.367256) q[12];
ry(-pi/2) q[12];
rz(3*pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rz(0) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(15.079645) q[5];
rz(pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(pi/20) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(0) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(15.079645) q[15];
ry(pi/2) q[15];
rz(3*pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(10.367256) q[5];
rz(pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(pi/20) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(0) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(15.079645) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(11*pi/10) q[15];
rz(pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rx(pi/2) q[15];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(10.367256) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rz(11*pi/10) q[5];
rz(3*pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rz(11*pi/10) q[8];
rz(3*pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
rz(0) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(9.8960169) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(2*pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
cx q[11],q[2];
rx(pi/20) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(10.367256) q[11];
rz(pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rx(pi/2) q[11];
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
cx q[11],q[2];
rx(pi/20) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(10.367256) q[11];
ry(-pi/2) q[11];
rz(3*pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
rz(0) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(15.079645) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rx(pi/2) q[2];
cx q[6],q[11];
ry(pi/2) q[11];
rx(pi/20) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(15.079645) q[11];
ry(pi/2) q[11];
rz(3*pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(10.367256) q[6];
rz(pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(pi/20) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(15.079645) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(11*pi/10) q[11];
rz(pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rx(pi/2) q[11];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(10.367256) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rz(11*pi/10) q[6];
rz(3*pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(11.466813) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
rx(pi/2) q[15];
rz(0) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(9.8960169) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(2*pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(9*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(2*pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
cx q[15],q[6];
rx(2*pi/5) q[15];
ry(pi/2) q[6];
cx q[6],q[15];
rx(-pi/2) q[6];
rz(pi/2) q[6];
cx q[15],q[6];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(11*pi/10) q[15];
rz(3*pi/4) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(4*pi) q[15];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rz(11*pi/10) q[6];
rz(pi/4) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rz(pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(pi/20) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(0) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(15.079645) q[16];
ry(pi/2) q[16];
rz(3*pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(10.367256) q[8];
rz(pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(pi/20) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(0) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(15.079645) q[16];
rz(pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi/20) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(0) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(15.079645) q[12];
ry(pi/2) q[12];
rz(3*pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(10.367256) q[16];
rz(pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(pi/20) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(0) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(15.079645) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(11*pi/10) q[12];
rz(pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rx(pi/2) q[12];
cx q[12],q[5];
rx(2*pi/5) q[12];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(10.367256) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rz(11*pi/10) q[16];
rz(3*pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(11.466813) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rx(pi/2) q[12];
rz(0) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(9.8960169) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
cx q[12],q[5];
rx(2*pi/5) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(2*pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(9*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(2*pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
cx q[12],q[5];
rx(2*pi/5) q[12];
ry(pi/2) q[5];
cx q[5],q[12];
rx(-pi/2) q[5];
rz(pi/2) q[5];
cx q[12],q[5];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(11*pi/10) q[12];
rz(3*pi/4) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(4*pi) q[12];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rz(11*pi/10) q[5];
rz(pi/4) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(0) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(9.8960169) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(pi) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(11.466813) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi) q[5];
rx(pi/2) q[5];
rz(4*pi) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(2*pi) q[15];
rx(pi/2) q[15];
rz(3*pi) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(2*pi) q[5];
rx(pi/2) q[5];
rz(3*pi) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(9*pi/2) q[5];
rx(pi/2) q[5];
cx q[5],q[15];
ry(pi/2) q[15];
rx(2*pi/5) q[5];
cx q[15],q[5];
rx(-pi/2) q[15];
rz(pi/2) q[15];
cx q[5],q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(3*pi/2) q[15];
rx(pi/2) q[15];
rz(7*pi/2) q[15];
rx(1.1) q[15];
ry(1.1) q[15];
rz(1.1) q[15];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(3*pi/2) q[5];
rx(pi/2) q[5];
rz(7*pi/2) q[5];
rx(1.1) q[5];
ry(1.1) q[5];
rz(1.1) q[5];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(10.367256) q[8];
ry(-pi/2) q[8];
rz(3*pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
cx q[2],q[8];
rx(pi/20) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
rz(0) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(15.079645) q[8];
ry(pi/2) q[8];
rz(3*pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
cx q[2],q[8];
rx(pi/20) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(10.367256) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(11*pi/10) q[2];
rz(3*pi/4) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(4*pi) q[2];
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(11.466813) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
rx(pi/2) q[11];
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
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(9*pi/2) q[11];
rx(pi/2) q[11];
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
cx q[11],q[2];
rx(2*pi/5) q[11];
ry(pi/2) q[2];
cx q[2],q[11];
rx(-pi/2) q[2];
rz(pi/2) q[2];
cx q[11],q[2];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(11*pi/10) q[11];
rz(3*pi/4) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(4*pi) q[11];
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
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(9.8960169) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(pi) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(11.466813) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi) q[6];
rx(pi/2) q[6];
rz(4*pi) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(2*pi) q[11];
rx(pi/2) q[11];
rz(3*pi) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(2*pi) q[6];
rx(pi/2) q[6];
rz(3*pi) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(9*pi/2) q[6];
rx(pi/2) q[6];
cx q[6],q[11];
ry(pi/2) q[11];
rx(2*pi/5) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(3*pi/2) q[11];
rx(pi/2) q[11];
rz(7*pi/2) q[11];
rx(1.1) q[11];
ry(1.1) q[11];
rz(1.1) q[11];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(3*pi/2) q[6];
rx(pi/2) q[6];
rz(7*pi/2) q[6];
rx(1.1) q[6];
ry(1.1) q[6];
rz(1.1) q[6];
rz(0) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(15.079645) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rz(11*pi/10) q[8];
rz(pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(0) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(9.8960169) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(11.466813) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(2*pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(2*pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(9*pi/2) q[8];
rx(pi/2) q[8];
cx q[8],q[16];
ry(pi/2) q[16];
rx(2*pi/5) q[8];
cx q[16],q[8];
rx(-pi/2) q[16];
rz(pi/2) q[16];
cx q[8],q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rz(11*pi/10) q[16];
rz(pi/4) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(0) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(9.8960169) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(pi) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(11.466813) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi) q[16];
rx(pi/2) q[16];
rz(4*pi) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(2*pi) q[12];
rx(pi/2) q[12];
rz(3*pi) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(2*pi) q[16];
rx(pi/2) q[16];
rz(3*pi) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(9*pi/2) q[16];
rx(pi/2) q[16];
cx q[16],q[12];
ry(pi/2) q[12];
rx(2*pi/5) q[16];
cx q[12],q[16];
rx(-pi/2) q[12];
rz(pi/2) q[12];
cx q[16],q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(3*pi/2) q[12];
rx(pi/2) q[12];
rz(7*pi/2) q[12];
rx(1.1) q[12];
ry(1.1) q[12];
rz(1.1) q[12];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(3*pi/2) q[16];
rx(pi/2) q[16];
rz(7*pi/2) q[16];
rx(1.1) q[16];
ry(1.1) q[16];
rz(1.1) q[16];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
rz(11*pi/10) q[8];
rz(3*pi/4) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(4*pi) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
rz(0) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(9.8960169) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
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
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(2*pi) q[8];
rx(pi/2) q[8];
rz(3*pi) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
cx q[2],q[8];
rx(2*pi/5) q[2];
ry(pi/2) q[8];
cx q[8],q[2];
rx(-pi/2) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(3*pi/2) q[2];
rx(pi/2) q[2];
rz(7*pi/2) q[2];
rx(1.1) q[2];
ry(1.1) q[2];
rz(1.1) q[2];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(3*pi/2) q[8];
rx(pi/2) q[8];
rz(7*pi/2) q[8];
rx(1.1) q[8];
ry(1.1) q[8];
rz(1.1) q[8];
measure q[15] -> c[0];
measure q[6] -> c[1];
measure q[11] -> c[2];
measure q[2] -> c[3];
measure q[8] -> c[4];
measure q[16] -> c[5];
measure q[12] -> c[6];
measure q[5] -> c[7];
