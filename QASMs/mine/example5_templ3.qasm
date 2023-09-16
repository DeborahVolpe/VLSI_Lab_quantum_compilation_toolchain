OPENQASM 2.0;
include "qelib1.inc";

qreg q[6];
creg c[6];

s q[1];
t q[2];
x q[3];
x q[4];
s q[5];
x q[1];
h q[5];
z q[1];
x q[3];
z q[5];
cz q[0],q[1];
cz q[2],q[3];
tdg q[4];
cz q[4],q[5];
t q[3];
t q[4];
z q[5];
y q[3];
cz q[4],q[5];
x q[4];
h q[5];
y q[4];
sdg q[5];
h q[4];
x q[4];
measure q->c;

