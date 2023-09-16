OPENQASM 2.0;
include "qelib1.inc";

qreg q[16];
creg c[16];
measure q[5] -> c[10];
measure q[8] -> c[11];
measure q[9] -> c[12];
measure q[11] -> c[13];
measure q[14] -> c[14];
measure q[15] -> c[15];
u1(0.25*pi) q[0];
u1(0.25*pi) q[1];
u2(0.0*pi,1.0*pi) q[2];
u1(0.25*pi) q[3];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u1(0.25*pi) q[7];
u2(0.0*pi,1.0*pi) q[10];
u1(0.25*pi) q[12];
u1(0.25*pi) q[13];
cx q[1],q[0];
u1(0.25*pi) q[2];
u1(0.25*pi) q[4];
u1(0.25*pi) q[6];
u1(0.25*pi) q[10];
cx q[2],q[1];
u1(1.75*pi) q[1];
cx q[1],q[2];
cx q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
u1(1.75*pi) q[0];
u1(1.75*pi) q[1];
cx q[2],q[1];
cx q[1],q[2];
cx q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
measure q[0] -> c[0];
u1(0.25*pi) q[1];
swap q[4],q[1];
cx q[1],q[2];
u1(1.75*pi) q[2];
cx q[2],q[1];
cx q[3],q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
cx q[3],q[2];
cx q[3],q[2];
u1(1.75*pi) q[2];
u1(1.75*pi) q[3];
cx q[1],q[2];
swap q[3],q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[3],q[2];
u1(0.25*pi) q[1];
u1(0.25*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
swap q[1],q[4];
u1(0.25*pi) q[3];
cx q[2],q[1];
cx q[4],q[7];
cx q[3],q[2];
cx q[7],q[4];
u1(1.75*pi) q[2];
cx q[10],q[7];
cx q[2],q[3];
cx q[7],q[4];
cx q[1],q[2];
u1(1.75*pi) q[4];
cx q[10],q[7];
cx q[2],q[3];
cx q[7],q[10];
cx q[1],q[2];
u1(0.25*pi) q[3];
cx q[7],q[4];
u1(0.25*pi) q[10];
cx q[1],q[2];
u1(1.75*pi) q[4];
u1(1.75*pi) q[7];
u1(1.75*pi) q[1];
u1(1.75*pi) q[2];
cx q[7],q[4];
cx q[3],q[2];
cx q[10],q[7];
swap q[1],q[2];
cx q[7],q[4];
cx q[2],q[3];
cx q[10],q[7];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[3];
cx q[7],q[10];
cx q[2],q[1];
u1(0.25*pi) q[3];
cx q[4],q[7];
u2(0.0*pi,1.0*pi) q[10];
measure q[2] -> c[1];
u1(0.25*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u1(0.25*pi) q[7];
u1(0.25*pi) q[10];
swap q[3],q[2];
u1(0.25*pi) q[4];
cx q[10],q[12];
swap q[2],q[1];
cx q[4],q[7];
cx q[1],q[4];
cx q[4],q[7];
cx q[1],q[4];
cx q[4],q[1];
u1(1.75*pi) q[1];
cx q[7],q[4];
u1(0.25*pi) q[4];
cx q[4],q[1];
cx q[7],q[4];
cx q[4],q[1];
u1(1.75*pi) q[1];
cx q[7],q[4];
cx q[4],q[1];
u1(1.75*pi) q[7];
cx q[7],q[4];
u2(0.0*pi,1.0*pi) q[4];
u1(0.25*pi) q[4];
swap q[7],q[4];
cx q[1],q[4];
swap q[6],q[7];
u2(0.0*pi,1.0*pi) q[1];
u1(0.25*pi) q[4];
cx q[7],q[10];
u1(0.25*pi) q[1];
u1(1.75*pi) q[10];
cx q[1],q[2];
cx q[10],q[7];
cx q[4],q[1];
cx q[12],q[10];
cx q[1],q[2];
cx q[10],q[7];
cx q[4],q[1];
u1(0.25*pi) q[7];
cx q[12],q[10];
cx q[1],q[4];
cx q[12],q[10];
cx q[2],q[1];
u1(1.75*pi) q[4];
u1(1.75*pi) q[10];
u1(1.75*pi) q[12];
u1(0.25*pi) q[1];
cx q[7],q[10];
cx q[1],q[4];
swap q[12],q[10];
cx q[2],q[1];
cx q[10],q[7];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[7];
cx q[12],q[10];
cx q[2],q[1];
u1(1.75*pi) q[4];
u2(0.0*pi,1.0*pi) q[7];
u1(0.25*pi) q[10];
u2(0.0*pi,1.0*pi) q[12];
cx q[1],q[4];
u1(1.75*pi) q[2];
u1(0.25*pi) q[7];
u1(0.25*pi) q[12];
cx q[2],q[1];
swap q[6],q[7];
u2(0.0*pi,1.0*pi) q[1];
cx q[7],q[10];
u1(0.25*pi) q[1];
cx q[10],q[7];
swap q[4],q[1];
cx q[12],q[10];
cx q[1],q[2];
cx q[10],q[7];
cx q[2],q[1];
u1(1.75*pi) q[7];
cx q[12],q[10];
measure q[2] -> c[2];
u1(0.25*pi) q[1];
cx q[10],q[12];
cx q[10],q[7];
u1(0.25*pi) q[12];
u1(1.75*pi) q[7];
u1(1.75*pi) q[10];
cx q[10],q[7];
cx q[12],q[10];
cx q[10],q[7];
cx q[12],q[10];
cx q[10],q[12];
cx q[7],q[10];
u2(0.0*pi,1.0*pi) q[12];
u2(0.0*pi,1.0*pi) q[7];
u1(0.25*pi) q[10];
u1(0.25*pi) q[12];
u1(0.25*pi) q[7];
cx q[12],q[13];
swap q[6],q[7];
swap q[10],q[7];
cx q[4],q[7];
cx q[10],q[12];
cx q[7],q[4];
u1(1.75*pi) q[12];
cx q[6],q[7];
cx q[12],q[10];
cx q[7],q[4];
cx q[13],q[12];
u1(1.75*pi) q[4];
cx q[6],q[7];
cx q[12],q[10];
cx q[7],q[6];
u1(0.25*pi) q[10];
cx q[13],q[12];
cx q[7],q[4];
u1(0.25*pi) q[6];
cx q[13],q[12];
u1(1.75*pi) q[4];
u1(1.75*pi) q[7];
u1(1.75*pi) q[12];
u1(1.75*pi) q[13];
swap q[6],q[7];
cx q[10],q[12];
cx q[7],q[4];
swap q[13],q[12];
cx q[6],q[7];
cx q[12],q[10];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[10];
cx q[13],q[12];
u1(0.25*pi) q[7];
u1(0.25*pi) q[12];
u2(0.0*pi,1.0*pi) q[13];
swap q[7],q[10];
u1(0.25*pi) q[13];
swap q[6],q[7];
cx q[10],q[12];
cx q[4],q[7];
cx q[12],q[10];
u2(0.0*pi,1.0*pi) q[4];
u1(0.25*pi) q[7];
cx q[13],q[12];
u1(0.25*pi) q[4];
cx q[12],q[10];
cx q[4],q[1];
u1(1.75*pi) q[10];
cx q[13],q[12];
cx q[7],q[4];
cx q[12],q[13];
cx q[4],q[1];
cx q[12],q[10];
u1(0.25*pi) q[13];
cx q[7],q[4];
u1(1.75*pi) q[10];
u1(1.75*pi) q[12];
cx q[4],q[7];
cx q[12],q[10];
cx q[1],q[4];
u1(1.75*pi) q[7];
cx q[13],q[12];
u1(0.25*pi) q[4];
cx q[12],q[10];
cx q[4],q[7];
cx q[13],q[12];
cx q[1],q[4];
cx q[12],q[13];
cx q[4],q[7];
cx q[10],q[12];
u2(0.0*pi,1.0*pi) q[13];
measure q[10] -> c[7];
cx q[1],q[4];
u1(1.75*pi) q[7];
u1(0.25*pi) q[12];
u1(1.75*pi) q[1];
cx q[4],q[7];
swap q[12],q[10];
cx q[1],q[4];
swap q[13],q[12];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[4];
u1(0.25*pi) q[4];
swap q[1],q[4];
cx q[7],q[4];
cx q[4],q[7];
measure q[4] -> c[3];
u1(0.25*pi) q[7];
swap q[1],q[4];
cx q[10],q[7];
cx q[7],q[10];
cx q[4],q[7];
cx q[7],q[10];
cx q[4],q[7];
u1(1.75*pi) q[10];
cx q[7],q[4];
u1(0.25*pi) q[4];
cx q[7],q[10];
u1(1.75*pi) q[7];
u1(1.75*pi) q[10];
cx q[7],q[10];
cx q[4],q[7];
cx q[7],q[10];
cx q[4],q[7];
cx q[7],q[4];
u2(0.0*pi,1.0*pi) q[4];
cx q[10],q[7];
cx q[7],q[10];
measure q[7] -> c[4];
measure q[10] -> c[5];
swap q[6],q[7];
swap q[12],q[10];
cx q[4],q[7];
measure q[4] -> c[6];
cx q[10],q[7];
measure q[10] -> c[8];
measure q[7] -> c[9];
