OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[15];
u2(0,pi)  q[0];
u1(pi/4)  q[1];
u1(pi/8)  q[2];
u1(pi/16)  q[3];
u1(pi/32)  q[4];
u1(pi/64)  q[5];
u1(pi/128)  q[6];
u1(pi/256)  q[7];
u1(pi/512)  q[8];
u1(pi/1024)  q[9];
u1(pi/2048)  q[10];
u1(pi/4096)  q[11];
u1(pi/8192)  q[12];
u1(pi/16384)  q[13];
u1(pi/32768)  q[14];
cx q[1], q[0];
swap q[6], q[7];
u1(-pi/4)  q[0];
cx q[1], q[0];
u1(pi/4)  q[0];
u2(0,pi)  q[1];
swap q[2], q[1];
cx q[1], q[0];
u1(-pi/8)  q[0];
cx q[1], q[0];
u1(pi/8)  q[0];
u1(pi/4)  q[1];
cx q[1], q[2];
swap q[3], q[2];
swap q[2], q[1];
u1(-pi/4)  q[3];
cx q[1], q[0];
cx q[2], q[3];
u1(-pi/16)  q[0];
u1(pi/4)  q[3];
u2(0,pi)  q[2];
cx q[1], q[0];
u1(pi/16)  q[0];
u1(pi/8)  q[1];
swap q[1], q[2];
cx q[2], q[3];
swap q[4], q[1];
cx q[1], q[0];
u1(-pi/8)  q[3];
u1(-pi/32)  q[0];
cx q[2], q[3];
cx q[1], q[0];
u1(pi/8)  q[3];
u1(pi/4)  q[2];
u1(pi/32)  q[0];
u1(pi/16)  q[1];
swap q[2], q[1];
cx q[1], q[4];
cx q[2], q[3];
swap q[5], q[3];
u1(-pi/4)  q[4];
swap q[3], q[2];
u1(-pi/16)  q[5];
swap q[2], q[1];
cx q[3], q[5];
cx q[1], q[0];
u1(pi/16)  q[5];
u1(pi/8)  q[3];
u1(-pi/64)  q[0];
cx q[1], q[0];
swap q[2], q[1];
u1(pi/64)  q[0];
cx q[1], q[4];
u1(pi/32)  q[2];
u1(pi/4)  q[4];
u2(0,pi)  q[1];
swap q[3], q[2];
swap q[2], q[1];
cx q[3], q[5];
cx q[1], q[4];
u1(-pi/32)  q[5];
swap q[7], q[4];
cx q[3], q[5];
swap q[4], q[1];
u1(-pi/8)  q[7];
u1(pi/32)  q[5];
u1(pi/16)  q[3];
cx q[1], q[0];
cx q[4], q[7];
u1(-pi/128)  q[0];
u1(pi/8)  q[7];
u1(pi/4)  q[4];
cx q[1], q[0];
u1(pi/128)  q[0];
u1(pi/64)  q[1];
swap q[4], q[1];
cx q[1], q[2];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
cx q[4], q[7];
swap q[1], q[2];
swap q[2], q[3];
swap q[6], q[7];
cx q[3], q[5];
swap q[7], q[4];
u1(-pi/4)  q[2];
u1(-pi/16)  q[6];
swap q[4], q[1];
u1(-pi/64)  q[5];
cx q[7], q[6];
cx q[1], q[0];
cx q[3], q[5];
u1(pi/16)  q[6];
u1(pi/8)  q[7];
u1(-pi/256)  q[0];
u1(pi/64)  q[5];
u1(pi/32)  q[3];
cx q[1], q[0];
swap q[4], q[1];
u1(pi/256)  q[0];
cx q[1], q[2];
u1(pi/128)  q[4];
u1(pi/4)  q[2];
u2(0,pi)  q[1];
swap q[7], q[4];
swap q[4], q[1];
cx q[1], q[2];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
swap q[4], q[1];
swap q[1], q[2];
u1(-pi/32)  q[6];
swap q[2], q[3];
cx q[7], q[6];
cx q[3], q[5];
u1(pi/32)  q[6];
u1(pi/16)  q[7];
swap q[8], q[5];
swap q[5], q[3];
u1(-pi/128)  q[8];
swap q[3], q[2];
cx q[5], q[8];
swap q[2], q[1];
u1(-pi/8)  q[3];
u1(pi/128)  q[8];
u1(pi/64)  q[5];
cx q[1], q[0];
cx q[2], q[3];
u1(-pi/512)  q[0];
u1(pi/8)  q[3];
u1(pi/4)  q[2];
cx q[1], q[0];
u1(pi/512)  q[0];
u1(pi/256)  q[1];
swap q[2], q[1];
cx q[1], q[4];
swap q[7], q[4];
swap q[4], q[1];
swap q[1], q[2];
cx q[2], q[3];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[2], q[3];
swap q[4], q[7];
swap q[3], q[5];
cx q[7], q[6];
cx q[5], q[8];
u1(-pi/4)  q[4];
swap q[9], q[8];
u1(-pi/64)  q[6];
swap q[8], q[5];
u1(-pi/256)  q[9];
cx q[7], q[6];
swap q[5], q[3];
cx q[8], q[9];
u1(pi/64)  q[6];
u1(pi/32)  q[7];
swap q[3], q[2];
u1(-pi/16)  q[5];
u1(pi/256)  q[9];
u1(pi/128)  q[8];
swap q[2], q[1];
cx q[3], q[5];
cx q[1], q[0];
u1(pi/16)  q[5];
u1(pi/8)  q[3];
u1(-pi/1024)  q[0];
cx q[1], q[0];
swap q[2], q[1];
u1(pi/1024)  q[0];
cx q[1], q[4];
u1(pi/512)  q[2];
u1(pi/4)  q[4];
u2(0,pi)  q[1];
swap q[3], q[2];
swap q[2], q[1];
cx q[1], q[4];
swap q[7], q[4];
swap q[4], q[1];
swap q[1], q[2];
swap q[2], q[3];
cx q[3], q[5];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[3], q[5];
swap q[1], q[4];
swap q[5], q[8];
swap q[4], q[7];
cx q[8], q[9];
u1(-pi/32)  q[5];
cx q[7], q[6];
u1(-pi/512)  q[9];
cx q[3], q[5];
swap q[10], q[7];
u1(-pi/128)  q[6];
cx q[8], q[9];
u1(pi/32)  q[5];
u1(pi/16)  q[3];
swap q[7], q[4];
u1(pi/512)  q[9];
u1(pi/256)  q[8];
swap q[4], q[1];
u1(-pi/8)  q[7];
cx q[1], q[0];
cx q[4], q[7];
u1(-pi/2048)  q[0];
swap q[10], q[7];
u1(pi/4)  q[4];
cx q[1], q[0];
cx q[7], q[6];
u1(pi/8)  q[10];
u1(pi/128)  q[6];
u1(pi/64)  q[7];
u1(pi/2048)  q[0];
u1(pi/1024)  q[1];
swap q[4], q[1];
cx q[1], q[2];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[10];
swap q[4], q[1];
swap q[1], q[2];
u1(-pi/16)  q[10];
swap q[2], q[3];
cx q[3], q[5];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[1], q[4];
swap q[4], q[7];
swap q[1], q[2];
cx q[7], q[6];
swap q[2], q[3];
swap q[3], q[5];
u1(-pi/256)  q[6];
swap q[5], q[8];
cx q[7], q[6];
cx q[8], q[9];
swap q[4], q[7];
u1(pi/256)  q[6];
swap q[11], q[8];
u1(-pi/1024)  q[9];
cx q[7], q[10];
u1(pi/128)  q[4];
swap q[8], q[5];
u1(pi/16)  q[10];
u1(pi/8)  q[7];
swap q[5], q[3];
u1(-pi/64)  q[8];
swap q[7], q[4];
swap q[3], q[2];
cx q[5], q[8];
swap q[2], q[1];
u1(-pi/4)  q[3];
swap q[11], q[8];
u1(pi/32)  q[5];
cx q[1], q[0];
cx q[2], q[3];
cx q[8], q[9];
u1(pi/64)  q[11];
u1(-pi/4096)  q[0];
u1(pi/4)  q[3];
u2(0,pi)  q[2];
u1(pi/1024)  q[9];
u1(pi/512)  q[8];
cx q[1], q[0];
swap q[5], q[8];
u1(pi/4096)  q[0];
u1(pi/2048)  q[1];
swap q[8], q[11];
swap q[4], q[1];
swap q[11], q[14];
swap q[1], q[2];
swap q[14], q[13];
swap q[7], q[4];
cx q[2], q[3];
swap q[13], q[12];
swap q[4], q[1];
cx q[12], q[10];
swap q[1], q[2];
swap q[2], q[3];
swap q[13], q[12];
swap q[3], q[5];
swap q[12], q[10];
cx q[5], q[8];
swap q[3], q[2];
u1(-pi/32)  q[12];
swap q[2], q[1];
cx q[13], q[12];
swap q[1], q[4];
u1(pi/32)  q[12];
u1(pi/16)  q[13];
swap q[4], q[7];
swap q[13], q[14];
cx q[7], q[6];
swap q[4], q[1];
swap q[14], q[11];
swap q[1], q[2];
swap q[10], q[7];
u1(-pi/512)  q[6];
swap q[2], q[3];
swap q[7], q[4];
swap q[3], q[5];
swap q[4], q[1];
u1(-pi/8)  q[2];
swap q[10], q[7];
swap q[5], q[8];
cx q[1], q[0];
cx q[7], q[6];
cx q[8], q[9];
u1(-pi/128)  q[5];
u1(-pi/8192)  q[0];
u1(pi/256)  q[7];
u1(pi/512)  q[6];
u1(-pi/2048)  q[9];
cx q[3], q[5];
cx q[1], q[0];
cx q[8], q[9];
swap q[4], q[1];
u1(pi/128)  q[5];
u1(pi/64)  q[3];
u1(pi/8192)  q[0];
cx q[1], q[2];
u1(pi/2048)  q[9];
u1(pi/1024)  q[8];
u1(pi/4096)  q[4];
u1(pi/8)  q[2];
u1(pi/4)  q[1];
swap q[11], q[8];
swap q[1], q[4];
swap q[8], q[5];
swap q[4], q[7];
swap q[5], q[3];
cx q[7], q[10];
cx q[3], q[2];
swap q[5], q[8];
swap q[4], q[1];
swap q[8], q[11];
swap q[1], q[2];
u1(-pi/4)  q[10];
swap q[11], q[14];
swap q[2], q[3];
swap q[14], q[13];
cx q[3], q[5];
cx q[13], q[12];
swap q[8], q[5];
swap q[14], q[11];
swap q[5], q[3];
u1(-pi/64)  q[12];
swap q[3], q[2];
cx q[13], q[12];
swap q[2], q[1];
u1(pi/64)  q[12];
u1(pi/32)  q[13];
swap q[1], q[4];
swap q[13], q[14];
swap q[4], q[7];
swap q[1], q[2];
cx q[7], q[6];
swap q[2], q[3];
swap q[3], q[5];
u1(-pi/1024)  q[6];
swap q[5], q[8];
cx q[7], q[6];
cx q[8], q[9];
swap q[4], q[7];
u1(pi/1024)  q[6];
swap q[11], q[8];
u1(-pi/4096)  q[9];
cx q[7], q[10];
u1(pi/512)  q[4];
swap q[8], q[5];
u1(pi/4)  q[10];
u2(0,pi)  q[7];
swap q[5], q[3];
u1(-pi/256)  q[8];
swap q[3], q[2];
cx q[5], q[8];
swap q[2], q[1];
swap q[11], q[8];
u1(pi/128)  q[5];
cx q[1], q[0];
u1(-pi/16)  q[2];
cx q[8], q[9];
u1(pi/256)  q[11];
u1(-pi/16384)  q[0];
cx q[3], q[2];
u1(pi/4096)  q[9];
u1(pi/2048)  q[8];
swap q[14], q[11];
cx q[1], q[0];
u1(pi/16)  q[2];
u1(pi/8)  q[3];
swap q[11], q[8];
u1(pi/16384)  q[0];
u1(pi/8192)  q[1];
swap q[3], q[2];
swap q[8], q[5];
swap q[2], q[1];
cx q[5], q[3];
swap q[8], q[11];
swap q[1], q[4];
swap q[11], q[14];
swap q[4], q[7];
swap q[14], q[13];
swap q[1], q[2];
cx q[7], q[10];
cx q[13], q[12];
swap q[2], q[3];
swap q[3], q[5];
u1(-pi/8)  q[10];
u1(-pi/128)  q[12];
swap q[5], q[8];
cx q[13], q[12];
cx q[8], q[11];
swap q[5], q[3];
u1(pi/64)  q[13];
u1(pi/128)  q[12];
swap q[3], q[2];
swap q[14], q[11];
swap q[2], q[1];
u1(-pi/512)  q[14];
swap q[1], q[4];
swap q[2], q[3];
swap q[4], q[7];
swap q[3], q[5];
cx q[7], q[6];
swap q[5], q[8];
cx q[8], q[9];
u1(-pi/2048)  q[6];
swap q[11], q[8];
u1(-pi/8192)  q[9];
cx q[7], q[6];
swap q[8], q[5];
swap q[4], q[7];
u1(pi/2048)  q[6];
swap q[5], q[3];
cx q[7], q[10];
swap q[8], q[11];
u1(pi/1024)  q[4];
swap q[3], q[2];
cx q[11], q[14];
cx q[8], q[9];
u1(pi/8)  q[10];
u1(pi/4)  q[7];
swap q[2], q[1];
u1(-pi/32)  q[3];
u1(pi/256)  q[11];
u1(pi/512)  q[14];
u1(pi/8192)  q[9];
u1(pi/4096)  q[8];
swap q[7], q[4];
cx q[1], q[0];
cx q[5], q[3];
u1(-pi/32768)  q[0];
u1(pi/32)  q[3];
u1(pi/16)  q[5];
cx q[1], q[0];
swap q[5], q[8];
u1(pi/32768)  q[0];
u1(pi/16384)  q[1];
swap q[8], q[11];
swap q[4], q[1];
swap q[11], q[14];
cx q[1], q[2];
swap q[14], q[13];
swap q[13], q[12];
swap q[14], q[11];
cx q[12], q[10];
swap q[11], q[8];
swap q[8], q[5];
swap q[11], q[14];
swap q[7], q[10];
cx q[5], q[3];
cx q[14], q[13];
swap q[10], q[12];
swap q[12], q[13];
swap q[8], q[5];
swap q[13], q[14];
swap q[5], q[3];
u1(-pi/256)  q[12];
cx q[14], q[11];
swap q[3], q[2];
cx q[13], q[12];
swap q[2], q[1];
u1(-pi/1024)  q[11];
u1(pi/128)  q[13];
u1(pi/256)  q[12];
swap q[1], q[4];
cx q[14], q[11];
swap q[4], q[7];
swap q[1], q[2];
u1(pi/512)  q[14];
u1(pi/1024)  q[11];
cx q[7], q[6];
swap q[2], q[3];
u1(-pi/16)  q[4];
swap q[13], q[14];
swap q[3], q[5];
u1(-pi/4)  q[2];
u1(-pi/4096)  q[6];
swap q[14], q[11];
cx q[13], q[12];
swap q[5], q[8];
u1(-pi/64)  q[3];
cx q[1], q[2];
cx q[7], q[6];
cx q[8], q[9];
cx q[5], q[3];
swap q[10], q[7];
u1(pi/4)  q[2];
u2(0,pi)  q[1];
u1(pi/4096)  q[6];
u1(-pi/16384)  q[9];
cx q[7], q[4];
u1(pi/32)  q[5];
u1(pi/64)  q[3];
u1(pi/2048)  q[10];
cx q[8], q[9];
u1(pi/16)  q[4];
u1(pi/8)  q[7];
swap q[5], q[3];
swap q[10], q[12];
u1(pi/16384)  q[9];
u1(pi/8192)  q[8];
swap q[7], q[4];
swap q[12], q[13];
swap q[4], q[1];
swap q[11], q[8];
cx q[13], q[14];
cx q[1], q[2];
cx q[8], q[5];
swap q[11], q[14];
swap q[3], q[2];
swap q[14], q[13];
u1(-pi/128)  q[5];
u1(-pi/2048)  q[11];
swap q[2], q[1];
swap q[13], q[12];
u1(-pi/8)  q[3];
cx q[8], q[5];
cx q[14], q[11];
swap q[1], q[4];
swap q[12], q[10];
cx q[2], q[3];
u1(pi/64)  q[8];
u1(pi/128)  q[5];
u1(pi/1024)  q[14];
u1(pi/2048)  q[11];
cx q[4], q[7];
u1(-pi/512)  q[12];
u1(pi/8)  q[3];
u1(pi/4)  q[2];
swap q[8], q[11];
swap q[10], q[7];
cx q[13], q[12];
cx q[2], q[1];
swap q[11], q[14];
cx q[7], q[6];
u1(-pi/32)  q[10];
u1(pi/256)  q[13];
u1(pi/512)  q[12];
u1(-pi/8192)  q[6];
swap q[14], q[13];
cx q[7], q[6];
swap q[13], q[12];
swap q[14], q[11];
swap q[4], q[7];
u1(pi/8192)  q[6];
swap q[11], q[8];
cx q[14], q[13];
cx q[7], q[10];
u1(pi/4096)  q[4];
cx q[8], q[5];
u1(pi/16)  q[7];
u1(pi/32)  q[10];
u1(-pi/256)  q[5];
swap q[7], q[4];
cx q[12], q[10];
cx q[8], q[5];
swap q[4], q[1];
swap q[7], q[10];
u1(pi/128)  q[8];
u1(pi/256)  q[5];
swap q[1], q[2];
swap q[10], q[12];
u1(-pi/4)  q[4];
u1(-pi/64)  q[7];
cx q[2], q[3];
swap q[12], q[13];
cx q[1], q[4];
cx q[10], q[7];
swap q[13], q[14];
u1(-pi/16)  q[3];
u1(-pi/1024)  q[12];
u1(pi/4)  q[4];
u2(0,pi)  q[1];
u1(pi/32)  q[10];
u1(pi/64)  q[7];
cx q[14], q[11];
cx q[2], q[3];
cx q[13], q[12];
swap q[10], q[7];
u1(-pi/4096)  q[11];
u1(pi/8)  q[2];
u1(pi/16)  q[3];
u1(pi/512)  q[13];
u1(pi/1024)  q[12];
cx q[14], q[11];
swap q[2], q[1];
u1(pi/2048)  q[14];
u1(pi/4096)  q[11];
cx q[1], q[4];
swap q[7], q[4];
swap q[8], q[11];
swap q[4], q[1];
swap q[11], q[14];
u1(-pi/8)  q[7];
swap q[1], q[2];
swap q[14], q[13];
cx q[4], q[7];
cx q[2], q[3];
swap q[13], q[12];
swap q[14], q[11];
u1(pi/4)  q[4];
u1(pi/8)  q[7];
cx q[12], q[10];
swap q[11], q[8];
cx q[14], q[13];
u1(-pi/32)  q[3];
cx q[4], q[1];
cx q[8], q[5];
u1(-pi/128)  q[10];
u1(-pi/2048)  q[13];
cx q[2], q[3];
u1(-pi/512)  q[5];
cx q[12], q[10];
cx q[14], q[13];
u1(pi/16)  q[2];
u1(pi/32)  q[3];
cx q[8], q[5];
u1(pi/64)  q[12];
u1(pi/128)  q[10];
u1(pi/1024)  q[14];
u1(pi/2048)  q[13];
swap q[2], q[1];
u1(pi/256)  q[8];
u1(pi/512)  q[5];
swap q[1], q[4];
swap q[12], q[13];
u1(-pi/4)  q[2];
cx q[4], q[7];
swap q[13], q[14];
cx q[1], q[2];
swap q[14], q[11];
u1(-pi/16)  q[7];
u2(0,pi)  q[1];
u1(pi/4)  q[2];
swap q[11], q[8];
cx q[4], q[7];
swap q[8], q[5];
swap q[11], q[14];
u1(pi/8)  q[4];
u1(pi/16)  q[7];
cx q[5], q[3];
swap q[14], q[13];
swap q[4], q[1];
swap q[13], q[12];
swap q[14], q[11];
u1(-pi/64)  q[3];
cx q[1], q[2];
cx q[12], q[10];
cx q[11], q[8];
cx q[5], q[3];
u1(-pi/256)  q[10];
u1(-pi/1024)  q[8];
u1(pi/32)  q[5];
u1(pi/64)  q[3];
cx q[12], q[10];
cx q[11], q[8];
swap q[5], q[3];
u1(pi/128)  q[12];
u1(pi/256)  q[10];
u1(pi/512)  q[11];
u1(pi/1024)  q[8];
swap q[3], q[2];
swap q[2], q[1];
swap q[12], q[13];
u1(-pi/8)  q[3];
swap q[1], q[4];
swap q[13], q[14];
cx q[2], q[3];
cx q[4], q[7];
swap q[14], q[11];
u1(pi/4)  q[2];
u1(pi/8)  q[3];
swap q[11], q[8];
swap q[14], q[13];
u1(-pi/32)  q[7];
cx q[2], q[1];
cx q[8], q[5];
swap q[13], q[12];
cx q[4], q[7];
cx q[12], q[10];
u1(-pi/128)  q[5];
u1(pi/16)  q[4];
u1(pi/32)  q[7];
u1(-pi/512)  q[10];
cx q[8], q[5];
swap q[4], q[1];
cx q[12], q[10];
u1(pi/64)  q[8];
u1(pi/128)  q[5];
swap q[1], q[2];
u1(pi/256)  q[12];
u1(pi/512)  q[10];
cx q[2], q[3];
swap q[8], q[5];
swap q[5], q[3];
swap q[12], q[13];
swap q[3], q[2];
swap q[13], q[14];
u1(-pi/16)  q[5];
swap q[2], q[1];
swap q[14], q[11];
cx q[3], q[5];
swap q[1], q[4];
cx q[11], q[8];
u1(pi/8)  q[3];
u1(pi/16)  q[5];
cx q[4], q[7];
u1(-pi/4)  q[1];
u1(-pi/256)  q[8];
u1(-pi/64)  q[7];
cx q[2], q[1];
cx q[11], q[8];
cx q[4], q[7];
u1(pi/4)  q[1];
u2(0,pi)  q[2];
u1(pi/128)  q[11];
u1(pi/256)  q[8];
u1(pi/32)  q[4];
u1(pi/64)  q[7];
swap q[3], q[2];
swap q[11], q[14];
cx q[2], q[1];
swap q[14], q[13];
swap q[4], q[1];
swap q[13], q[12];
swap q[1], q[2];
swap q[12], q[10];
u1(-pi/8)  q[4];
swap q[2], q[3];
cx q[10], q[7];
cx q[1], q[4];
cx q[3], q[5];
u1(-pi/128)  q[7];
u1(pi/8)  q[4];
u1(pi/4)  q[1];
u1(-pi/32)  q[5];
cx q[10], q[7];
cx q[1], q[2];
cx q[3], q[5];
u1(pi/64)  q[10];
u1(pi/128)  q[7];
u1(pi/16)  q[3];
u1(pi/32)  q[5];
swap q[10], q[12];
swap q[3], q[2];
swap q[12], q[13];
swap q[2], q[1];
swap q[13], q[14];
u1(-pi/4)  q[3];
cx q[1], q[4];
swap q[14], q[11];
cx q[2], q[3];
swap q[11], q[8];
u1(-pi/16)  q[4];
u1(pi/4)  q[3];
u2(0,pi)  q[2];
cx q[8], q[5];
cx q[1], q[4];
u1(-pi/64)  q[5];
u1(pi/16)  q[4];
u1(pi/8)  q[1];
cx q[8], q[5];
swap q[1], q[2];
u1(pi/32)  q[8];
u1(pi/64)  q[5];
cx q[2], q[3];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
u1(-pi/8)  q[5];
swap q[2], q[1];
cx q[3], q[5];
cx q[1], q[4];
u1(pi/8)  q[5];
u1(pi/4)  q[3];
u1(-pi/32)  q[4];
cx q[3], q[2];
cx q[1], q[4];
u1(pi/32)  q[4];
u1(pi/16)  q[1];
swap q[1], q[2];
swap q[2], q[3];
u1(-pi/4)  q[1];
cx q[3], q[5];
cx q[2], q[1];
u1(-pi/16)  q[5];
u1(pi/4)  q[1];
u2(0,pi)  q[2];
cx q[3], q[5];
u1(pi/16)  q[5];
u1(pi/8)  q[3];
swap q[3], q[2];
cx q[2], q[1];
u1(-pi/8)  q[1];
cx q[2], q[1];
u1(pi/8)  q[1];
u1(pi/4)  q[2];
cx q[2], q[3];
u1(-pi/4)  q[3];
cx q[2], q[3];
u1(pi/4)  q[3];
u2(0,pi)  q[2];
measure q[0] -> c[0];
measure q[9] -> c[1];
measure q[6] -> c[2];
measure q[13] -> c[3];
measure q[12] -> c[4];
measure q[14] -> c[5];
measure q[10] -> c[6];
measure q[11] -> c[7];
measure q[7] -> c[8];
measure q[8] -> c[9];
measure q[4] -> c[10];
measure q[5] -> c[11];
measure q[1] -> c[12];
measure q[3] -> c[13];
measure q[2] -> c[14];
