OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[2],q[3];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
measure q[2] -> c[0];
measure q[3] -> c[1];
