OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[4];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
cz q[1],q[2];
measure q[1] -> c[0];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[2],q[3];
measure q[2] -> c[1];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[3],q[4];
measure q[3] -> c[2];
ry(0.5*pi) q[4];
rx(1.0*pi) q[4];
measure q[4] -> c[3];
