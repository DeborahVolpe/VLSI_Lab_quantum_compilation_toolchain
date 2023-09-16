OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u3(pi,0,pi) q[4];
u3(pi,0,pi) q[6];
u2(0,pi) q[7];
cx q[4],q[7];
u1(-pi/4) q[7];
cx q[6],q[7];
u1(pi/4) q[7];
cx q[4],q[7];
u1(pi/4) q[4];
u1(-pi/4) q[7];
cx q[6],q[7];
cx q[6],q[4];
u1(-pi/4) q[4];
u1(pi/4) q[6];
cx q[6],q[4];
u1(pi/4) q[7];
u2(0,pi) q[7];
u2(0,pi) q[10];
u3(pi,0,pi) q[12];
cx q[12],q[10];
u1(-pi/4) q[10];
cx q[6],q[10];
u1(pi/4) q[10];
cx q[12],q[10];
u1(-pi/4) q[10];
u1(pi/4) q[12];
cx q[6],q[10];
u1(pi/4) q[10];
u2(0,pi) q[10];
cx q[10],q[1];
cx q[6],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[6];
cx q[6],q[12];
u2(0,pi) q[13];
cx q[4],q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u1(pi/4) q[13];
cx q[4],q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u1(pi/4) q[13];
u2(0,pi) q[13];
cx q[13],q[1];
u1(pi/4) q[4];
cx q[14],q[4];
u1(pi/4) q[14];
u1(-pi/4) q[4];
cx q[14],q[4];
u2(0,pi) q[15];
cx q[4],q[15];
u1(-pi/4) q[15];
u3(pi,0,pi) q[16];
cx q[16],q[15];
u1(pi/4) q[15];
cx q[4],q[15];
u1(-pi/4) q[15];
cx q[16],q[15];
u1(pi/4) q[15];
u2(0,pi) q[15];
u1(pi/4) q[4];
cx q[16],q[4];
u1(pi/4) q[16];
u1(-pi/4) q[4];
cx q[16],q[4];
u2(0,pi) q[19];
cx q[12],q[19];
u1(-pi/4) q[19];
cx q[14],q[19];
u1(pi/4) q[19];
cx q[12],q[19];
u1(pi/4) q[12];
u1(-pi/4) q[19];
cx q[14],q[19];
cx q[14],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[14];
cx q[14],q[12];
u1(pi/4) q[19];
u2(0,pi) q[19];
cx q[19],q[18];
cx q[15],q[18];
u2(0,pi) q[22];
cx q[12],q[22];
u1(-pi/4) q[22];
cx q[16],q[22];
u1(pi/4) q[22];
cx q[12],q[22];
u1(pi/4) q[12];
u1(-pi/4) q[22];
cx q[16],q[22];
cx q[16],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[16];
cx q[16],q[12];
u1(pi/4) q[22];
u2(0,pi) q[22];
measure q[7] -> c[0];
measure q[1] -> c[1];
measure q[18] -> c[2];
measure q[22] -> c[3];
