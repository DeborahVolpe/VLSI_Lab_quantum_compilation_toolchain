OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[5];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[24];
u2(0.0*pi,1.0*pi) q[24];
cx q[25],q[24];
cx q[23],q[24];
u2(0.0*pi,1.0*pi) q[25];
u2(0.0*pi,1.0*pi) q[23];
swap q[24],q[23];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
cx q[21],q[23];
swap q[18],q[21];
cx q[24],q[23];
measure q[24] -> c[0];
swap q[25],q[24];
cx q[24],q[23];
u2(0.0*pi,1.0*pi) q[23];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
cx q[21],q[23];
measure q[21] -> c[4];
cx q[24],q[23];
measure q[24] -> c[1];
swap q[23],q[21];
cx q[18],q[21];
measure q[21] -> c[2];
measure q[18] -> c[3];
