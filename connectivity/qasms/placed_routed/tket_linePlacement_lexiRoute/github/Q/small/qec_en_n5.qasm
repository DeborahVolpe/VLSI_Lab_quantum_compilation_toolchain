OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rz(3.5*pi) q[0];
rz(3.5*pi) q[1];
rz(3.5*pi) q[2];
rz(3.5*pi) q[3];
rz(0.25*pi) q[4];
ry(1.0*pi) q[0];
ry(1.0*pi) q[1];
ry(1.0*pi) q[2];
ry(1.0*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
rx(0.5*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
cz q[3],q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
rz(0.25*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
cz q[3],q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
cz q[3],q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
rz(3.75*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
cz q[3],q[4];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rz(3.5*pi) q[3];
ry(0.5*pi) q[4];
ry(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(0.5*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
swap q[4],q[3];
cz q[2],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(0.25*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[2],q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[2],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(3.75*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[2],q[3];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rz(3.5*pi) q[2];
ry(0.5*pi) q[3];
ry(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(0.5*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
swap q[3],q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rz(3.5*pi) q[1];
ry(0.5*pi) q[2];
ry(1.0*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
rz(3.5*pi) q[1];
ry(0.5*pi) q[2];
ry(1.0*pi) q[1];
rx(1.0*pi) q[2];
swap q[0],q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
measure q[3] -> c[0];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
swap q[4],q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rz(3.5*pi) q[3];
rx(1.0*pi) q[2];
ry(1.0*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rz(3.5*pi) q[1];
ry(0.5*pi) q[2];
ry(1.0*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
measure q[1] -> c[4];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.25*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.75*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
measure q[3] -> c[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rx(0.5*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
swap q[2],q[1];
cz q[0],q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
rz(0.25*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
cz q[0],q[1];
rx(1.0*pi) q[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
cz q[0],q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
rz(3.75*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
cz q[0],q[1];
measure q[0] -> c[3];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
measure q[1] -> c[2];