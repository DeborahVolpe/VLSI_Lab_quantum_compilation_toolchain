OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
cx q[1],q[2];
rz(1.7998600148045532*pi) q[2];
cx q[1],q[2];
cx q[1],q[0];
cx q[0],q[2];
rz(0.4002701027844222*pi) q[2];
cx q[0],q[2];
cx q[1],q[0];
rx(0.5453439987015274*pi) q[2];
measure q[2] -> c[2];
rz(2.6004100879798697*pi) q[0];
rx(0.5453439987015274*pi) q[1];
measure q[1] -> c[0];
rx(0.5453439987015274*pi) q[0];
measure q[0] -> c[1];
