OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[5];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[14];
ry(0.5*pi) q[16];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[14];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[14],q[15];
rz(3.5*pi) q[14];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[14],q[15];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[0],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[0],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[0],q[15];
cx q[1],q[15];
cx q[0],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[0],q[15];
ry(0.5*pi) q[0];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[15];
cx q[0],q[15];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[1],q[15];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[1],q[15];
cx q[0],q[15];
ry(0.5*pi) q[1];
rx(1.0*pi) q[1];
cx q[1],q[15];
ry(0.5*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[1];
rx(1.0*pi) q[15];
cx q[1],q[15];
ry(0.5*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[1];
rx(1.0*pi) q[15];
cx q[1],q[15];
cx q[0],q[15];
cx q[1],q[15];
ry(0.5*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[1];
rx(1.0*pi) q[15];
cx q[1],q[15];
ry(0.5*pi) q[1];
ry(0.5*pi) q[15];
rx(1.0*pi) q[1];
rx(1.0*pi) q[15];
cx q[1],q[15];
ry(0.5*pi) q[1];
cx q[14],q[15];
rx(1.0*pi) q[1];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
measure q[1] -> c[3];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
cx q[0],q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
cx q[16],q[15];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[16],q[15];
cx q[14],q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
cx q[0],q[16];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
measure q[0] -> c[0];
cx q[14],q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
cx q[16],q[15];
cx q[14],q[15];
rz(3.5*pi) q[16];
measure q[16] -> c[1];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
measure q[15] -> c[2];
measure q[14] -> c[4];