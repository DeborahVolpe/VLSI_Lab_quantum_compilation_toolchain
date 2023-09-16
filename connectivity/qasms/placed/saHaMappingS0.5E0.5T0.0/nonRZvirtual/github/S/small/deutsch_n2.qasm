OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u2(0,pi)  q[7];
u3(pi,0,pi)  q[6];
u2(0,pi)  q[6];
cx q[7], q[6];
u2(0,pi)  q[7];
measure q[7] -> c[0];
measure q[6] -> c[1];

