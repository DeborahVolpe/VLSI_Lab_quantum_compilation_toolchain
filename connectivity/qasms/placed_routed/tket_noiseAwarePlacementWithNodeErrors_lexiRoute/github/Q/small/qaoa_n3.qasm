OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[3];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
ry(0.5*pi) q[2];
ry(0.5*pi) q[4];
rx(1.0*pi) q[2];
rx(1.0*pi) q[4];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(1.7998600148045532*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
cz q[3],q[4];
rx(1.0*pi) q[2];
ry(0.5*pi) q[4];
ry(0.5*pi) q[2];
rx(1.0*pi) q[4];
rx(1.0*pi) q[2];
swap q[4],q[3];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.4002701027844222*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(0.5453439987015274*pi) q[2];
cz q[4],q[3];
measure q[2] -> c[2];
ry(0.5*pi) q[3];
rx(0.5453439987015274*pi) q[4];
measure q[4] -> c[0];
rx(1.0*pi) q[3];
rz(2.6004100879798697*pi) q[3];
rx(0.5453439987015274*pi) q[3];
measure q[3] -> c[1];
