OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[7],q[16];
rz(5.654427) q[16];
cx q[7],q[16];
cx q[7],q[4];
cx q[4],q[16];
rz(-11.308885) q[16];
cx q[4],q[16];
rx(1.7132487) q[16];
cx q[7],q[4];
rz(-16.963312) q[4];
rx(1.7132487) q[4];
rx(1.7132487) q[7];
measure q[7] -> c[0];
measure q[4] -> c[1];
measure q[16] -> c[2];
