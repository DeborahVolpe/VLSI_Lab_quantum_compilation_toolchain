OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q;
barrier q;
x q[1];
h q[2];
ccx q[0], q[1], q[2];
h q[2];
x q[1];
barrier q;
h q;
x q;
h q[2];
ccx q[0], q[1], q[2];
h q[2];
x q;
h q;
barrier q;
x q[1];
h q[2];
ccx q[0], q[1], q[2];
h q[2];
x q[1];
barrier q;
h q;
x q;
h q[2];
ccx q[0], q[1], q[2];
h q[2];
x q;
h q;
barrier q;
measure q->c;

