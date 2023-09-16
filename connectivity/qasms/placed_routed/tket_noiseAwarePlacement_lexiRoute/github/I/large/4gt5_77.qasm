OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
measure q[0] -> c[5];
measure q[1] -> c[6];
measure q[2] -> c[7];
measure q[3] -> c[8];
measure q[4] -> c[9];
measure q[5] -> c[10];
measure q[6] -> c[11];
measure q[7] -> c[12];
measure q[8] -> c[13];
measure q[9] -> c[14];
measure q[10] -> c[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
cx q[15],q[14];
rz(0.25*pi) q[16];
ry(0.5*pi) q[12];
cx q[14],q[15];
rx(1.0*pi) q[12];
rz(0.25*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[12];
cx q[14],q[13];
cx q[16],q[15];
cx q[12],q[14];
cx q[13],q[12];
rz(3.75*pi) q[14];
rz(0.25*pi) q[12];
cx q[13],q[14];
rz(3.75*pi) q[13];
rz(3.75*pi) q[14];
cx q[12],q[14];
cx q[13],q[12];
ry(0.5*pi) q[12];
cx q[14],q[13];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
ry(0.5*pi) q[14];
ry(0.5*pi) q[12];
rx(1.0*pi) q[14];
rx(1.0*pi) q[12];
rz(0.25*pi) q[14];
rz(0.25*pi) q[12];
cx q[14],q[16];
cx q[15],q[14];
rz(3.75*pi) q[16];
rz(0.25*pi) q[14];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[15],q[14];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[14];
rz(0.25*pi) q[15];
rz(0.25*pi) q[16];
rz(0.25*pi) q[14];
cx q[16],q[15];
cx q[14],q[13];
cx q[12],q[14];
cx q[13],q[12];
rz(3.75*pi) q[14];
rz(0.25*pi) q[12];
cx q[13],q[14];
rz(3.75*pi) q[13];
rz(3.75*pi) q[14];
cx q[12],q[14];
cx q[13],q[12];
ry(0.5*pi) q[12];
cx q[14],q[13];
rx(1.0*pi) q[12];
rz(0.25*pi) q[13];
ry(0.5*pi) q[14];
rz(0.25*pi) q[12];
rx(1.0*pi) q[14];
rz(0.25*pi) q[14];
cx q[14],q[16];
cx q[15],q[14];
rz(3.75*pi) q[16];
rz(0.25*pi) q[14];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(3.75*pi) q[16];
cx q[14],q[16];
cx q[15],q[14];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
rz(0.25*pi) q[16];
cx q[13],q[16];
rz(0.25*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[12];
rz(0.25*pi) q[15];
cx q[15],q[14];
cx q[12],q[15];
rz(3.75*pi) q[14];
cx q[12],q[14];
rz(0.25*pi) q[15];
rz(3.75*pi) q[12];
rz(3.75*pi) q[14];
cx q[15],q[14];
cx q[12],q[15];
cx q[14],q[12];
ry(0.5*pi) q[15];
rz(0.25*pi) q[12];
ry(0.5*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
rz(0.25*pi) q[14];
rx(1.0*pi) q[15];
cx q[14],q[13];
rz(0.25*pi) q[15];
rz(3.75*pi) q[13];
cx q[16],q[14];
cx q[16],q[13];
rz(0.25*pi) q[14];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[14],q[13];
cx q[16],q[14];
cx q[13],q[16];
ry(0.5*pi) q[14];
rz(0.25*pi) q[13];
rx(1.0*pi) q[14];
rz(0.25*pi) q[16];
cx q[13],q[16];
rz(0.25*pi) q[14];
cx q[14],q[12];
cx q[15],q[14];
cx q[12],q[15];
rz(3.75*pi) q[14];
cx q[12],q[14];
rz(0.25*pi) q[15];
rz(3.75*pi) q[12];
rz(3.75*pi) q[14];
cx q[15],q[14];
cx q[12],q[15];
cx q[14],q[12];
ry(0.5*pi) q[15];
measure q[12] -> c[0];
ry(0.5*pi) q[14];
rx(1.0*pi) q[15];
measure q[15] -> c[4];
rx(1.0*pi) q[14];
rz(0.25*pi) q[14];
cx q[14],q[13];
rz(3.75*pi) q[13];
cx q[16],q[14];
cx q[16],q[13];
rz(0.25*pi) q[14];
rz(3.75*pi) q[13];
rz(3.75*pi) q[16];
cx q[14],q[13];
cx q[16],q[14];
cx q[13],q[16];
ry(0.5*pi) q[14];
measure q[13] -> c[2];
measure q[16] -> c[3];
rx(1.0*pi) q[14];
measure q[14] -> c[1];
