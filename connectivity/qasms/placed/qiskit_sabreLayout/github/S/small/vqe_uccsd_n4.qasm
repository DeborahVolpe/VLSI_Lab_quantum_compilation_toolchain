OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi) q[4];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
u2(0,pi) q[10];
u2(0,pi) q[10];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
cx q[7],q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
cx q[4],q[6];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
cx q[4],q[6];
cx q[7],q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
cx q[7],q[4];
u2(0,pi) q[4];
u2(0,pi) q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
cx q[4],q[6];
cx q[7],q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(2.151746) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
u2(0,pi) q[10];
cx q[4],q[6];
u2(0,pi) q[6];
cx q[6],q[10];
u1(1.995482) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[6];
u3(pi,pi/2,pi/2) q[6];
cx q[6],q[10];
u1(1.995482) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[6];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(4.332582) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(4.332582) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
u2(0,pi) q[10];
cx q[4],q[6];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[4];
u2(0,pi) q[6];
cx q[4],q[6];
u1(0.461922) q[6];
cx q[4],q[6];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[6];
u3(pi,pi/2,pi/2) q[6];
cx q[4],q[6];
u1(0.461922) q[6];
cx q[4],q[6];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[6];
u2(0,pi) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(1.086976) q[10];
cx q[6],q[10];
u2(0,pi) q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
cx q[7],q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
cx q[6],q[10];
u1(1.086976) q[10];
cx q[6],q[10];
u3(pi,pi/2,pi/2) q[10];
cx q[4],q[6];
u2(0,pi) q[6];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
cx q[4],q[6];
u1(2.258394) q[6];
cx q[4],q[6];
u2(0,pi) q[6];
u3(pi,pi/2,pi/2) q[6];
cx q[7],q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
cx q[4],q[6];
u1(2.258394) q[6];
cx q[4],q[6];
u3(pi,pi/2,pi/2) q[6];
cx q[7],q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[7];
u2(0,pi) q[7];
cx q[7],q[4];
u1(1.228531) q[4];
cx q[7],q[4];
u2(0,pi) q[4];
u3(pi,pi/2,pi/2) q[4];
u2(0,pi) q[7];
u3(pi,pi/2,pi/2) q[7];
cx q[7],q[4];
u1(1.228531) q[4];
cx q[7],q[4];
u3(pi,pi/2,pi/2) q[4];
u3(pi,pi/2,pi/2) q[7];
measure q[10] -> c[0];
measure q[6] -> c[1];
measure q[4] -> c[2];
measure q[7] -> c[3];
