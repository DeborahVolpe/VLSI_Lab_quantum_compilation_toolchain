OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[8];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u1(11*pi/10) q[16];
u3(pi/2,pi,3*pi/4) q[16];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u1(11*pi/10) q[19];
u3(pi/2,pi,3*pi/4) q[19];
swap q[16],q[19];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u1(11*pi/10) q[20];
u3(pi/2,0,pi/4) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
cx q[20],q[19];
u3(2*pi/5,-pi/2,pi/2) q[20];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u1(11*pi/10) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
swap q[19],q[22];
cx q[19],q[16];
swap q[14],q[16];
u3(pi/2,0,0) q[14];
swap q[16],q[19];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,0.4712389,0) q[14];
u3(0,0,pi/2) q[14];
u3(pi/2,2.0420352,pi) q[16];
u3(0,pi,pi/2) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi,0,3*pi/2) q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(pi,0,pi/2) q[16];
u3(pi/2,3*pi/2,3*pi/2) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi/2,pi/2,pi/2) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u1(11*pi/10) q[16];
u3(pi/2,pi,3*pi/4) q[16];
swap q[14],q[16];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u1(11*pi/10) q[25];
u3(pi/2,pi,3*pi/4) q[25];
cx q[24],q[25];
u3(2*pi/5,-pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u1(11*pi/10) q[26];
u3(pi/2,pi,3*pi/4) q[26];
swap q[25],q[26];
swap q[22],q[25];
cx q[19],q[22];
u3(2*pi/5,-pi/2,pi/2) q[19];
swap q[19],q[20];
u3(pi/2,0,0) q[22];
u3(pi/2,0,0) q[25];
swap q[22],q[25];
cx q[22],q[19];
swap q[19],q[20];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[24];
swap q[25],q[26];
swap q[22],q[25];
cx q[22],q[19];
swap q[19],q[20];
u3(-pi/2,-pi/2,pi/2) q[22];
u1(pi/2) q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[22],q[25];
cx q[19],q[22];
swap q[19],q[20];
swap q[19],q[22];
u3(pi/2,0.4712389,0) q[19];
u3(0,0,pi/2) q[19];
u3(pi/2,2.0420352,pi) q[20];
u3(0,pi,pi/2) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
cx q[20],q[19];
u3(pi/2,0,0) q[19];
u3(2*pi/5,-pi/2,pi/2) q[20];
cx q[19],q[20];
u3(-pi/2,-pi/2,pi/2) q[19];
u1(pi/2) q[19];
cx q[20],q[19];
u3(pi,0,3*pi/2) q[19];
u3(pi/2,pi/2,3*pi/2) q[19];
u3(pi,0,pi/2) q[20];
u3(pi/2,3*pi/2,3*pi/2) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
cx q[20],q[19];
u3(pi/2,0,0) q[19];
u3(2*pi/5,-pi/2,pi/2) q[20];
cx q[19],q[20];
u3(-pi/2,-pi/2,pi/2) q[19];
u1(pi/2) q[19];
cx q[20],q[19];
u3(pi/2,pi/2,3*pi/2) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u1(11*pi/10) q[19];
u3(pi/2,0,pi/4) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,pi/2,pi/2) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u1(11*pi/10) q[20];
u3(pi/2,pi,3*pi/4) q[20];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[26];
u1(pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
cx q[22],q[25];
u3(pi/2,2.0420352,pi) q[22];
u3(0,pi,pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi/2,2.0420352,pi) q[24];
u3(0,pi,pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
u3(pi/2,0.4712389,0) q[25];
u3(0,0,pi/2) q[25];
swap q[24],q[25];
u3(pi/2,0.4712389,0) q[26];
u3(0,0,pi/2) q[26];
cx q[25],q[26];
swap q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[22];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[26];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
cx q[22],q[25];
u3(pi,0,pi/2) q[22];
u3(pi/2,3*pi/2,3*pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
swap q[24],q[25];
u3(pi,0,3*pi/2) q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
cx q[26],q[25];
u3(pi,0,3*pi/2) q[25];
u3(pi/2,pi/2,3*pi/2) q[25];
swap q[24],q[25];
cx q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
u3(pi,0,pi/2) q[26];
u3(pi/2,3*pi/2,3*pi/2) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[22];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[26];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[22],q[25];
cx q[25],q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
swap q[25],q[26];
cx q[25],q[22];
u3(pi/2,pi/2,3*pi/2) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u1(11*pi/10) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
swap q[19],q[22];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
swap q[16],q[19];
u3(pi/2,0,0) q[16];
cx q[16],q[14];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
cx q[14],q[16];
u3(pi/2,2.0420352,pi) q[14];
u3(0,pi,pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi/2,0.4712389,0) q[16];
u3(0,0,pi/2) q[16];
cx q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
u3(pi/2,0,0) q[16];
cx q[16],q[14];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
cx q[14],q[16];
u3(pi,0,pi/2) q[14];
u3(pi/2,3*pi/2,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi,0,3*pi/2) q[16];
u3(pi/2,pi/2,3*pi/2) q[16];
cx q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
u3(pi/2,0,0) q[16];
cx q[16],q[14];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
cx q[14],q[16];
u3(pi/2,pi/2,pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(-pi/2,0,0) q[14];
u3(pi/2,pi,3*pi/4) q[14];
u3(pi/2,pi/2,3*pi/2) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u3(pi/2,0,pi/4) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
u3(pi/2,pi/2,pi/2) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u1(11*pi/10) q[25];
u3(pi/2,pi,3*pi/4) q[25];
cx q[22],q[25];
swap q[24],q[25];
swap q[22],q[25];
cx q[22],q[19];
swap q[19],q[20];
swap q[19],q[22];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,2.0420352,pi) q[19];
u3(0,pi,pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,0.4712389,0) q[20];
u3(0,0,pi/2) q[20];
cx q[19],q[20];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi,0,pi/2) q[19];
u3(pi/2,3*pi/2,3*pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi,0,3*pi/2) q[20];
u3(pi/2,pi/2,3*pi/2) q[20];
cx q[19],q[20];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,pi/2,pi/2) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u3(-pi/2,0,0) q[19];
u3(pi/2,pi,3*pi/4) q[19];
swap q[16],q[19];
swap q[14],q[16];
u3(pi/2,pi/2,3*pi/2) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u3(pi/2,0,pi/4) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
u3(pi/2,0,0) q[24];
u3(pi/2,pi/2,pi/2) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u1(11*pi/10) q[26];
u3(pi/2,pi,3*pi/4) q[26];
swap q[25],q[26];
cx q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0.4712389,0) q[24];
u3(0,0,pi/2) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(pi/2,2.0420352,pi) q[22];
u3(0,pi,pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi/2,0.4712389,0) q[25];
u3(0,0,pi/2) q[25];
swap q[24],q[25];
u3(pi/2,2.0420352,pi) q[26];
u3(0,pi,pi/2) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
cx q[26],q[25];
swap q[22],q[25];
u3(pi/2,0,0) q[22];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
swap q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
cx q[26],q[25];
swap q[24],q[25];
cx q[22],q[25];
u3(pi,0,pi/2) q[22];
u3(pi/2,3*pi/2,3*pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi,0,3*pi/2) q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(pi,0,3*pi/2) q[25];
u3(pi/2,pi/2,3*pi/2) q[25];
u3(pi,0,pi/2) q[26];
u3(pi/2,3*pi/2,3*pi/2) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
cx q[26],q[25];
swap q[22],q[25];
u3(pi/2,pi/2,3*pi/2) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
swap q[19],q[22];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
u3(pi/2,0,0) q[14];
swap q[16],q[19];
u3(pi/20,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,9*pi/5,0) q[14];
u3(pi/2,0,0) q[14];
u3(pi/2,pi,3*pi/4) q[14];
u3(pi/2,3*pi/10,pi) q[16];
u3(pi/2,0,pi/4) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(pi/20,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,9*pi/5,0) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi/2,3*pi/10,pi) q[16];
u3(-pi/2,0,0) q[16];
u3(pi/2,pi,3*pi/4) q[16];
swap q[14],q[16];
cx q[25],q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
u3(pi/2,pi/2,pi/2) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u3(-pi/2,0,0) q[25];
u3(pi/2,pi,3*pi/4) q[25];
u3(pi/2,pi/2,pi/2) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u3(-pi/2,0,0) q[26];
u3(pi/2,pi,3*pi/4) q[26];
swap q[25],q[26];
cx q[22],q[25];
swap q[24],q[25];
swap q[22],q[25];
cx q[22],q[19];
swap q[19],q[20];
swap q[19],q[22];
u3(pi/20,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,3*pi/10,pi) q[19];
u3(pi/2,0,pi/4) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,9*pi/5,0) q[20];
u3(pi/2,0,0) q[20];
u3(pi/2,pi,3*pi/4) q[20];
cx q[19],q[20];
u3(pi/20,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,3*pi/10,pi) q[19];
u3(-pi/2,0,0) q[19];
u3(pi/2,pi,3*pi/4) q[19];
swap q[16],q[19];
swap q[14],q[16];
u3(pi/2,9*pi/5,0) q[20];
u3(pi/2,0,pi/4) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
u3(pi/2,0,0) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(pi/20,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(pi/20,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,9*pi/5,0) q[24];
u3(pi/2,0,0) q[24];
u3(pi/2,pi,3*pi/4) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(pi/2,3*pi/10,pi) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi/2,9*pi/5,0) q[25];
u3(pi/2,0,0) q[25];
u3(pi/2,pi,3*pi/4) q[25];
u3(pi/2,3*pi/10,pi) q[26];
u3(pi/2,0,pi/4) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(pi/20,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(pi/20,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[22],q[25];
u3(-pi/2,-pi/2,pi/2) q[22];
u1(pi/2) q[22];
cx q[24],q[25];
swap q[22],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[26],q[25];
swap q[22],q[25];
u3(pi/2,9*pi/5,0) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
cx q[25],q[24];
u3(pi/2,9*pi/5,0) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
u3(pi/2,3*pi/10,pi) q[25];
u3(-pi/2,0,0) q[25];
u3(pi/2,pi,3*pi/4) q[25];
cx q[22],q[25];
u3(pi/2,3*pi/10,pi) q[26];
u3(-pi/2,0,0) q[26];
u3(pi/2,pi,3*pi/4) q[26];
swap q[25],q[26];
swap q[22],q[25];
cx q[19],q[22];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
u3(pi/2,0,0) q[14];
swap q[16],q[19];
u3(pi/20,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,9*pi/5,0) q[14];
u3(pi/2,0,0) q[14];
u3(pi/2,pi,3*pi/4) q[14];
u3(pi/2,3*pi/10,pi) q[16];
u3(pi/2,0,pi/4) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(pi/20,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,9*pi/5,0) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi/2,3*pi/10,pi) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u1(11*pi/10) q[16];
u3(pi/2,pi,3*pi/4) q[16];
swap q[14],q[16];
u3(pi/20,-pi/2,pi/2) q[20];
swap q[24],q[25];
swap q[22],q[25];
cx q[22],q[19];
u3(pi/2,0,0) q[19];
swap q[19],q[20];
u3(pi/20,-pi/2,pi/2) q[22];
swap q[19],q[22];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,3*pi/10,pi) q[19];
u3(pi/2,0,pi/4) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,9*pi/5,0) q[20];
u3(pi/2,0,0) q[20];
u3(pi/2,pi,3*pi/4) q[20];
cx q[19],q[20];
u3(pi/20,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,3*pi/10,pi) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u1(11*pi/10) q[19];
u3(pi/2,pi,3*pi/4) q[19];
swap q[16],q[19];
swap q[14],q[16];
u3(pi/2,9*pi/5,0) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u1(11*pi/10) q[20];
u3(pi/2,0,pi/4) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
u3(pi/20,-pi/2,pi/2) q[24];
u3(pi/2,0,0) q[25];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[24];
swap q[25],q[26];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
u3(-pi/2,-pi/2,pi/2) q[26];
u1(pi/2) q[26];
swap q[25],q[26];
cx q[24],q[25];
swap q[22],q[25];
u3(pi/2,9*pi/5,0) q[22];
u3(pi/2,0,0) q[22];
u3(pi/2,pi,3*pi/4) q[22];
u3(pi/2,3*pi/10,pi) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[25],q[26];
u3(pi/2,3*pi/10,pi) q[25];
u3(pi/2,0,pi/4) q[25];
u3(pi/2,-pi/2,pi/2) q[25];
swap q[22],q[25];
cx q[24],q[25];
swap q[22],q[25];
u3(pi/2,0,0) q[22];
u3(pi/20,-pi/2,pi/2) q[24];
u3(pi/2,9*pi/5,0) q[26];
u3(pi/2,0,0) q[26];
u3(pi/2,pi,3*pi/4) q[26];
cx q[25],q[26];
u3(pi/20,-pi/2,pi/2) q[25];
swap q[24],q[25];
cx q[22],q[25];
u3(-pi/2,-pi/2,pi/2) q[22];
u1(pi/2) q[22];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[24];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[22],q[25];
cx q[26],q[25];
swap q[24],q[25];
u3(pi/2,9*pi/5,0) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,0,pi/4) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
cx q[25],q[22];
u3(pi/2,9*pi/5,0) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u1(11*pi/10) q[22];
u3(pi/2,0,pi/4) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi/2,3*pi/10,pi) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u1(11*pi/10) q[25];
u3(pi/2,pi,3*pi/4) q[25];
u3(pi/2,3*pi/10,pi) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u1(11*pi/10) q[26];
u3(pi/2,pi,3*pi/4) q[26];
swap q[25],q[26];
cx q[22],q[25];
swap q[25],q[26];
swap q[22],q[25];
cx q[19],q[22];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
u3(pi/2,0,0) q[14];
swap q[16],q[19];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,0.4712389,0) q[14];
u3(0,0,pi/2) q[14];
u3(pi/2,2.0420352,pi) q[16];
u3(0,pi,pi/2) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi,0,3*pi/2) q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(pi,0,pi/2) q[16];
u3(pi/2,3*pi/2,3*pi/2) q[16];
u3(pi/2,-pi/2,pi/2) q[16];
cx q[16],q[14];
u3(pi/2,0,0) q[14];
u3(2*pi/5,-pi/2,pi/2) q[16];
cx q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[16],q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u3(pi/2,pi/2,pi/2) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u1(11*pi/10) q[16];
u3(pi/2,pi,3*pi/4) q[16];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[20];
swap q[24],q[25];
swap q[22],q[25];
cx q[22],q[19];
u3(pi/2,0,0) q[19];
swap q[19],q[20];
u3(2*pi/5,-pi/2,pi/2) q[22];
swap q[19],q[22];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,2.0420352,pi) q[19];
u3(0,pi,pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,0.4712389,0) q[20];
u3(0,0,pi/2) q[20];
cx q[19],q[20];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi,0,pi/2) q[19];
u3(pi/2,3*pi/2,3*pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi,0,3*pi/2) q[20];
u3(pi/2,pi/2,3*pi/2) q[20];
cx q[19],q[20];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
cx q[20],q[19];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
cx q[19],q[20];
u3(pi/2,pi/2,pi/2) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u1(11*pi/10) q[19];
u3(pi/2,pi,3*pi/4) q[19];
u3(pi/2,pi/2,3*pi/2) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u1(11*pi/10) q[20];
u3(pi/2,0,pi/4) q[20];
u3(pi/2,-pi/2,pi/2) q[20];
u3(2*pi/5,-pi/2,pi/2) q[24];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(pi/2,0,0) q[26];
cx q[26],q[25];
swap q[24],q[25];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[26];
u1(pi/2) q[26];
cx q[25],q[26];
swap q[22],q[25];
u3(pi/2,2.0420352,pi) q[22];
u3(0,pi,pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
cx q[25],q[24];
u3(pi/2,0.4712389,0) q[24];
u3(0,0,pi/2) q[24];
u3(pi/2,2.0420352,pi) q[25];
u3(0,pi,pi/2) q[25];
u3(pi/2,-pi/2,pi/2) q[25];
swap q[22],q[25];
u3(pi/2,0.4712389,0) q[26];
u3(0,0,pi/2) q[26];
cx q[25],q[26];
swap q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
u3(pi/2,0,0) q[26];
swap q[25],q[26];
cx q[25],q[22];
swap q[25],q[26];
cx q[24],q[25];
swap q[22],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
u3(-pi/2,-pi/2,pi/2) q[26];
u1(pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
cx q[22],q[25];
u3(pi,0,pi/2) q[22];
u3(pi/2,3*pi/2,3*pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi,0,pi/2) q[24];
u3(pi/2,3*pi/2,3*pi/2) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
u3(pi,0,3*pi/2) q[25];
u3(pi/2,pi/2,3*pi/2) q[25];
u3(pi,0,3*pi/2) q[26];
u3(pi/2,pi/2,3*pi/2) q[26];
swap q[25],q[26];
cx q[24],q[25];
u3(2*pi/5,-pi/2,pi/2) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
swap q[24],q[25];
u3(pi/2,0,0) q[26];
cx q[26],q[25];
swap q[24],q[25];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[26];
u1(pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
cx q[22],q[25];
u3(pi/2,pi/2,pi/2) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
u1(11*pi/10) q[22];
u3(pi/2,pi,3*pi/4) q[22];
swap q[19],q[22];
cx q[16],q[19];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi/2,0,0) q[16];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
swap q[19],q[20];
cx q[16],q[19];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
swap q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(pi/2,2.0420352,pi) q[14];
u3(0,pi,pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi/2,0.4712389,0) q[16];
u3(0,0,pi/2) q[16];
swap q[14],q[16];
u3(pi/2,2.0420352,pi) q[19];
u3(0,pi,pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi/2,0.4712389,0) q[20];
u3(0,0,pi/2) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi/2,0,0) q[16];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
swap q[19],q[20];
cx q[16],q[19];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
swap q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(pi,0,pi/2) q[14];
u3(pi/2,3*pi/2,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi,0,3*pi/2) q[16];
u3(pi/2,pi/2,3*pi/2) q[16];
swap q[14],q[16];
u3(pi,0,pi/2) q[19];
u3(pi/2,3*pi/2,3*pi/2) q[19];
u3(pi/2,-pi/2,pi/2) q[19];
u3(pi,0,3*pi/2) q[20];
u3(pi/2,pi/2,3*pi/2) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi/2,0,0) q[16];
swap q[14],q[16];
u3(2*pi/5,-pi/2,pi/2) q[19];
u3(pi/2,0,0) q[20];
swap q[19],q[20];
cx q[19],q[16];
swap q[14],q[16];
swap q[19],q[20];
cx q[16],q[19];
u3(-pi/2,-pi/2,pi/2) q[16];
u1(pi/2) q[16];
swap q[14],q[16];
u3(-pi/2,-pi/2,pi/2) q[20];
u1(pi/2) q[20];
swap q[19],q[20];
cx q[16],q[19];
swap q[14],q[16];
u3(pi/2,pi/2,pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
swap q[19],q[20];
cx q[19],q[16];
u3(pi/2,pi/2,3*pi/2) q[16];
u3(1.1,-pi/2,pi/2) q[16];
u3(1.1,0,0) q[16];
u1(1.1) q[16];
u3(pi/2,pi/2,pi/2) q[19];
u3(1.1,-pi/2,pi/2) q[19];
u3(1.1,0,0) q[19];
u1(1.1) q[19];
u3(pi/2,pi/2,3*pi/2) q[20];
u3(1.1,-pi/2,pi/2) q[20];
u3(1.1,0,0) q[20];
u1(1.1) q[20];
u3(pi/2,pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
u1(11*pi/10) q[24];
u3(pi/2,pi,3*pi/4) q[24];
u3(pi/2,pi/2,3*pi/2) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u1(11*pi/10) q[25];
u3(pi/2,0,pi/4) q[25];
u3(pi/2,-pi/2,pi/2) q[25];
u3(pi/2,pi/2,3*pi/2) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
u1(11*pi/10) q[26];
u3(pi/2,0,pi/4) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[25],q[22];
u3(pi/2,0,0) q[22];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
swap q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0.4712389,0) q[24];
u3(0,0,pi/2) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(pi/2,2.0420352,pi) q[22];
u3(0,pi,pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi/2,0.4712389,0) q[25];
u3(0,0,pi/2) q[25];
u3(pi/2,2.0420352,pi) q[26];
u3(0,pi,pi/2) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
swap q[25],q[26];
cx q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[22];
u3(pi/2,0,0) q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
swap q[25],q[26];
cx q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
swap q[25],q[26];
cx q[25],q[22];
u3(-pi/2,-pi/2,pi/2) q[25];
u1(pi/2) q[25];
swap q[24],q[25];
cx q[26],q[25];
swap q[24],q[25];
cx q[22],q[25];
u3(pi,0,pi/2) q[22];
u3(pi/2,3*pi/2,3*pi/2) q[22];
u3(pi/2,-pi/2,pi/2) q[22];
u3(pi,0,3*pi/2) q[24];
u3(pi/2,pi/2,3*pi/2) q[24];
u3(pi,0,3*pi/2) q[25];
u3(pi/2,pi/2,3*pi/2) q[25];
swap q[24],q[25];
u3(pi,0,pi/2) q[26];
u3(pi/2,3*pi/2,3*pi/2) q[26];
u3(pi/2,-pi/2,pi/2) q[26];
cx q[26],q[25];
swap q[22],q[25];
u3(pi/2,0,0) q[22];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(2*pi/5,-pi/2,pi/2) q[25];
swap q[22],q[25];
u3(2*pi/5,-pi/2,pi/2) q[26];
cx q[25],q[26];
swap q[22],q[25];
u3(-pi/2,-pi/2,pi/2) q[22];
u1(pi/2) q[22];
cx q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
swap q[25],q[26];
cx q[25],q[22];
u3(pi/2,pi/2,3*pi/2) q[22];
u3(1.1,-pi/2,pi/2) q[22];
u3(1.1,0,0) q[22];
u1(1.1) q[22];
swap q[24],q[25];
u3(pi/2,pi/2,pi/2) q[24];
u3(1.1,-pi/2,pi/2) q[24];
u3(1.1,0,0) q[24];
u1(1.1) q[24];
cx q[26],q[25];
u3(pi/2,pi/2,3*pi/2) q[25];
u3(1.1,-pi/2,pi/2) q[25];
u3(1.1,0,0) q[25];
u1(1.1) q[25];
u3(pi/2,pi/2,pi/2) q[26];
u3(1.1,-pi/2,pi/2) q[26];
u3(1.1,0,0) q[26];
u1(1.1) q[26];
measure q[16] -> c[0];
measure q[14] -> c[1];
measure q[20] -> c[2];
measure q[26] -> c[3];
measure q[25] -> c[4];
measure q[24] -> c[5];
measure q[22] -> c[6];
measure q[19] -> c[7];
