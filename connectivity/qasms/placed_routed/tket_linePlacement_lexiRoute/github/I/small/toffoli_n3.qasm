OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[3];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
cx q[14],q[15];
rz(0.25*pi) q[15];
cx q[16],q[15];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[15];
cx q[14],q[16];
rz(0.25*pi) q[15];
ry(0.5*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
rx(1.0*pi) q[15];
measure q[15] -> c[2];
rz(0.25*pi) q[14];
rz(0.5*pi) q[16];
measure q[14] -> c[0];
measure q[16] -> c[1];
