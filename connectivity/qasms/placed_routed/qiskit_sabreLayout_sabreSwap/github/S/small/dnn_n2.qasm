OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u1(11*pi/10) q[23];
u3(pi/2,pi,3*pi/4) q[23];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,0.4712389,0) q[23];
u3(0,0,pi/2) q[23];
u3(pi/2,2.0420352,pi) q[24];
u3(0,pi,pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi,0,3*pi/2) q[23];
u3(pi/2,pi/2,3*pi/2) q[23];
u3(pi,0,pi/2) q[24];
u3(pi/2,3*pi/2,3*pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,pi/2,3*pi/2) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u1(11*pi/10) q[23];
u3(pi/2,0,pi/4) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi/2,pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,pi,3*pi/4) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.0420352,pi) q[23];
u3(0,pi,pi/2) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi/2,0.4712389,0) q[24];
u3(0,0,pi/2) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi,0,pi/2) q[23];
u3(pi/2,3*pi/2,3*pi/2) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi,0,3*pi/2) q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,pi/2,pi/2) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u3(-pi/2,0,0) q[23];
u3(pi/2,pi,3*pi/4) q[23];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(pi/20,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,9*pi/5,0) q[23];
u3(pi/2,0,0) q[23];
u3(pi/2,pi,3*pi/4) q[23];
u3(pi/2,3*pi/10,pi) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(pi/20,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,9*pi/5,0) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u1(11*pi/10) q[23];
u3(pi/2,pi,3*pi/4) q[23];
u3(pi/2,3*pi/10,pi) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,0.4712389,0) q[23];
u3(0,0,pi/2) q[23];
u3(pi/2,2.0420352,pi) q[24];
u3(0,pi,pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi,0,3*pi/2) q[23];
u3(pi/2,pi/2,3*pi/2) q[23];
u3(pi,0,pi/2) q[24];
u3(pi/2,3*pi/2,3*pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[24],q[23];
u3(pi/2,0,0) q[23];
u3(2*pi/5,-pi/2,pi/2) q[24];
cx q[23],q[24];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[24],q[23];
u3(pi/2,pi/2,3*pi/2) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u1(11*pi/10) q[23];
u3(pi/2,0,pi/4) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi/2,pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,pi,3*pi/4) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.0420352,pi) q[23];
u3(0,pi,pi/2) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi/2,0.4712389,0) q[24];
u3(0,0,pi/2) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi,0,pi/2) q[23];
u3(pi/2,3*pi/2,3*pi/2) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
u3(pi,0,3*pi/2) q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
cx q[23],q[24];
u3(2*pi/5,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,pi/2,pi/2) q[23];
u3(1.1,-pi/2,pi/2) q[23];
u3(1.1,0,0) q[23];
u1(1.1) q[23];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
measure q[24] -> c[0];
measure q[23] -> c[1];
