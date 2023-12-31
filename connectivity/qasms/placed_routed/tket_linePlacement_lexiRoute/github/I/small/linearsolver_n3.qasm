OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[3];
ry(0.5*pi) q[14];
rx(1.0*pi) q[16];
rx(1.0*pi) q[14];
ry(0.5*pi) q[16];
cx q[14],q[15];
rx(1.0*pi) q[16];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(0.5*pi) q[15];
rz(0.0*pi) q[16];
rx(1.0*pi) q[15];
rx(0.5*pi) q[16];
rz(0.8153802660134004*pi) q[16];
rx(0.5*pi) q[16];
rz(3.0*pi) q[16];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
cx q[14],q[15];
rz(0.0*pi) q[16];
measure q[15] -> c[1];
ry(0.5*pi) q[14];
rx(0.5*pi) q[16];
rx(1.0*pi) q[14];
rz(1.1846197339865976*pi) q[16];
measure q[14] -> c[0];
rx(0.5*pi) q[16];
rz(3.0*pi) q[16];
measure q[16] -> c[2];
