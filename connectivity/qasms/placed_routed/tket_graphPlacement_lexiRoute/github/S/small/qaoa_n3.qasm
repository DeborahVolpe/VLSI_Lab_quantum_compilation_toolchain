OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.7998600000000018*pi) q[2];
cx q[1],q[2];
cx q[1],q[0];
swap q[0],q[1];
cx q[1],q[2];
u1(0.40026999999999546*pi) q[2];
cx q[1],q[2];
cx q[0],q[1];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[2];
measure q[2] -> c[2];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[0];
u1(0.6004100000000037*pi) q[1];
measure q[0] -> c[0];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[1];
measure q[1] -> c[1];
