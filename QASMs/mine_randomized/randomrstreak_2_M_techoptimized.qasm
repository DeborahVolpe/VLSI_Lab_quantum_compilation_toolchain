OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
ry(2.297036035634833) q[0];
measure q->c;
