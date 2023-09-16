OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[3];
u2(0.0*pi,1.0*pi) q[22];
u2(0.0*pi,1.0*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
cx q[25],q[24];
u1(1.7998600000000018*pi) q[24];
cx q[25],q[24];
cx q[25],q[22];
swap q[22],q[25];
cx q[25],q[24];
u1(0.40026999999999546*pi) q[24];
cx q[25],q[24];
cx q[22],q[25];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[24];
measure q[24] -> c[2];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[22];
u1(0.6004100000000037*pi) q[25];
measure q[22] -> c[0];
u3(0.5453439999999994*pi,1.5*pi,0.5*pi) q[25];
measure q[25] -> c[1];
