OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

x q[1];
h q[2];
cz q[0],q[1];
tdg q[2];
h q[0];
rx(pi/2) q[1];
cz q[2],q[3];
t q[0];
t q[2];
h q[3];
y q[1];
cz q[0],q[1];
cz q[2],q[3];
z q[0];
sdg q[2];
h q[0];
