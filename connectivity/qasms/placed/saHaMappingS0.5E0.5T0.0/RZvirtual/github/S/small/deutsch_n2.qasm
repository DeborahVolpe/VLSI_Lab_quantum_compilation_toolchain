OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[2];
u2(0,pi)  q[6];
u3(pi,0,pi)  q[7];
u2(0,pi)  q[7];
cx q[6], q[7];
u2(0,pi)  q[6];
measure q[6] -> c[0];
measure q[7] -> c[1];

