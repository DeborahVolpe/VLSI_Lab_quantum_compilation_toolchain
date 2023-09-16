OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
cx q[0],q[5];
u2(0.7853981634051035, -3.14159265358469) q[5];
cx q[3],q[1];
cx q[5],q[3];
cx q[1],q[5];
u1(-0.7853981634) q[3];
cx q[1],q[3];
u1(-0.7853981634) q[1];
u1(-0.7853981634) q[3];
u1(0.7853981634) q[5];
cx q[5],q[3];
cx q[1],q[5];
cx q[3],q[1];
u1(0.7853981634) q[3];
u1(0.7853981634) q[5];
cx q[3],q[0];
cx q[5],q[3];
cx q[0],q[5];
u1(-0.7853981634) q[3];
cx q[0],q[3];
u1(-0.7853981634) q[0];
u1(-0.7853981634) q[3];
u1(0.7853981634) q[5];
cx q[5],q[3];
cx q[0],q[5];
cx q[3],q[0];
cx q[2],q[6];
u2(0.7853981634051035, -3.14159265358469) q[6];
u1(0.7853981634) q[0];
u1(0.7853981634) q[3];
cx q[3],q[0];
cx q[6],q[3];
cx q[0],q[6];
u1(-0.7853981634) q[3];
cx q[0],q[3];
u1(-0.7853981634) q[0];
u1(-0.7853981634) q[3];
u1(0.7853981634) q[6];
cx q[6],q[3];
cx q[0],q[6];
cx q[3],q[0];
u1(0.7853981634) q[3];
u1(0.7853981634) q[6];
cx q[3],q[2];
cx q[6],q[3];
cx q[2],q[6];
u1(-0.7853981634) q[3];
cx q[2],q[3];
u1(-0.7853981634) q[2];
u1(-0.7853981634) q[3];
u1(0.7853981634) q[6];
cx q[6],q[3];
cx q[2],q[6];
cx q[3],q[2];
cx q[5],q[6];
u2(0.7853981634051035, -3.14159265358469) q[5];
u1(0.7853981634) q[6];
cx q[5],q[4];
cx q[6],q[5];
cx q[4],q[6];
u1(-0.7853981634) q[5];
cx q[4],q[5];
u1(-0.7853981634) q[4];
u1(-0.7853981634) q[5];
u1(0.7853981634) q[6];
cx q[6],q[5];
cx q[4],q[6];
cx q[5],q[4];
u2(0, 0) q[6];
measure q->c;
