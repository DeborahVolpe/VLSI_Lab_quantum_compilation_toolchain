OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[2];
ry(0.5*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[1],q[2];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
measure q[1] -> c[0];
measure q[2] -> c[1];
