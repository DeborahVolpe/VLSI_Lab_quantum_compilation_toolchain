OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
cz q[2],q[3];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[4];
rx(pi) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
rx(pi) q[4];
measure q[2] -> c[0];
swap q[1],q[2];
measure q[3] -> c[1];
swap q[3],q[4];
cz q[3],q[2];
ry(pi/2) q[2];
rx(pi) q[2];
measure q[3] -> c[2];
measure q[2] -> c[3];
