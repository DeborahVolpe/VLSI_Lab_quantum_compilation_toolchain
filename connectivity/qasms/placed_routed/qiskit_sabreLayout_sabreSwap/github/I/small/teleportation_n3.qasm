OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[12];
rx(pi) q[12];
rz(pi/4) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(pi/2) q[12];
cx q[8],q[16];
cx q[12],q[16];
ry(pi/2) q[12];
rx(pi) q[12];
measure q[12] -> c[0];
measure q[16] -> c[1];
measure q[8] -> c[2];
