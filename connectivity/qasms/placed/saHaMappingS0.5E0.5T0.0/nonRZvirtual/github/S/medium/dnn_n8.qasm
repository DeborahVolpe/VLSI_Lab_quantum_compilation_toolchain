OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[8];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[5];
u1(11*pi/10)  q[3];
u1(11*pi/10)  q[2];
u1(11*pi/10)  q[0];
u1(11*pi/10)  q[4];
u1(11*pi/10)  q[1];
u1(11*pi/10)  q[6];
u1(11*pi/10)  q[7];
u1(11*pi/10)  q[5];
u3(pi/2,0,pi/4)  q[3];
u3(pi/2,pi,3*pi/4)  q[2];
u3(pi/2,0,pi/4)  q[0];
u3(pi/2,pi,3*pi/4)  q[4];
u3(pi/2,0,pi/4)  q[1];
u3(pi/2,pi,3*pi/4)  q[6];
u3(pi/2,0,pi/4)  q[7];
u3(pi/2,pi,3*pi/4)  q[5];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[7];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[2], q[3];
cx q[4], q[0];
cx q[6], q[1];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[2];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[5];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(pi/2,2.0420352,pi)  q[3];
u3(pi/2,0.4712389,0)  q[2];
u3(pi/2,2.0420352,pi)  q[0];
u3(pi/2,0.4712389,0)  q[4];
u3(pi/2,2.0420352,pi)  q[1];
u3(pi/2,0.4712389,0)  q[6];
u3(pi/2,2.0420352,pi)  q[7];
u3(pi/2,0.4712389,0)  q[5];
u3(0,pi,pi/2)  q[3];
u3(0,0,pi/2)  q[2];
u3(0,pi,pi/2)  q[0];
u3(0,0,pi/2)  q[4];
u3(0,pi,pi/2)  q[1];
u3(0,0,pi/2)  q[6];
u3(0,pi,pi/2)  q[7];
u3(0,0,pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[7];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[2], q[3];
cx q[4], q[0];
cx q[6], q[1];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[2];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[5];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(pi,0,pi/2)  q[3];
u3(pi,0,3*pi/2)  q[2];
u3(pi,0,pi/2)  q[0];
u3(pi,0,3*pi/2)  q[4];
u3(pi,0,pi/2)  q[1];
u3(pi,0,3*pi/2)  q[6];
u3(pi,0,pi/2)  q[7];
u3(pi,0,3*pi/2)  q[5];
u3(pi/2,3*pi/2,3*pi/2)  q[3];
u3(pi/2,pi/2,3*pi/2)  q[2];
u3(pi/2,3*pi/2,3*pi/2)  q[0];
u3(pi/2,pi/2,3*pi/2)  q[4];
u3(pi/2,3*pi/2,3*pi/2)  q[1];
u3(pi/2,pi/2,3*pi/2)  q[6];
u3(pi/2,3*pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[7];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[2], q[3];
cx q[4], q[0];
cx q[6], q[1];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[2];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[5];
cx q[3], q[2];
cx q[0], q[4];
cx q[1], q[6];
cx q[7], q[5];
u3(pi/2,pi/2,pi/2)  q[3];
u3(pi/2,pi/2,3*pi/2)  q[2];
u3(pi/2,pi/2,pi/2)  q[0];
u3(pi/2,pi/2,3*pi/2)  q[4];
u3(pi/2,pi/2,pi/2)  q[1];
u3(pi/2,pi/2,3*pi/2)  q[6];
u3(pi/2,pi/2,pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[5];
u1(11*pi/10)  q[3];
u1(11*pi/10)  q[2];
u1(11*pi/10)  q[0];
u1(11*pi/10)  q[4];
u1(11*pi/10)  q[1];
u1(11*pi/10)  q[6];
u1(11*pi/10)  q[7];
u1(11*pi/10)  q[5];
u3(pi/2,pi,3*pi/4)  q[3];
u3(pi/2,0,pi/4)  q[2];
u3(pi/2,pi,3*pi/4)  q[0];
u3(pi/2,0,pi/4)  q[4];
u3(pi/2,pi,3*pi/4)  q[1];
u3(pi/2,0,pi/4)  q[6];
u3(pi/2,pi,3*pi/4)  q[7];
u3(pi/2,0,pi/4)  q[5];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[0], q[2];
cx q[1], q[4];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[0];
u1(pi/2)  q[1];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,2.0420352,pi)  q[2];
u3(pi/2,0.4712389,0)  q[0];
u3(pi/2,2.0420352,pi)  q[4];
u3(pi/2,0.4712389,0)  q[1];
u3(pi/2,2.0420352,pi)  q[6];
u3(pi/2,0.4712389,0)  q[7];
u3(pi/2,0.4712389,0)  q[3];
u3(pi/2,2.0420352,pi)  q[5];
u3(0,pi,pi/2)  q[2];
u3(0,0,pi/2)  q[0];
u3(0,pi,pi/2)  q[4];
u3(0,0,pi/2)  q[1];
u3(0,pi,pi/2)  q[6];
u3(0,0,pi/2)  q[7];
u3(0,0,pi/2)  q[3];
u3(0,pi,pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[0], q[2];
cx q[1], q[4];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[0];
u1(pi/2)  q[1];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(pi,0,pi/2)  q[2];
u3(pi,0,3*pi/2)  q[0];
u3(pi,0,pi/2)  q[4];
u3(pi,0,3*pi/2)  q[1];
u3(pi,0,pi/2)  q[6];
u3(pi,0,3*pi/2)  q[7];
u3(pi,0,3*pi/2)  q[3];
u3(pi,0,pi/2)  q[5];
u3(pi/2,3*pi/2,3*pi/2)  q[2];
u3(pi/2,pi/2,3*pi/2)  q[0];
u3(pi/2,3*pi/2,3*pi/2)  q[4];
u3(pi/2,pi/2,3*pi/2)  q[1];
u3(pi/2,3*pi/2,3*pi/2)  q[6];
u3(pi/2,pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[3];
u3(pi/2,3*pi/2,3*pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[0], q[2];
cx q[1], q[4];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[0];
u1(pi/2)  q[1];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[2], q[0];
cx q[4], q[1];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,pi/2,pi/2)  q[2];
u3(pi/2,pi/2,3*pi/2)  q[0];
u3(pi/2,pi/2,pi/2)  q[4];
u3(pi/2,pi/2,3*pi/2)  q[1];
u3(pi/2,pi/2,pi/2)  q[6];
u3(pi/2,pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[3];
u3(pi/2,pi/2,pi/2)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[5];
u3(-pi/2,0,0)  q[2];
u3(pi/2,0,pi/4)  q[0];
u3(-pi/2,0,0)  q[4];
u3(pi/2,0,pi/4)  q[1];
u3(-pi/2,0,0)  q[6];
u3(pi/2,0,pi/4)  q[7];
u3(pi/2,0,pi/4)  q[3];
u3(-pi/2,0,0)  q[5];
u3(pi/2,pi,3*pi/4)  q[2];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,pi,3*pi/4)  q[4];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,pi,3*pi/4)  q[6];
u3(pi/2,-pi/2,pi/2)  q[7];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,pi,3*pi/4)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/20,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(pi/20,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(pi/20,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(pi/20,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[4], q[0];
cx q[6], q[1];
cx q[2], q[3];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[2];
u1(pi/2)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/2,3*pi/10,pi)  q[0];
u3(pi/2,9*pi/5,0)  q[4];
u3(pi/2,3*pi/10,pi)  q[1];
u3(pi/2,9*pi/5,0)  q[6];
u3(pi/2,3*pi/10,pi)  q[3];
u3(pi/2,9*pi/5,0)  q[2];
u3(pi/2,3*pi/10,pi)  q[7];
u3(pi/2,9*pi/5,0)  q[5];
u3(pi/2,0,pi/4)  q[0];
u3(pi/2,0,0)  q[4];
u3(pi/2,0,pi/4)  q[1];
u3(pi/2,0,0)  q[6];
u3(pi/2,0,pi/4)  q[3];
u3(pi/2,0,0)  q[2];
u3(pi/2,0,pi/4)  q[7];
u3(pi/2,0,0)  q[5];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,pi,3*pi/4)  q[4];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,pi,3*pi/4)  q[6];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,pi,3*pi/4)  q[2];
u3(pi/2,-pi/2,pi/2)  q[7];
u3(pi/2,pi,3*pi/4)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/20,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(pi/20,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(pi/20,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(pi/20,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[4], q[0];
cx q[6], q[1];
cx q[2], q[3];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[2];
u1(pi/2)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/2,3*pi/10,pi)  q[0];
u3(pi/2,9*pi/5,0)  q[4];
u3(pi/2,3*pi/10,pi)  q[1];
u3(pi/2,9*pi/5,0)  q[6];
u3(pi/2,3*pi/10,pi)  q[3];
u3(pi/2,9*pi/5,0)  q[2];
u3(pi/2,3*pi/10,pi)  q[7];
u3(pi/2,9*pi/5,0)  q[5];
u3(-pi/2,0,0)  q[0];
u3(pi/2,0,pi/4)  q[4];
u3(-pi/2,0,0)  q[1];
u3(pi/2,0,pi/4)  q[6];
u3(-pi/2,0,0)  q[3];
u3(pi/2,0,pi/4)  q[2];
u3(-pi/2,0,0)  q[7];
u3(pi/2,0,pi/4)  q[5];
u3(pi/2,pi,3*pi/4)  q[0];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,pi,3*pi/4)  q[1];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,pi,3*pi/4)  q[3];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,pi,3*pi/4)  q[7];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/20,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(pi/20,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(pi/20,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(pi/20,-pi/2,pi/2)  q[5];
cx q[1], q[4];
cx q[0], q[2];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[1];
u1(pi/2)  q[0];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,3*pi/10,pi)  q[4];
u3(pi/2,9*pi/5,0)  q[1];
u3(pi/2,3*pi/10,pi)  q[2];
u3(pi/2,9*pi/5,0)  q[0];
u3(pi/2,3*pi/10,pi)  q[6];
u3(pi/2,9*pi/5,0)  q[7];
u3(pi/2,9*pi/5,0)  q[3];
u3(pi/2,3*pi/10,pi)  q[5];
u3(pi/2,0,pi/4)  q[4];
u3(pi/2,0,0)  q[1];
u3(pi/2,0,pi/4)  q[2];
u3(pi/2,0,0)  q[0];
u3(pi/2,0,pi/4)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(pi/2,0,pi/4)  q[5];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,pi,3*pi/4)  q[1];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,pi,3*pi/4)  q[0];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,pi,3*pi/4)  q[7];
u3(pi/2,pi,3*pi/4)  q[3];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/20,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(pi/20,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(pi/20,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(pi/20,-pi/2,pi/2)  q[5];
cx q[1], q[4];
cx q[0], q[2];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[1];
u1(pi/2)  q[0];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,3*pi/10,pi)  q[4];
u3(pi/2,9*pi/5,0)  q[1];
u3(pi/2,3*pi/10,pi)  q[2];
u3(pi/2,9*pi/5,0)  q[0];
u3(pi/2,3*pi/10,pi)  q[6];
u3(pi/2,9*pi/5,0)  q[7];
u3(pi/2,9*pi/5,0)  q[3];
u3(pi/2,3*pi/10,pi)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[5];
u1(11*pi/10)  q[4];
u1(11*pi/10)  q[1];
u1(11*pi/10)  q[2];
u1(11*pi/10)  q[0];
u1(11*pi/10)  q[6];
u1(11*pi/10)  q[7];
u1(11*pi/10)  q[3];
u1(11*pi/10)  q[5];
u3(pi/2,pi,3*pi/4)  q[4];
u3(pi/2,0,pi/4)  q[1];
u3(pi/2,pi,3*pi/4)  q[2];
u3(pi/2,0,pi/4)  q[0];
u3(pi/2,pi,3*pi/4)  q[6];
u3(pi/2,0,pi/4)  q[7];
u3(pi/2,0,pi/4)  q[3];
u3(pi/2,pi,3*pi/4)  q[5];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[7];
u3(pi/2,-pi/2,pi/2)  q[3];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[4], q[0];
cx q[6], q[1];
cx q[2], q[3];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[2];
u1(pi/2)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/2,2.0420352,pi)  q[0];
u3(pi/2,0.4712389,0)  q[4];
u3(pi/2,2.0420352,pi)  q[1];
u3(pi/2,0.4712389,0)  q[6];
u3(pi/2,2.0420352,pi)  q[3];
u3(pi/2,0.4712389,0)  q[2];
u3(pi/2,2.0420352,pi)  q[7];
u3(pi/2,0.4712389,0)  q[5];
u3(0,pi,pi/2)  q[0];
u3(0,0,pi/2)  q[4];
u3(0,pi,pi/2)  q[1];
u3(0,0,pi/2)  q[6];
u3(0,pi,pi/2)  q[3];
u3(0,0,pi/2)  q[2];
u3(0,pi,pi/2)  q[7];
u3(0,0,pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[7];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[4], q[0];
cx q[6], q[1];
cx q[2], q[3];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[2];
u1(pi/2)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi,0,pi/2)  q[0];
u3(pi,0,3*pi/2)  q[4];
u3(pi,0,pi/2)  q[1];
u3(pi,0,3*pi/2)  q[6];
u3(pi,0,pi/2)  q[3];
u3(pi,0,3*pi/2)  q[2];
u3(pi,0,pi/2)  q[7];
u3(pi,0,3*pi/2)  q[5];
u3(pi/2,3*pi/2,3*pi/2)  q[0];
u3(pi/2,pi/2,3*pi/2)  q[4];
u3(pi/2,3*pi/2,3*pi/2)  q[1];
u3(pi/2,pi/2,3*pi/2)  q[6];
u3(pi/2,3*pi/2,3*pi/2)  q[3];
u3(pi/2,pi/2,3*pi/2)  q[2];
u3(pi/2,3*pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[7];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(2*pi/5,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[4];
u3(2*pi/5,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[6];
u3(2*pi/5,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u3(2*pi/5,-pi/2,pi/2)  q[7];
u3(pi/2,0,0)  q[5];
cx q[4], q[0];
cx q[6], q[1];
cx q[2], q[3];
cx q[5], q[7];
u3(-pi/2,-pi/2,pi/2)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[6];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
u1(pi/2)  q[4];
u1(pi/2)  q[6];
u1(pi/2)  q[2];
u1(pi/2)  q[5];
cx q[0], q[4];
cx q[1], q[6];
cx q[3], q[2];
cx q[7], q[5];
u3(pi/2,pi/2,pi/2)  q[0];
u3(pi/2,pi/2,3*pi/2)  q[4];
u3(pi/2,pi/2,pi/2)  q[1];
u3(pi/2,pi/2,3*pi/2)  q[6];
u3(pi/2,pi/2,pi/2)  q[3];
u3(pi/2,pi/2,3*pi/2)  q[2];
u3(pi/2,pi/2,pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[5];
u1(11*pi/10)  q[0];
u1(11*pi/10)  q[4];
u1(11*pi/10)  q[1];
u1(11*pi/10)  q[6];
u1(11*pi/10)  q[3];
u1(11*pi/10)  q[2];
u1(11*pi/10)  q[7];
u1(11*pi/10)  q[5];
u3(pi/2,pi,3*pi/4)  q[0];
u3(pi/2,0,pi/4)  q[4];
u3(pi/2,pi,3*pi/4)  q[1];
u3(pi/2,0,pi/4)  q[6];
u3(pi/2,pi,3*pi/4)  q[3];
u3(pi/2,0,pi/4)  q[2];
u3(pi/2,pi,3*pi/4)  q[7];
u3(pi/2,0,pi/4)  q[5];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[1], q[4];
cx q[0], q[2];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[1];
u1(pi/2)  q[0];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,2.0420352,pi)  q[4];
u3(pi/2,0.4712389,0)  q[1];
u3(pi/2,2.0420352,pi)  q[2];
u3(pi/2,0.4712389,0)  q[0];
u3(pi/2,2.0420352,pi)  q[6];
u3(pi/2,0.4712389,0)  q[7];
u3(pi/2,0.4712389,0)  q[3];
u3(pi/2,2.0420352,pi)  q[5];
u3(0,pi,pi/2)  q[4];
u3(0,0,pi/2)  q[1];
u3(0,pi,pi/2)  q[2];
u3(0,0,pi/2)  q[0];
u3(0,pi,pi/2)  q[6];
u3(0,0,pi/2)  q[7];
u3(0,0,pi/2)  q[3];
u3(0,pi,pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[1], q[4];
cx q[0], q[2];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[1];
u1(pi/2)  q[0];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi,0,pi/2)  q[4];
u3(pi,0,3*pi/2)  q[1];
u3(pi,0,pi/2)  q[2];
u3(pi,0,3*pi/2)  q[0];
u3(pi,0,pi/2)  q[6];
u3(pi,0,3*pi/2)  q[7];
u3(pi,0,3*pi/2)  q[3];
u3(pi,0,pi/2)  q[5];
u3(pi/2,3*pi/2,3*pi/2)  q[4];
u3(pi/2,pi/2,3*pi/2)  q[1];
u3(pi/2,3*pi/2,3*pi/2)  q[2];
u3(pi/2,pi/2,3*pi/2)  q[0];
u3(pi/2,3*pi/2,3*pi/2)  q[6];
u3(pi/2,pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[3];
u3(pi/2,3*pi/2,3*pi/2)  q[5];
u3(pi/2,-pi/2,pi/2)  q[4];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[6];
u3(pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(2*pi/5,-pi/2,pi/2)  q[4];
u3(pi/2,0,0)  q[1];
u3(2*pi/5,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[0];
u3(2*pi/5,-pi/2,pi/2)  q[6];
u3(pi/2,0,0)  q[7];
u3(pi/2,0,0)  q[3];
u3(2*pi/5,-pi/2,pi/2)  q[5];
cx q[1], q[4];
cx q[0], q[2];
cx q[7], q[6];
cx q[3], q[5];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[0];
u3(-pi/2,-pi/2,pi/2)  q[7];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[1];
u1(pi/2)  q[0];
u1(pi/2)  q[7];
u1(pi/2)  q[3];
cx q[4], q[1];
cx q[2], q[0];
cx q[6], q[7];
cx q[5], q[3];
u3(pi/2,pi/2,pi/2)  q[4];
u3(pi/2,pi/2,3*pi/2)  q[1];
u3(pi/2,pi/2,pi/2)  q[2];
u3(pi/2,pi/2,3*pi/2)  q[0];
u3(pi/2,pi/2,pi/2)  q[6];
u3(pi/2,pi/2,3*pi/2)  q[7];
u3(pi/2,pi/2,3*pi/2)  q[3];
u3(pi/2,pi/2,pi/2)  q[5];
u3(1.09999999999318,-pi/2,pi/2)  q[4];
u3(1.09999999999318,-pi/2,pi/2)  q[1];
u3(1.09999999999318,-pi/2,pi/2)  q[2];
u3(1.09999999999318,-pi/2,pi/2)  q[0];
u3(1.09999999999318,-pi/2,pi/2)  q[6];
u3(1.09999999999318,-pi/2,pi/2)  q[7];
u3(1.09999999999318,-pi/2,pi/2)  q[3];
u3(1.09999999999318,-pi/2,pi/2)  q[5];
u3(1.09999999999318,0,0)  q[4];
u3(1.09999999999318,0,0)  q[1];
u3(1.09999999999318,0,0)  q[2];
u3(1.09999999999318,0,0)  q[0];
u3(1.09999999999318,0,0)  q[6];
u3(1.09999999999318,0,0)  q[7];
u3(1.09999999999318,0,0)  q[3];
u3(1.09999999999318,0,0)  q[5];
u1(1.09999999999318)  q[4];
u1(1.09999999999318)  q[1];
u1(1.09999999999318)  q[2];
u1(1.09999999999318)  q[0];
u1(1.09999999999318)  q[6];
u1(1.09999999999318)  q[7];
u1(1.09999999999318)  q[3];
u1(1.09999999999318)  q[5];
measure q[3] -> c[0];
measure q[2] -> c[1];
measure q[0] -> c[2];
measure q[4] -> c[3];
measure q[1] -> c[4];
measure q[6] -> c[5];
measure q[7] -> c[6];
measure q[5] -> c[7];

