OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[2];
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
rx(1.0*pi) q[3];
ry(0.5*pi) q[4];
rz(3.5*pi) q[3];
rx(1.0*pi) q[4];
ry(1.0*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
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
rx(1.0*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[4];
measure q[3] -> c[0];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
rx(1.0*pi) q[4];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
measure q[4] -> c[1];
