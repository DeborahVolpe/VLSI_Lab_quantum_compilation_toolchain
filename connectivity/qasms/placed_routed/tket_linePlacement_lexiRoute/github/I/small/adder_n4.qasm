OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[4];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(0.5*pi) q[16];
rz(0.25*pi) q[13];
rz(0.25*pi) q[14];
rx(1.0*pi) q[16];
cx q[13],q[14];
cx q[15],q[16];
rz(0.25*pi) q[15];
rz(3.75*pi) q[16];
cx q[15],q[16];
cx q[16],q[13];
cx q[14],q[15];
cx q[13],q[14];
cx q[15],q[16];
rz(3.75*pi) q[13];
rz(3.75*pi) q[14];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
cx q[13],q[14];
cx q[15],q[16];
measure q[14] -> c[1];
measure q[15] -> c[2];
rz(0.5*pi) q[16];
cx q[16],q[13];
measure q[13] -> c[0];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
measure q[16] -> c[3];