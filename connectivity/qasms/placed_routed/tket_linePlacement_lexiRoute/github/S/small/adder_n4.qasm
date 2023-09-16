OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[4];
u3(1.0*pi,0.0*pi,1.0*pi) q[22];
u2(0.0*pi,1.0*pi) q[24];
u3(1.0*pi,0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[22];
cx q[23],q[24];
u1(0.25*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[23];
u1(1.75*pi) q[24];
cx q[23],q[24];
swap q[24],q[25];
cx q[25],q[22];
cx q[24],q[23];
swap q[24],q[25];
cx q[22],q[25];
cx q[23],q[24];
u1(1.75*pi) q[22];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
u1(1.75*pi) q[25];
cx q[22],q[25];
cx q[23],q[24];
measure q[25] -> c[1];
measure q[23] -> c[2];
u1(0.5*pi) q[24];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
measure q[22] -> c[0];
cx q[24],q[25];
u2(0.0*pi,1.0*pi) q[24];
measure q[24] -> c[3];
