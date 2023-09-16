OPENQASM 2.0;
include "qelib1.inc";

qreg q[16];
creg c[16];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];
measure q[15] -> c[15];
cx q[3],q[0];
ry(0.5*pi) q[1];
rz(0.25*pi) q[2];
rx(1.0*pi) q[4];
measure q[3] -> c[3];
rx(1.0*pi) q[1];
rz(0.25*pi) q[4];
rz(0.25*pi) q[1];
cx q[2],q[4];
cx q[1],q[2];
cx q[4],q[1];
rz(3.75*pi) q[2];
rz(0.25*pi) q[1];
cx q[4],q[2];
rz(3.75*pi) q[2];
rz(3.75*pi) q[4];
cx q[1],q[2];
cx q[4],q[1];
ry(0.5*pi) q[1];
cx q[2],q[4];
measure q[2] -> c[2];
cx q[0],q[4];
rx(1.0*pi) q[1];
rx(1.0*pi) q[0];
rz(0.25*pi) q[1];
ry(0.5*pi) q[4];
rz(0.25*pi) q[0];
rx(1.0*pi) q[4];
cx q[1],q[0];
rz(0.25*pi) q[4];
cx q[4],q[1];
cx q[0],q[4];
rz(3.75*pi) q[1];
cx q[0],q[1];
rz(0.25*pi) q[4];
rz(3.75*pi) q[0];
rz(3.75*pi) q[1];
cx q[4],q[1];
cx q[0],q[4];
cx q[1],q[0];
ry(0.5*pi) q[4];
measure q[1] -> c[0];
measure q[0] -> c[1];
rx(1.0*pi) q[4];
measure q[4] -> c[4];
