OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[10];
u2(0,pi)  q[0];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[5];
u2(0,pi)  q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u3(pi,0,pi)  q[10];
u3(pi,0,pi)  q[12];
u2(0,pi)  q[13];
u3(pi,0,pi)  q[14];
u2(0,pi)  q[12];
u2(0,pi)  q[14];
swap q[9], q[8];
cx q[10], q[12];
swap q[8], q[11];
u1(-pi/4)  q[12];
swap q[11], q[14];
swap q[14], q[13];
swap q[8], q[11];
cx q[13], q[12];
u1(pi/4)  q[12];
cx q[10], q[12];
u1(pi/4)  q[10];
u1(-pi/4)  q[12];
cx q[13], q[12];
u1(pi/4)  q[12];
swap q[13], q[12];
cx q[12], q[10];
u2(0,pi)  q[13];
u1(-pi/4)  q[10];
u1(pi/4)  q[12];
cx q[13], q[14];
cx q[12], q[10];
u1(-pi/4)  q[14];
cx q[11], q[14];
swap q[10], q[12];
u1(pi/4)  q[14];
cx q[13], q[14];
u1(pi/4)  q[13];
u1(-pi/4)  q[14];
cx q[11], q[14];
u1(pi/4)  q[14];
swap q[11], q[14];
cx q[14], q[13];
u2(0,pi)  q[11];
u1(pi/4)  q[14];
u1(-pi/4)  q[13];
cx q[11], q[8];
cx q[14], q[13];
u2(0,pi)  q[11];
u2(0,pi)  q[8];
swap q[13], q[14];
cx q[14], q[11];
u1(-pi/4)  q[11];
swap q[13], q[14];
cx q[14], q[11];
u1(pi/4)  q[11];
swap q[13], q[14];
cx q[14], q[11];
u1(pi/4)  q[14];
u1(-pi/4)  q[11];
swap q[13], q[14];
cx q[14], q[11];
u1(pi/4)  q[11];
cx q[14], q[13];
u1(pi/4)  q[14];
u1(-pi/4)  q[13];
u2(0,pi)  q[11];
cx q[14], q[13];
u2(0,pi)  q[13];
cx q[12], q[13];
u1(-pi/4)  q[13];
swap q[10], q[12];
cx q[12], q[13];
u1(pi/4)  q[13];
swap q[10], q[12];
cx q[12], q[13];
u1(pi/4)  q[12];
u1(-pi/4)  q[13];
swap q[10], q[12];
cx q[12], q[13];
u1(pi/4)  q[13];
cx q[12], q[10];
u2(0,pi)  q[13];
u1(-pi/4)  q[10];
u1(pi/4)  q[12];
cx q[12], q[10];
u1(-pi/1024)  q[12];
swap q[12], q[10];
swap q[10], q[7];
swap q[7], q[4];
swap q[4], q[1];
cx q[1], q[0];
u1(pi/1024)  q[0];
cx q[1], q[0];
u1(-pi/1024)  q[0];
u1(-pi/512)  q[1];
cx q[1], q[4];
u1(pi/512)  q[4];
cx q[1], q[4];
u1(-pi/512)  q[4];
u1(-pi/256)  q[1];
cx q[1], q[2];
u1(pi/256)  q[2];
cx q[1], q[2];
u1(-pi/256)  q[2];
u1(-pi/128)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/128)  q[3];
cx q[2], q[3];
u1(-pi/128)  q[3];
u1(-pi/64)  q[2];
swap q[2], q[1];
swap q[1], q[4];
cx q[4], q[7];
u1(pi/64)  q[7];
cx q[4], q[7];
u1(-pi/64)  q[7];
u1(-pi/32)  q[4];
swap q[4], q[1];
swap q[1], q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/32)  q[5];
cx q[3], q[5];
u1(-pi/32)  q[5];
u1(-pi/16)  q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
u1(pi/16)  q[6];
cx q[7], q[6];
u1(-pi/16)  q[6];
u1(-pi/8)  q[7];
cx q[7], q[10];
u1(pi/8)  q[10];
cx q[7], q[10];
u1(-pi/8)  q[10];
u1(-pi/4)  q[7];
swap q[7], q[10];
swap q[10], q[12];
swap q[12], q[13];
swap q[13], q[14];
swap q[14], q[11];
swap q[11], q[8];
cx q[8], q[9];
u1(pi/4)  q[9];
cx q[8], q[9];
u1(-pi/4)  q[9];
u2(0,pi)  q[8];
u1(-pi/512)  q[9];
swap q[9], q[8];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[0];
u1(pi/512)  q[0];
cx q[1], q[0];
u1(-pi/512)  q[0];
u1(-pi/256)  q[1];
cx q[1], q[2];
u1(pi/256)  q[2];
cx q[1], q[2];
u1(-pi/256)  q[2];
u1(-pi/128)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/128)  q[3];
cx q[2], q[3];
u1(-pi/128)  q[3];
u1(-pi/64)  q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/64)  q[5];
cx q[3], q[5];
u1(-pi/64)  q[5];
u1(-pi/32)  q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[4];
u1(pi/32)  q[4];
cx q[1], q[4];
u1(-pi/32)  q[4];
u1(-pi/16)  q[1];
swap q[1], q[2];
swap q[2], q[3];
swap q[3], q[5];
cx q[5], q[8];
u1(pi/16)  q[8];
cx q[5], q[8];
u1(-pi/16)  q[8];
u1(-pi/8)  q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
u1(pi/8)  q[6];
cx q[7], q[6];
u1(-pi/8)  q[6];
u1(-pi/4)  q[7];
cx q[7], q[4];
u1(pi/4)  q[4];
cx q[7], q[4];
u1(-pi/4)  q[4];
u2(0,pi)  q[7];
u1(-pi/256)  q[4];
swap q[4], q[1];
cx q[1], q[0];
u1(pi/256)  q[0];
cx q[1], q[0];
u1(-pi/256)  q[0];
u1(-pi/128)  q[1];
cx q[1], q[2];
u1(pi/128)  q[2];
cx q[1], q[2];
u1(-pi/128)  q[2];
u1(-pi/64)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/64)  q[3];
cx q[2], q[3];
u1(-pi/64)  q[3];
u1(-pi/32)  q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/32)  q[5];
cx q[3], q[5];
u1(-pi/32)  q[5];
u1(-pi/16)  q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[4];
u1(pi/16)  q[4];
cx q[1], q[4];
u1(-pi/16)  q[4];
u1(-pi/8)  q[1];
swap q[1], q[2];
swap q[2], q[3];
swap q[3], q[5];
cx q[5], q[8];
u1(pi/8)  q[8];
cx q[5], q[8];
u1(-pi/8)  q[8];
u1(-pi/4)  q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
u1(pi/4)  q[6];
cx q[7], q[6];
u1(-pi/4)  q[6];
u2(0,pi)  q[7];
u1(-pi/128)  q[6];
swap q[6], q[7];
swap q[7], q[4];
swap q[4], q[1];
cx q[1], q[0];
u1(pi/128)  q[0];
cx q[1], q[0];
u1(-pi/128)  q[0];
u1(-pi/64)  q[1];
cx q[1], q[2];
u1(pi/64)  q[2];
cx q[1], q[2];
u1(-pi/64)  q[2];
u1(-pi/32)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/32)  q[3];
cx q[2], q[3];
u1(-pi/32)  q[3];
u1(-pi/16)  q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/16)  q[5];
cx q[3], q[5];
u1(-pi/16)  q[5];
u1(-pi/8)  q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[4];
u1(pi/8)  q[4];
cx q[1], q[4];
u1(-pi/8)  q[4];
u1(-pi/4)  q[1];
swap q[1], q[2];
swap q[2], q[3];
swap q[3], q[5];
cx q[5], q[8];
u1(pi/4)  q[8];
cx q[5], q[8];
u1(-pi/4)  q[8];
u2(0,pi)  q[5];
u1(-pi/64)  q[8];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[0];
u1(pi/64)  q[0];
cx q[1], q[0];
u1(-pi/64)  q[0];
u1(-pi/32)  q[1];
cx q[1], q[2];
u1(pi/32)  q[2];
cx q[1], q[2];
u1(-pi/32)  q[2];
u1(-pi/16)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/16)  q[3];
cx q[2], q[3];
u1(-pi/16)  q[3];
u1(-pi/8)  q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/8)  q[5];
cx q[3], q[5];
u1(-pi/8)  q[5];
u1(-pi/4)  q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[4];
u1(pi/4)  q[4];
cx q[1], q[4];
u1(-pi/4)  q[4];
u2(0,pi)  q[1];
u1(-pi/32)  q[4];
swap q[4], q[1];
cx q[1], q[0];
u1(pi/32)  q[0];
cx q[1], q[0];
u1(-pi/32)  q[0];
u1(-pi/16)  q[1];
cx q[1], q[2];
u1(pi/16)  q[2];
cx q[1], q[2];
u1(-pi/16)  q[2];
u1(-pi/8)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/8)  q[3];
cx q[2], q[3];
u1(-pi/8)  q[3];
u1(-pi/4)  q[2];
swap q[2], q[3];
cx q[3], q[5];
u1(pi/4)  q[5];
cx q[3], q[5];
u1(-pi/4)  q[5];
u2(0,pi)  q[3];
u1(-pi/16)  q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[0];
u1(pi/16)  q[0];
cx q[1], q[0];
u1(-pi/16)  q[0];
u1(-pi/8)  q[1];
cx q[1], q[2];
u1(pi/8)  q[2];
cx q[1], q[2];
u1(-pi/8)  q[2];
u1(-pi/4)  q[1];
swap q[1], q[2];
cx q[2], q[3];
u1(pi/4)  q[3];
cx q[2], q[3];
u1(-pi/4)  q[3];
u2(0,pi)  q[2];
u1(-pi/8)  q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[0];
u1(pi/8)  q[0];
cx q[1], q[0];
u1(-pi/8)  q[0];
u1(-pi/4)  q[1];
cx q[1], q[2];
u1(pi/4)  q[2];
cx q[1], q[2];
u1(-pi/4)  q[2];
u2(0,pi)  q[1];
u1(-pi/4)  q[2];
swap q[2], q[1];
cx q[1], q[0];
u1(pi/4)  q[0];
cx q[1], q[0];
u1(-pi/4)  q[0];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
measure q[6] -> c[7];
measure q[7] -> c[8];
measure q[9] -> c[9];
