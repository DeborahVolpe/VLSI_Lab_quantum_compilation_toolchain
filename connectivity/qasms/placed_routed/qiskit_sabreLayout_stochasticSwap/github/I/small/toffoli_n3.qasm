OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[3];
rx(pi) q[4];
rx(pi) q[7];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[4],q[16];
rz(-pi/4) q[16];
cx q[7],q[16];
rz(pi/4) q[16];
cx q[4],q[16];
rz(-pi/4) q[16];
rz(-pi/4) q[4];
cx q[7],q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
cx q[7],q[4];
rz(-pi/4) q[4];
cx q[7],q[4];
rz(pi/2) q[4];
rz(pi/4) q[7];
measure q[7] -> c[0];
measure q[4] -> c[1];
measure q[16] -> c[2];
