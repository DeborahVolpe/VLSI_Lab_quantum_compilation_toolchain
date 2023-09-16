OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[8];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u1(11*pi/10) q[7];
u3(pi/2,0,pi/4) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u1(11*pi/10) q[8];
u3(pi/2,pi,3*pi/4) q[8];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u1(11*pi/10) q[10];
u3(pi/2,pi,3*pi/4) q[10];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,0.4712389,0) q[10];
u3(0,0,pi/2) q[10];
u3(pi/2,2.0420352,pi) q[7];
u3(0,pi,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi,0,3*pi/2) q[10];
u3(pi/2,pi/2,3*pi/2) q[10];
u3(pi,0,pi/2) q[7];
u3(pi/2,3*pi/2,3*pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,pi/2,3*pi/2) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u1(11*pi/10) q[10];
u3(pi/2,0,pi/4) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi/2,pi/2,pi/2) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u1(11*pi/10) q[7];
u3(pi/2,pi,3*pi/4) q[7];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u1(11*pi/10) q[11];
u3(pi/2,0,pi/4) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,2.0420352,pi) q[11];
u3(0,pi,pi/2) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi/2,0.4712389,0) q[8];
u3(0,0,pi/2) q[8];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi,0,pi/2) q[11];
u3(pi/2,3*pi/2,3*pi/2) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi,0,3*pi/2) q[8];
u3(pi/2,pi/2,3*pi/2) q[8];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,pi/2,pi/2) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u1(11*pi/10) q[11];
u3(pi/2,pi,3*pi/4) q[11];
u3(pi/2,pi/2,3*pi/2) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u1(11*pi/10) q[8];
u3(pi/2,0,pi/4) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u1(11*pi/10) q[12];
u3(pi/2,pi,3*pi/4) q[12];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u1(11*pi/10) q[13];
u3(pi/2,pi,3*pi/4) q[13];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,0.4712389,0) q[13];
u3(0,0,pi/2) q[13];
u3(pi/2,2.0420352,pi) q[14];
u3(0,pi,pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi,0,3*pi/2) q[13];
u3(pi/2,pi/2,3*pi/2) q[13];
u3(pi,0,pi/2) q[14];
u3(pi/2,3*pi/2,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,pi/2,3*pi/2) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u1(11*pi/10) q[13];
u3(pi/2,0,pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,pi/2,pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,pi,3*pi/4) q[14];
swap q[11],q[14];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,0.4712389,0) q[11];
u3(0,0,pi/2) q[11];
u3(pi/2,2.0420352,pi) q[8];
u3(0,pi,pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi,0,3*pi/2) q[11];
u3(pi/2,pi/2,3*pi/2) q[11];
u3(pi,0,pi/2) q[8];
u3(pi/2,3*pi/2,3*pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,pi/2,3*pi/2) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u3(pi/2,0,pi/4) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi/2,pi/2,pi/2) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u3(-pi/2,0,0) q[8];
u3(pi/2,pi,3*pi/4) q[8];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u1(11*pi/10) q[15];
u3(pi/2,0,pi/4) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,0.4712389,0) q[12];
u3(0,0,pi/2) q[12];
u3(pi/2,2.0420352,pi) q[15];
u3(0,pi,pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi,0,3*pi/2) q[12];
u3(pi/2,pi/2,3*pi/2) q[12];
u3(pi,0,pi/2) q[15];
u3(pi/2,3*pi/2,3*pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,pi/2,3*pi/2) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u1(11*pi/10) q[12];
u3(pi/2,0,pi/4) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
swap q[12],q[13];
swap q[10],q[12];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,2.0420352,pi) q[13];
u3(0,pi,pi/2) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,0.4712389,0) q[14];
u3(0,0,pi/2) q[14];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi,0,pi/2) q[13];
u3(pi/2,3*pi/2,3*pi/2) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi,0,3*pi/2) q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,pi/2,pi/2) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u3(-pi/2,0,0) q[13];
u3(pi/2,pi,3*pi/4) q[13];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
swap q[11],q[14];
cx q[11],q[8];
u3(pi/20,-pi/2,pi/2) q[11];
u3(pi/2,pi/2,pi/2) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u1(11*pi/10) q[15];
u3(pi/2,pi,3*pi/4) q[15];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,2.0420352,pi) q[12];
u3(0,pi,pi/2) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,0.4712389,0) q[15];
u3(0,0,pi/2) q[15];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi,0,pi/2) q[12];
u3(pi/2,3*pi/2,3*pi/2) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi,0,3*pi/2) q[15];
u3(pi/2,pi/2,3*pi/2) q[15];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,pi/2,pi/2) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u3(-pi/2,0,0) q[12];
u3(pi/2,pi,3*pi/4) q[12];
u3(pi/2,pi/2,3*pi/2) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u3(pi/2,0,pi/4) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,2.0420352,pi) q[10];
u3(0,pi,pi/2) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi/2,0.4712389,0) q[7];
u3(0,0,pi/2) q[7];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi,0,pi/2) q[10];
u3(pi/2,3*pi/2,3*pi/2) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi,0,3*pi/2) q[7];
u3(pi/2,pi/2,3*pi/2) q[7];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,pi/2,pi/2) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u3(-pi/2,0,0) q[10];
u3(pi/2,pi,3*pi/4) q[10];
swap q[10],q[12];
swap q[12],q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(pi/20,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,9*pi/5,0) q[13];
u3(pi/2,0,0) q[13];
u3(pi/2,pi,3*pi/4) q[13];
u3(pi/2,3*pi/10,pi) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(pi/20,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,9*pi/5,0) q[13];
u3(pi/2,0,pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,3*pi/10,pi) q[14];
u3(-pi/2,0,0) q[14];
u3(pi/2,pi,3*pi/4) q[14];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/20,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,9*pi/5,0) q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,pi,3*pi/4) q[12];
u3(pi/2,3*pi/10,pi) q[15];
u3(pi/2,0,pi/4) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/20,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,9*pi/5,0) q[12];
u3(pi/2,0,pi/4) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
swap q[12],q[13];
u3(pi/2,3*pi/10,pi) q[15];
u3(-pi/2,0,0) q[15];
u3(pi/2,pi,3*pi/4) q[15];
u3(pi/2,pi/2,3*pi/2) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u3(pi/2,0,pi/4) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(pi/20,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,9*pi/5,0) q[10];
u3(pi/2,0,0) q[10];
u3(pi/2,pi,3*pi/4) q[10];
u3(pi/2,3*pi/10,pi) q[7];
u3(pi/2,0,pi/4) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(pi/20,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,9*pi/5,0) q[10];
u3(pi/2,0,pi/4) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
swap q[10],q[12];
cx q[12],q[15];
u3(pi/20,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,3*pi/10,pi) q[12];
u3(pi/2,0,pi/4) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,9*pi/5,0) q[15];
u3(pi/2,0,0) q[15];
u3(pi/2,pi,3*pi/4) q[15];
cx q[12],q[15];
u3(pi/20,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,3*pi/10,pi) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u1(11*pi/10) q[12];
u3(pi/2,pi,3*pi/4) q[12];
u3(pi/2,9*pi/5,0) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u1(11*pi/10) q[15];
u3(pi/2,0,pi/4) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
u3(pi/2,3*pi/10,pi) q[7];
u3(-pi/2,0,0) q[7];
u3(pi/2,pi,3*pi/4) q[7];
cx q[10],q[7];
u3(pi/20,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,3*pi/10,pi) q[10];
u3(pi/2,0,pi/4) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi/2,9*pi/5,0) q[7];
u3(pi/2,0,0) q[7];
u3(pi/2,pi,3*pi/4) q[7];
cx q[10],q[7];
u3(pi/20,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,3*pi/10,pi) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u1(11*pi/10) q[10];
u3(pi/2,pi,3*pi/4) q[10];
swap q[10],q[12];
u3(pi/2,9*pi/5,0) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u1(11*pi/10) q[7];
u3(pi/2,0,pi/4) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,0.4712389,0) q[10];
u3(0,0,pi/2) q[10];
u3(pi/2,2.0420352,pi) q[7];
u3(0,pi,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi,0,3*pi/2) q[10];
u3(pi/2,pi/2,3*pi/2) q[10];
u3(pi,0,pi/2) q[7];
u3(pi/2,3*pi/2,3*pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[10];
u3(pi/2,0,0) q[10];
u3(2*pi/5,-pi/2,pi/2) q[7];
cx q[10],q[7];
u3(-pi/2,-pi/2,pi/2) q[10];
u1(pi/2) q[10];
cx q[7],q[10];
u3(pi/2,pi/2,3*pi/2) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u1(11*pi/10) q[10];
u3(pi/2,0,pi/4) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi/2,pi/2,pi/2) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u1(11*pi/10) q[7];
u3(pi/2,pi,3*pi/4) q[7];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,3*pi/10,pi) q[11];
u3(pi/2,0,pi/4) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi/2,9*pi/5,0) q[8];
u3(pi/2,0,0) q[8];
u3(pi/2,pi,3*pi/4) q[8];
cx q[11],q[8];
u3(pi/20,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,3*pi/10,pi) q[11];
u3(-pi/2,0,0) q[11];
u3(pi/2,pi,3*pi/4) q[11];
swap q[11],q[14];
cx q[13],q[14];
u3(pi/20,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3*pi/10,pi) q[13];
u3(pi/2,0,pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,9*pi/5,0) q[14];
u3(pi/2,0,0) q[14];
u3(pi/2,pi,3*pi/4) q[14];
cx q[13],q[14];
u3(pi/20,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3*pi/10,pi) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u1(11*pi/10) q[13];
u3(pi/2,pi,3*pi/4) q[13];
swap q[12],q[13];
u3(pi/2,9*pi/5,0) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,0,pi/4) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,0.4712389,0) q[12];
u3(0,0,pi/2) q[12];
u3(pi/2,2.0420352,pi) q[15];
u3(0,pi,pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi,0,3*pi/2) q[12];
u3(pi/2,pi/2,3*pi/2) q[12];
u3(pi,0,pi/2) q[15];
u3(pi/2,3*pi/2,3*pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(2*pi/5,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,pi/2,3*pi/2) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u1(11*pi/10) q[12];
u3(pi/2,0,pi/4) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,pi/2,pi/2) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u1(11*pi/10) q[15];
u3(pi/2,pi,3*pi/4) q[15];
u3(pi/2,9*pi/5,0) q[8];
u3(pi/2,0,pi/4) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(pi/20,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,9*pi/5,0) q[11];
u3(pi/2,0,0) q[11];
u3(pi/2,pi,3*pi/4) q[11];
u3(pi/2,3*pi/10,pi) q[8];
u3(pi/2,0,pi/4) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(pi/20,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,9*pi/5,0) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u1(11*pi/10) q[11];
u3(pi/2,0,pi/4) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
swap q[11],q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,0.4712389,0) q[13];
u3(0,0,pi/2) q[13];
u3(pi/2,2.0420352,pi) q[14];
u3(0,pi,pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi,0,3*pi/2) q[13];
u3(pi/2,pi/2,3*pi/2) q[13];
u3(pi,0,pi/2) q[14];
u3(pi/2,3*pi/2,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(2*pi/5,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,pi/2,3*pi/2) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u1(11*pi/10) q[13];
u3(pi/2,0,pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
swap q[12],q[13];
swap q[10],q[12];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,pi/2,pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u1(11*pi/10) q[14];
u3(pi/2,pi,3*pi/4) q[14];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,2.0420352,pi) q[12];
u3(0,pi,pi/2) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,0.4712389,0) q[15];
u3(0,0,pi/2) q[15];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi,0,pi/2) q[12];
u3(pi/2,3*pi/2,3*pi/2) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi,0,3*pi/2) q[15];
u3(pi/2,pi/2,3*pi/2) q[15];
cx q[12],q[15];
u3(2*pi/5,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,pi/2,pi/2) q[12];
u3(1.1,-pi/2,pi/2) q[12];
u3(1.1,0,0) q[12];
u1(1.1) q[12];
u3(pi/2,pi/2,3*pi/2) q[15];
u3(1.1,-pi/2,pi/2) q[15];
u3(1.1,0,0) q[15];
u1(1.1) q[15];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,2.0420352,pi) q[10];
u3(0,pi,pi/2) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi/2,0.4712389,0) q[7];
u3(0,0,pi/2) q[7];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi,0,pi/2) q[10];
u3(pi/2,3*pi/2,3*pi/2) q[10];
u3(pi/2,-pi/2,pi/2) q[10];
u3(pi,0,3*pi/2) q[7];
u3(pi/2,pi/2,3*pi/2) q[7];
cx q[10],q[7];
u3(2*pi/5,-pi/2,pi/2) q[10];
u3(pi/2,0,0) q[7];
cx q[7],q[10];
u3(-pi/2,-pi/2,pi/2) q[7];
u1(pi/2) q[7];
cx q[10],q[7];
u3(pi/2,pi/2,pi/2) q[10];
u3(1.1,-pi/2,pi/2) q[10];
u3(1.1,0,0) q[10];
u1(1.1) q[10];
u3(pi/2,pi/2,3*pi/2) q[7];
u3(1.1,-pi/2,pi/2) q[7];
u3(1.1,0,0) q[7];
u1(1.1) q[7];
u3(pi/2,3*pi/10,pi) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u1(11*pi/10) q[8];
u3(pi/2,pi,3*pi/4) q[8];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,2.0420352,pi) q[11];
u3(0,pi,pi/2) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi/2,0.4712389,0) q[8];
u3(0,0,pi/2) q[8];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi,0,pi/2) q[11];
u3(pi/2,3*pi/2,3*pi/2) q[11];
u3(pi/2,-pi/2,pi/2) q[11];
u3(pi,0,3*pi/2) q[8];
u3(pi/2,pi/2,3*pi/2) q[8];
cx q[11],q[8];
u3(2*pi/5,-pi/2,pi/2) q[11];
u3(pi/2,0,0) q[8];
cx q[8],q[11];
u3(-pi/2,-pi/2,pi/2) q[8];
u1(pi/2) q[8];
cx q[11],q[8];
u3(pi/2,pi/2,pi/2) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u1(11*pi/10) q[11];
u3(pi/2,pi,3*pi/4) q[11];
swap q[11],q[14];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,2.0420352,pi) q[13];
u3(0,pi,pi/2) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,0.4712389,0) q[14];
u3(0,0,pi/2) q[14];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi,0,pi/2) q[13];
u3(pi/2,3*pi/2,3*pi/2) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi,0,3*pi/2) q[14];
u3(pi/2,pi/2,3*pi/2) q[14];
cx q[13],q[14];
u3(2*pi/5,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,pi/2,pi/2) q[13];
u3(1.1,-pi/2,pi/2) q[13];
u3(1.1,0,0) q[13];
u1(1.1) q[13];
u3(pi/2,pi/2,3*pi/2) q[14];
u3(1.1,-pi/2,pi/2) q[14];
u3(1.1,0,0) q[14];
u1(1.1) q[14];
u3(pi/2,pi/2,3*pi/2) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
u1(11*pi/10) q[8];
u3(pi/2,0,pi/4) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,0.4712389,0) q[11];
u3(0,0,pi/2) q[11];
u3(pi/2,2.0420352,pi) q[8];
u3(0,pi,pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi,0,3*pi/2) q[11];
u3(pi/2,pi/2,3*pi/2) q[11];
u3(pi,0,pi/2) q[8];
u3(pi/2,3*pi/2,3*pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[11];
u3(pi/2,0,0) q[11];
u3(2*pi/5,-pi/2,pi/2) q[8];
cx q[11],q[8];
u3(-pi/2,-pi/2,pi/2) q[11];
u1(pi/2) q[11];
cx q[8],q[11];
u3(pi/2,pi/2,3*pi/2) q[11];
u3(1.1,-pi/2,pi/2) q[11];
u3(1.1,0,0) q[11];
u1(1.1) q[11];
u3(pi/2,pi/2,pi/2) q[8];
u3(1.1,-pi/2,pi/2) q[8];
u3(1.1,0,0) q[8];
u1(1.1) q[8];
measure q[7] -> c[0];
measure q[12] -> c[1];
measure q[15] -> c[2];
measure q[13] -> c[3];
measure q[14] -> c[4];
measure q[8] -> c[5];
measure q[11] -> c[6];
measure q[10] -> c[7];
