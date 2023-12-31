OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
rz(1.0*pi) q[0];
rz(0.0625*pi) q[1];
rz(1.0*pi) q[2];
rz(0.25*pi) q[3];
rx(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(2.0*pi) q[0];
rz(2.0*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(3.0*pi) q[0];
rz(3.0*pi) q[2];
rz(0.125*pi) q[0];
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
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rz(0.25*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
cz q[0],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(3.875*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[0],q[2];
rz(0.25*pi) q[0];
ry(0.5*pi) q[2];
cz q[0],q[3];
rx(1.0*pi) q[2];
rz(0.125*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
rz(3.75*pi) q[3];
cz q[1],q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
cz q[0],q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[0];
rz(3.9375*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[0];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
rx(1.0*pi) q[2];
rz(0.25*pi) q[3];
rx(1.0*pi) q[0];
cz q[1],q[2];
ry(0.5*pi) q[3];
rz(0.125*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
cz q[1],q[3];
rx(1.0*pi) q[2];
rz(0.0625*pi) q[2];
ry(0.5*pi) q[3];
measure q[2] -> c[0];
rx(1.0*pi) q[3];
rz(3.875*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[1],q[3];
rz(0.25*pi) q[1];
ry(0.5*pi) q[3];
cz q[1],q[0];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
rz(0.125*pi) q[3];
measure q[3] -> c[1];
rx(1.0*pi) q[0];
rz(3.75*pi) q[0];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
cz q[1],q[0];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
measure q[1] -> c[3];
rz(0.25*pi) q[0];
measure q[0] -> c[2];
