OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
u3(0.5*pi,0.0*pi,0.75*pi) q[0];
cx q[1],q[2];
u3(0.5*pi,0.0*pi,0.75*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(3.75*pi,1.5*pi,0.5*pi) q[1];
u3(3.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
u3(3.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.5*pi,0.0*pi,0.25*pi) q[2];
u3(0.5*pi,0.0*pi,0.25*pi) q[1];
cx q[3],q[2];
cx q[0],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.25*pi,1.5*pi,0.5*pi) q[3];
u3(0.25*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[2];
u1(0.5*pi) q[1];
cx q[3],q[2];
cx q[0],q[1];
u3(0.5*pi,1.0*pi,1.0*pi) q[2];
u3(0.5*pi,0.5*pi,1.0*pi) q[3];
measure q[3] -> c[3];
u3(0.5*pi,0.5*pi,1.0*pi) q[0];
u3(0.5*pi,1.0*pi,1.0*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
measure q[0] -> c[1];
measure q[2] -> c[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
measure q[1] -> c[0];