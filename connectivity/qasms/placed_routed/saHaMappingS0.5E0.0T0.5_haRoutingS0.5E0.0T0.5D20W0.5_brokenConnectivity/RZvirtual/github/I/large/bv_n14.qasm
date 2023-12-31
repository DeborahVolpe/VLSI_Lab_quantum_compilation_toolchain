OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[13];
ry(pi/2)  q[3];
ry(pi/2)  q[10];
ry(pi/2)  q[11];
ry(pi/2)  q[14];
ry(pi/2)  q[13];
ry(pi/2)  q[1];
ry(pi/2)  q[9];
ry(pi/2)  q[8];
ry(pi/2)  q[12];
ry(pi/2)  q[5];
ry(pi/2)  q[6];
ry(pi/2)  q[4];
ry(pi/2)  q[2];
rx(pi)  q[7];
rx(pi)  q[3];
rx(pi)  q[10];
rx(pi)  q[11];
rx(pi)  q[14];
rx(pi)  q[13];
rx(pi)  q[1];
rx(pi)  q[9];
rx(pi)  q[8];
rx(pi)  q[12];
rx(pi)  q[5];
rx(pi)  q[6];
rx(pi)  q[4];
rx(pi)  q[2];
ry(pi/2)  q[7];
rx(pi)  q[7];
cx q[3], q[7];
ry(pi/2)  q[3];
cx q[10], q[7];
rx(pi)  q[3];
ry(pi/2)  q[10];
cx q[11], q[7];
rx(pi)  q[10];
ry(pi/2)  q[11];
cx q[14], q[7];
rx(pi)  q[11];
ry(pi/2)  q[14];
cx q[13], q[7];
rx(pi)  q[14];
ry(pi/2)  q[13];
cx q[1], q[7];
rx(pi)  q[13];
ry(pi/2)  q[1];
cx q[9], q[7];
rx(pi)  q[1];
ry(pi/2)  q[9];
cx q[8], q[7];
rx(pi)  q[9];
ry(pi/2)  q[8];
cx q[12], q[7];
rx(pi)  q[8];
ry(pi/2)  q[12];
cx q[5], q[7];
rx(pi)  q[12];
ry(pi/2)  q[5];
cx q[6], q[7];
ry(pi/2)  q[6];
rx(pi)  q[5];
cx q[4], q[7];
rx(pi)  q[6];
ry(pi/2)  q[4];
cx q[2], q[7];
rx(pi)  q[4];
ry(pi/2)  q[2];
rx(pi)  q[2];
measure q[3] -> c[0];
measure q[10] -> c[1];
measure q[11] -> c[2];
measure q[14] -> c[3];
measure q[13] -> c[4];
measure q[1] -> c[5];
measure q[9] -> c[6];
measure q[8] -> c[7];
measure q[12] -> c[8];
measure q[5] -> c[9];
measure q[6] -> c[10];
measure q[4] -> c[11];
measure q[2] -> c[12];
