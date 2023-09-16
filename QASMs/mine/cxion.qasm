OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];

rx(3.14) q[0];
rx(3.14) q[1];
ry(3.14) q[0];
ry(1.57) q[1];
rxx(0.785) q[0],q[1];
rx(-1.57) q[0];
ry(-1.57) q[0];
rx(-1.57) q[0];
rx(3.14) q[1];
ry(-1.57) q[0];
rz(-1.57) q[1];
rz(3.14) q[0];
rx(3.14) q[1];
ry(3.14) q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
