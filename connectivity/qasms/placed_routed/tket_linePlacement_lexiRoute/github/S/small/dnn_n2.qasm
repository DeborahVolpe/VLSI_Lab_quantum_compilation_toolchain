OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[2];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u1(1.1*pi) q[24];
u1(1.1*pi) q[25];
u3(0.5*pi,1.0*pi,0.75*pi) q[24];
u3(0.5*pi,0.0*pi,0.25*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,0.15000000062437474*pi,0.0*pi) q[24];
u3(0.5*pi,0.6499999920952942*pi,1.0*pi) q[25];
u3(0.0*pi,0.0*pi,0.5*pi) q[24];
u3(0.0*pi,1.0*pi,0.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(1.0*pi,0.0*pi,1.5*pi) q[24];
u3(1.0*pi,0.0*pi,0.5*pi) q[25];
u3(0.5*pi,0.5*pi,1.5*pi) q[24];
u3(0.5*pi,1.5*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[24];
u3(0.5*pi,0.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u1(1.1*pi) q[24];
u1(1.1*pi) q[25];
u3(0.5*pi,0.0*pi,0.25*pi) q[24];
u3(0.5*pi,1.0*pi,0.75*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(0.5*pi,0.6499999920952942*pi,1.0*pi) q[24];
u3(0.5*pi,0.15000000062437474*pi,0.0*pi) q[25];
u3(0.0*pi,1.0*pi,0.5*pi) q[24];
u3(0.0*pi,0.0*pi,0.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(1.0*pi,0.0*pi,0.5*pi) q[24];
u3(1.0*pi,0.0*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,1.5*pi) q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(0.5*pi,0.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u3(3.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.5*pi,0.0*pi,0.25*pi) q[25];
u3(0.5*pi,1.0*pi,0.75*pi) q[24];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.05*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,1.8*pi,0.0*pi) q[24];
u3(0.5*pi,0.3*pi,1.0*pi) q[25];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.5*pi,0.0*pi,0.25*pi) q[25];
u3(0.5*pi,1.0*pi,0.75*pi) q[24];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.05*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,1.8*pi,0.0*pi) q[24];
u3(0.5*pi,0.3*pi,1.0*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u1(1.1*pi) q[24];
u1(1.1*pi) q[25];
u3(0.5*pi,1.0*pi,0.75*pi) q[24];
u3(0.5*pi,0.0*pi,0.25*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,0.15000000062437474*pi,0.0*pi) q[24];
u3(0.5*pi,0.6499999920952942*pi,1.0*pi) q[25];
u3(0.0*pi,0.0*pi,0.5*pi) q[24];
u3(0.0*pi,1.0*pi,0.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(1.0*pi,0.0*pi,1.5*pi) q[24];
u3(1.0*pi,0.0*pi,0.5*pi) q[25];
u3(0.5*pi,0.5*pi,1.5*pi) q[24];
u3(0.5*pi,1.5*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[24];
u3(0.4*pi,1.5*pi,0.5*pi) q[25];
cx q[24],q[25];
u3(3.5*pi,1.5*pi,0.5*pi) q[24];
u1(0.5*pi) q[24];
cx q[25],q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[24];
u3(0.5*pi,0.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
u1(1.1*pi) q[24];
u1(1.1*pi) q[25];
u3(0.5*pi,0.0*pi,0.25*pi) q[24];
u3(0.5*pi,1.0*pi,0.75*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(0.5*pi,0.6499999920952942*pi,1.0*pi) q[24];
u3(0.5*pi,0.15000000062437474*pi,0.0*pi) q[25];
u3(0.0*pi,1.0*pi,0.5*pi) q[24];
u3(0.0*pi,0.0*pi,0.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(1.0*pi,0.0*pi,0.5*pi) q[24];
u3(1.0*pi,0.0*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,1.5*pi) q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[25];
u3(0.5*pi,1.5*pi,0.5*pi) q[24];
cx q[24],q[25];
u3(0.4*pi,1.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.0*pi,0.0*pi) q[25];
cx q[25],q[24];
u3(3.5*pi,1.5*pi,0.5*pi) q[25];
u1(0.5*pi) q[25];
cx q[24],q[25];
u3(0.5*pi,0.5*pi,0.5*pi) q[24];
u3(0.5*pi,0.5*pi,1.5*pi) q[25];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[24];
u3(0.3501408747999989*pi,1.5*pi,0.5*pi) q[25];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[24];
u3(0.3501408747999989*pi,0.0*pi,0.0*pi) q[25];
u1(0.3501408747999989*pi) q[24];
u1(0.3501408747999989*pi) q[25];
measure q[25] -> c[0];
measure q[24] -> c[1];