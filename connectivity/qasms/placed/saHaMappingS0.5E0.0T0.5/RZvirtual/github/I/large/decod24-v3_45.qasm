OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[16];
rx(pi)  q[13];
rx(pi)  q[11];
rz(pi/4)  q[14];
rz(pi/4)  q[10];
rz(pi/4)  q[12];
ry(pi/2)  q[13];
rz(pi/4)  q[11];
cx q[14], q[10];
rx(pi)  q[13];
cx q[12], q[11];
rz(pi/4)  q[13];
cx q[13], q[12];
cx q[11], q[13];
rz(-pi/4)  q[12];
rz(pi/4)  q[13];
cx q[11], q[12];
rz(-pi/4)  q[11];
rz(-pi/4)  q[12];
cx q[13], q[12];
cx q[11], q[13];
ry(pi/2)  q[13];
cx q[12], q[11];
rx(pi)  q[13];
rz(pi/4)  q[11];
ry(pi/2)  q[12];
ry(pi/2)  q[13];
rx(pi)  q[12];
rx(pi)  q[13];
rz(pi/4)  q[12];
rz(pi/4)  q[13];
cx q[12], q[14];
rz(-pi/4)  q[14];
cx q[10], q[12];
cx q[10], q[14];
rz(pi/4)  q[12];
rz(-pi/4)  q[14];
rz(-pi/4)  q[10];
cx q[12], q[14];
cx q[10], q[12];
cx q[14], q[10];
ry(pi/2)  q[12];
rz(pi/4)  q[14];
rz(pi/4)  q[10];
rx(pi)  q[12];
cx q[14], q[10];
rz(pi/4)  q[12];
cx q[12], q[11];
cx q[13], q[12];
cx q[11], q[13];
rz(-pi/4)  q[12];
rz(pi/4)  q[13];
cx q[11], q[12];
rz(-pi/4)  q[11];
rz(-pi/4)  q[12];
cx q[13], q[12];
cx q[11], q[13];
ry(pi/2)  q[13];
cx q[12], q[11];
rx(pi)  q[13];
rz(pi/4)  q[11];
ry(pi/2)  q[12];
rz(pi/4)  q[13];
rx(pi)  q[12];
rz(pi/4)  q[12];
cx q[12], q[14];
rz(-pi/4)  q[14];
cx q[10], q[12];
cx q[10], q[14];
rz(pi/4)  q[12];
rz(-pi/4)  q[14];
rz(-pi/4)  q[10];
cx q[12], q[14];
cx q[10], q[12];
cx q[14], q[10];
ry(pi/2)  q[12];
rz(pi/4)  q[14];
ry(pi/2)  q[10];
rx(pi)  q[12];
cx q[11], q[14];
rx(pi)  q[10];
rz(pi/4)  q[12];
rz(pi/4)  q[10];
cx q[12], q[13];
cx q[10], q[12];
cx q[13], q[10];
rz(-pi/4)  q[12];
rz(pi/4)  q[10];
cx q[13], q[12];
rz(-pi/4)  q[13];
rz(-pi/4)  q[12];
cx q[10], q[12];
cx q[13], q[10];
ry(pi/2)  q[10];
cx q[12], q[13];
rx(pi)  q[10];
rz(pi/4)  q[13];
ry(pi/2)  q[12];
ry(pi/2)  q[10];
rx(pi)  q[12];
rx(pi)  q[10];
rz(pi/4)  q[12];
rz(pi/4)  q[10];
cx q[12], q[11];
rz(-pi/4)  q[11];
cx q[14], q[12];
cx q[14], q[11];
rz(pi/4)  q[12];
rz(-pi/4)  q[11];
rz(-pi/4)  q[14];
cx q[12], q[11];
cx q[14], q[12];
cx q[11], q[14];
ry(pi/2)  q[12];
rz(pi/4)  q[11];
rz(pi/4)  q[14];
rx(pi)  q[12];
cx q[11], q[14];
rz(pi/4)  q[12];
cx q[12], q[13];
cx q[10], q[12];
cx q[13], q[10];
rz(-pi/4)  q[12];
rz(pi/4)  q[10];
cx q[13], q[12];
rz(-pi/4)  q[13];
rz(-pi/4)  q[12];
cx q[10], q[12];
cx q[13], q[10];
ry(pi/2)  q[10];
cx q[12], q[13];
rx(pi)  q[10];
rz(pi/4)  q[13];
ry(pi/2)  q[12];
rx(pi)  q[12];
rz(pi/4)  q[12];
cx q[12], q[11];
rz(-pi/4)  q[11];
cx q[14], q[12];
cx q[14], q[11];
rz(pi/4)  q[12];
rz(-pi/4)  q[11];
rz(-pi/4)  q[14];
cx q[12], q[11];
cx q[14], q[12];
cx q[11], q[14];
ry(pi/2)  q[12];
ry(pi/2)  q[11];
rz(pi/4)  q[14];
rx(pi)  q[12];
rx(pi)  q[11];
cx q[14], q[13];
rz(pi/4)  q[11];
cx q[11], q[14];
cx q[13], q[11];
rz(-pi/4)  q[14];
rz(pi/4)  q[11];
cx q[13], q[14];
rz(-pi/4)  q[13];
rz(-pi/4)  q[14];
cx q[11], q[14];
cx q[13], q[11];
ry(pi/2)  q[11];
cx q[14], q[13];
rx(pi)  q[11];
rx(pi)  q[13];
cx q[10], q[14];
rx(pi)  q[11];
rx(pi)  q[10];
measure q[13] -> c[0];
measure q[11] -> c[1];
measure q[14] -> c[2];
measure q[10] -> c[3];
measure q[12] -> c[4];
measure q[7] -> c[5];
measure q[2] -> c[6];
measure q[5] -> c[7];
measure q[16] -> c[8];
measure q[6] -> c[9];
measure q[0] -> c[10];
measure q[3] -> c[11];
measure q[9] -> c[12];
measure q[4] -> c[13];
measure q[8] -> c[14];
measure q[1] -> c[15];

