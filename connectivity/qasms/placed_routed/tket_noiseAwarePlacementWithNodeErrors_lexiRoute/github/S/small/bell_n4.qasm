OPENQASM 2.0;
include "qelib1.inc";

qreg q[8];
creg c[4];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u3(0.5*pi,0.0*pi,0.75*pi) q[1];
cx q[4],q[7];
u3(0.5*pi,0.0*pi,0.75*pi) q[6];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(3.75*pi,1.5*pi,0.5*pi) q[4];
u3(0.5*pi,1.5*pi,0.5*pi) q[6];
u3(3.5*pi,0.0*pi,0.0*pi) q[7];
u3(3.5*pi,0.0*pi,0.0*pi) q[4];
u3(0.5*pi,0.0*pi,0.25*pi) q[7];
u3(0.5*pi,0.0*pi,0.25*pi) q[4];
cx q[6],q[7];
cx q[1],q[4];
u3(0.25*pi,1.5*pi,0.5*pi) q[6];
u3(0.5*pi,0.0*pi,0.0*pi) q[7];
u3(0.25*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[4];
cx q[7],q[6];
cx q[4],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[7];
u3(3.5*pi,1.5*pi,0.5*pi) q[4];
u1(0.5*pi) q[7];
u1(0.5*pi) q[4];
cx q[6],q[7];
cx q[1],q[4];
u3(0.5*pi,0.5*pi,1.0*pi) q[6];
u3(0.5*pi,1.0*pi,1.0*pi) q[7];
measure q[6] -> c[3];
u3(0.5*pi,0.5*pi,1.0*pi) q[1];
u3(0.5*pi,1.0*pi,1.0*pi) q[4];
u3(0.5*pi,0.0*pi,0.0*pi) q[7];
measure q[1] -> c[1];
measure q[7] -> c[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[4];
measure q[4] -> c[0];
