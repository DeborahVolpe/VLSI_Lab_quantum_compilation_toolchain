OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[3];
ry(pi/2)  q[1];
rx(pi)  q[3];
rx(pi)  q[1];
ry(pi/2)  q[3];
cz q[0], q[1];
rx(pi)  q[3];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[3];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[3];
rx(pi)  q[1];
ry(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[3];
ry(pi)  q[1];
rx(pi)  q[0];
ry(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[3];
ry(pi)  q[1];
ry(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[1];
rx(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
ry(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
ry(pi)  q[3];
rx(pi)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
ry(pi)  q[1];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[1];
rx(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
ry(pi/2)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[3];
rx(pi)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
ry(pi/2)  q[1];
rx(pi)  q[0];
rx(pi)  q[3];
rx(pi)  q[1];
ry(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(2.151746)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[0];
rx(pi)  q[3];
ry(pi)  q[1];
ry(pi/2)  q[0];
cz q[2], q[3];
ry(pi/2)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[3];
rx(pi)  q[1];
rx(pi)  q[3];
rz(1.995482)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
ry(pi)  q[2];
rx(pi)  q[3];
ry(pi)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(1.995482)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi)  q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[3];
rx(pi)  q[2];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(4.332582)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
ry(pi)  q[1];
rx(pi)  q[3];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(4.332582)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
ry(pi)  q[1];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[1];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(0.461922)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[2];
ry(pi)  q[1];
rx(pi)  q[2];
ry(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(0.461922)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
ry(pi)  q[1];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(1.086976)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[3];
cz q[1], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[3];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[2], q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
rz(1.086976)  q[3];
ry(pi/2)  q[3];
rx(pi)  q[3];
cz q[2], q[3];
ry(pi/2)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[3];
rx(pi)  q[2];
ry(pi)  q[3];
cz q[1], q[2];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
ry(pi/2)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[0];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(2.258394)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi/2)  q[2];
cz q[0], q[1];
rx(pi)  q[2];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
ry(pi)  q[2];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[2];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[1], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(2.258394)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[1], q[2];
ry(pi/2)  q[2];
ry(pi/2)  q[1];
rx(pi)  q[2];
rx(pi)  q[1];
ry(pi)  q[2];
cz q[0], q[1];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[1];
ry(pi/2)  q[0];
ry(pi/2)  q[1];
rx(pi)  q[0];
rx(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
rz(1.228531)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
ry(pi/2)  q[0];
rx(pi)  q[1];
rx(pi)  q[0];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[1];
ry(pi)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
rz(1.228531)  q[1];
ry(pi/2)  q[1];
rx(pi)  q[1];
cz q[0], q[1];
ry(pi/2)  q[1];
ry(pi)  q[0];
rx(pi)  q[1];
ry(pi)  q[1];
measure q[3] -> c[0];
measure q[2] -> c[1];
measure q[1] -> c[2];
measure q[0] -> c[3];

