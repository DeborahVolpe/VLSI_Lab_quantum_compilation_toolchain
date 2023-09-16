OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[15];
u3(pi/2,0,3*pi/4) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
u2(0,pi) q[21];
cx q[21],q[18];
u3(-pi/2,0,0) q[18];
u3(pi/2,0,pi/4) q[18];
cx q[15],q[18];
u3(pi/4,-pi/2,pi/2) q[15];
u3(pi/2,0,0) q[18];
cx q[18],q[15];
u3(-pi/2,-pi/2,pi/2) q[18];
u1(pi/2) q[18];
cx q[15],q[18];
u3(pi/2,pi/2,pi) q[15];
u3(pi/2,pi,pi) q[18];
u3(pi/2,0,0) q[18];
u3(-pi/4,-pi/2,pi/2) q[21];
u3(-pi/2,0,0) q[21];
u3(pi/2,0,pi/4) q[21];
swap q[21],q[23];
u2(0,pi) q[24];
u3(pi/2,0,3*pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(pi/4,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,pi,pi) q[23];
u3(pi/2,0,0) q[23];
u3(pi/2,pi/2,pi) q[24];
measure q[23] -> c[0];
measure q[24] -> c[1];
measure q[18] -> c[2];
measure q[15] -> c[3];
