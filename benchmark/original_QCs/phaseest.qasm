// Name of Experiment: pea_3*pi/8 v3

OPENQASM 2.0;
include "qelib1.inc";


qreg q[5];
creg c[4];

h q[0];
h q[1];
h q[2];
h q[3];

//cu q[3],q[4];
rz(-3*pi/8) q[4];
cx q[3],q[4];
rz(3*pi/8) q[4];
cx q[3],q[4];

//cu q[2],q[4];
rz(-3*pi/8) q[4];
cx q[2],q[4];
rz(3*pi/8) q[4];
cx q[2],q[4];

//cu q[2],q[4];
rz(-3*pi/8) q[4];
cx q[2],q[4];
rz(3*pi/8) q[4];
cx q[2],q[4];

//cu q[1],q[4];
rz(-3*pi/8) q[4];
cx q[1],q[4];
rz(3*pi/8) q[4];
cx q[1],q[4];

//cu q[1],q[4];
rz(-3*pi/8) q[4];
cx q[1],q[4];
rz(3*pi/8) q[4];
cx q[1],q[4];

//cu q[1],q[4];
rz(-3*pi/8) q[4];
cx q[1],q[4];
rz(3*pi/8) q[4];
cx q[1],q[4];

//cu q[1],q[4];
rz(-3*pi/8) q[4];
cx q[1],q[4];
rz(3*pi/8) q[4];
cx q[1],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

//cu q[0],q[4];
rz(-3*pi/8) q[4];
cx q[0],q[4];
rz(3*pi/8) q[4];
cx q[0],q[4];

h q[0];

// cu1(-pi/2) q[0],q[1];
rz(-pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
cx q[0],q[1];

h q[1];

// cu1(-pi/4) q[0],q[2];
rz(-pi/4) q[2];
cx q[0],q[2];
rz(pi/4) q[2];
cx q[0],q[2];

// cu1(-pi/2) q[1],q[2];
rz(-pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[2];
cx q[1],q[2];

h q[2];

// cu1(-pi/8) q[0],q[3];
rz(-pi/8) q[3];
cx q[0],q[3];
rz(pi/8) q[3];
cx q[0],q[3];

// cu1(-pi/4) q[1],q[3];
rz(-pi/4) q[3];
cx q[1],q[3];
rz(pi/4) q[3];
cx q[1],q[3];

// cu1(-pi/2) q[2],q[3];
rz(-pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[3];
cx q[2],q[3];

h q[3];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
