OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[15];
ry(pi/2)  q[0];
rz(pi/4)  q[1];
rz(pi/8)  q[2];
rz(pi/16)  q[3];
rz(pi/32)  q[4];
rz(pi/64)  q[5];
rz(pi/128)  q[6];
rz(pi/256)  q[7];
rz(pi/512)  q[8];
rz(pi/1024)  q[9];
rz(pi/2048)  q[10];
rz(pi/4096)  q[11];
rz(pi/8192)  q[12];
rz(pi/16384)  q[13];
rz(pi/32768)  q[14];
rx(pi)  q[0];
cx q[1], q[0];
rz(-pi/4)  q[0];
cx q[1], q[0];
rz(pi/4)  q[0];
ry(pi/2)  q[1];
rx(pi)  q[1];
cx q[2], q[0];
rz(-pi/8)  q[0];
cx q[2], q[0];
rz(pi/8)  q[0];
rz(pi/4)  q[2];
swap q[0], q[4];
cx q[2], q[1];
cx q[3], q[4];
rz(-pi/4)  q[1];
rz(-pi/16)  q[4];
cx q[2], q[1];
cx q[3], q[4];
rz(pi/4)  q[1];
ry(pi/2)  q[2];
rz(pi/16)  q[4];
rz(pi/8)  q[3];
rx(pi)  q[2];
cx q[3], q[1];
cx q[0], q[4];
rz(-pi/8)  q[1];
rz(-pi/32)  q[4];
cx q[3], q[1];
cx q[0], q[4];
rz(pi/8)  q[1];
rz(pi/4)  q[3];
rz(pi/32)  q[4];
rz(pi/16)  q[0];
swap q[4], q[6];
cx q[0], q[1];
cx q[3], q[2];
cx q[5], q[6];
rz(-pi/4)  q[2];
rz(-pi/16)  q[1];
rz(-pi/64)  q[6];
cx q[3], q[2];
cx q[0], q[1];
cx q[5], q[6];
rz(pi/4)  q[2];
ry(pi/2)  q[3];
rz(pi/16)  q[1];
rz(pi/8)  q[0];
rz(pi/64)  q[6];
rz(pi/32)  q[5];
rx(pi)  q[3];
swap q[1], q[7];
cx q[0], q[2];
cx q[5], q[7];
cx q[4], q[6];
rz(-pi/8)  q[2];
rz(-pi/32)  q[7];
rz(-pi/128)  q[6];
cx q[0], q[2];
cx q[5], q[7];
cx q[4], q[6];
rz(pi/8)  q[2];
rz(pi/4)  q[0];
rz(pi/32)  q[7];
rz(pi/16)  q[5];
rz(pi/128)  q[6];
rz(pi/64)  q[4];
cx q[0], q[3];
cx q[5], q[2];
cx q[4], q[7];
cx q[1], q[6];
rz(-pi/4)  q[3];
rz(-pi/16)  q[2];
rz(-pi/64)  q[7];
rz(-pi/256)  q[6];
cx q[0], q[3];
cx q[5], q[2];
cx q[4], q[7];
cx q[1], q[6];
rz(pi/4)  q[3];
ry(pi/2)  q[0];
rz(pi/16)  q[2];
rz(pi/8)  q[5];
rz(pi/64)  q[7];
rz(pi/32)  q[4];
rz(pi/256)  q[6];
rz(pi/128)  q[1];
rx(pi)  q[0];
cx q[5], q[3];
cx q[4], q[2];
cx q[1], q[7];
swap q[6], q[9];
cx q[8], q[9];
rz(-pi/8)  q[3];
rz(-pi/32)  q[2];
rz(-pi/128)  q[7];
rz(-pi/512)  q[9];
cx q[5], q[3];
cx q[4], q[2];
cx q[1], q[7];
cx q[8], q[9];
rz(pi/8)  q[3];
rz(pi/4)  q[5];
rz(pi/32)  q[2];
rz(pi/16)  q[4];
rz(pi/128)  q[7];
rz(pi/64)  q[1];
rz(pi/512)  q[9];
rz(pi/256)  q[8];
cx q[5], q[0];
cx q[4], q[3];
cx q[1], q[2];
cx q[8], q[7];
cx q[6], q[9];
rz(-pi/4)  q[0];
rz(-pi/16)  q[3];
rz(-pi/64)  q[2];
rz(-pi/256)  q[7];
rz(-pi/1024)  q[9];
cx q[5], q[0];
cx q[4], q[3];
cx q[1], q[2];
cx q[8], q[7];
cx q[6], q[9];
rz(pi/4)  q[0];
ry(pi/2)  q[5];
rz(pi/16)  q[3];
rz(pi/8)  q[4];
rz(pi/64)  q[2];
rz(pi/32)  q[1];
rz(pi/256)  q[7];
rz(pi/128)  q[8];
rz(pi/1024)  q[9];
rz(pi/512)  q[6];
rx(pi)  q[5];
cx q[4], q[0];
cx q[1], q[3];
swap q[8], q[3];
swap q[9], q[11];
swap q[2], q[4];
cx q[6], q[7];
rz(-pi/8)  q[0];
cx q[3], q[4];
cx q[10], q[11];
rz(-pi/32)  q[8];
rz(-pi/512)  q[7];
cx q[2], q[0];
rz(-pi/128)  q[4];
rz(-pi/2048)  q[11];
cx q[1], q[8];
cx q[6], q[7];
rz(pi/8)  q[0];
rz(pi/4)  q[2];
cx q[3], q[4];
cx q[10], q[11];
rz(pi/32)  q[8];
rz(pi/16)  q[1];
rz(pi/512)  q[7];
rz(pi/256)  q[6];
cx q[2], q[5];
rz(pi/128)  q[4];
rz(pi/64)  q[3];
rz(pi/2048)  q[11];
rz(pi/1024)  q[10];
cx q[1], q[0];
rz(-pi/4)  q[5];
cx q[3], q[8];
cx q[9], q[11];
cx q[6], q[4];
rz(-pi/16)  q[0];
cx q[2], q[5];
swap q[10], q[8];
rz(-pi/256)  q[4];
rz(-pi/4096)  q[11];
cx q[1], q[0];
rz(pi/4)  q[5];
ry(pi/2)  q[2];
cx q[8], q[7];
rz(-pi/64)  q[10];
cx q[6], q[4];
cx q[9], q[11];
rz(pi/16)  q[0];
rz(pi/8)  q[1];
rx(pi)  q[2];
rz(-pi/1024)  q[7];
cx q[3], q[10];
rz(pi/256)  q[4];
rz(pi/128)  q[6];
rz(pi/4096)  q[11];
rz(pi/2048)  q[9];
cx q[1], q[5];
cx q[8], q[7];
rz(pi/64)  q[10];
rz(pi/32)  q[3];
swap q[11], q[13];
rz(-pi/8)  q[5];
rz(pi/1024)  q[7];
rz(pi/512)  q[8];
cx q[3], q[0];
cx q[6], q[10];
cx q[12], q[13];
cx q[1], q[5];
cx q[8], q[4];
cx q[9], q[7];
rz(-pi/32)  q[0];
rz(-pi/128)  q[10];
rz(-pi/8192)  q[13];
rz(pi/8)  q[5];
rz(pi/4)  q[1];
rz(-pi/512)  q[4];
rz(-pi/2048)  q[7];
cx q[3], q[0];
cx q[6], q[10];
cx q[12], q[13];
cx q[1], q[2];
cx q[8], q[4];
cx q[9], q[7];
rz(pi/32)  q[0];
rz(pi/16)  q[3];
rz(pi/128)  q[10];
rz(pi/64)  q[6];
rz(pi/8192)  q[13];
rz(pi/4096)  q[12];
rz(-pi/4)  q[2];
rz(pi/256)  q[8];
rz(pi/512)  q[4];
rz(pi/2048)  q[7];
rz(pi/1024)  q[9];
cx q[3], q[5];
cx q[6], q[0];
cx q[11], q[13];
cx q[1], q[2];
swap q[4], q[12];
cx q[8], q[10];
rz(-pi/16)  q[5];
rz(-pi/64)  q[0];
rz(-pi/16384)  q[13];
rz(pi/4)  q[2];
ry(pi/2)  q[1];
swap q[4], q[6];
cx q[9], q[12];
rz(-pi/256)  q[10];
cx q[3], q[5];
cx q[11], q[13];
rx(pi)  q[1];
cx q[6], q[7];
rz(-pi/1024)  q[12];
swap q[0], q[3];
cx q[8], q[10];
rz(pi/16)  q[5];
rz(pi/16384)  q[13];
rz(pi/8192)  q[11];
rz(-pi/4096)  q[7];
cx q[9], q[12];
cx q[4], q[3];
rz(pi/8)  q[0];
rz(pi/128)  q[8];
rz(pi/256)  q[10];
cx q[14], q[13];
cx q[6], q[7];
rz(pi/64)  q[3];
rz(pi/32)  q[4];
rz(pi/512)  q[9];
rz(pi/1024)  q[12];
cx q[0], q[2];
rz(-pi/32768)  q[13];
rz(pi/4096)  q[7];
rz(pi/2048)  q[6];
cx q[4], q[5];
cx q[8], q[3];
cx q[9], q[10];
rz(-pi/8)  q[2];
cx q[14], q[13];
cx q[6], q[12];
cx q[11], q[7];
rz(-pi/32)  q[5];
rz(-pi/128)  q[3];
rz(-pi/512)  q[10];
cx q[0], q[2];
rz(pi/32768)  q[13];
rz(pi/16384)  q[14];
rz(-pi/2048)  q[12];
rz(-pi/8192)  q[7];
cx q[4], q[5];
cx q[8], q[3];
cx q[9], q[10];
rz(pi/8)  q[2];
rz(pi/4)  q[0];
cx q[6], q[12];
cx q[11], q[7];
rz(pi/32)  q[5];
rz(pi/16)  q[4];
rz(pi/64)  q[8];
rz(pi/128)  q[3];
rz(pi/256)  q[9];
rz(pi/512)  q[10];
cx q[0], q[1];
rz(pi/1024)  q[6];
rz(pi/2048)  q[12];
rz(pi/8192)  q[7];
rz(pi/4096)  q[11];
swap q[3], q[8];
cx q[4], q[2];
rz(-pi/4)  q[1];
cx q[3], q[5];
cx q[9], q[8];
cx q[6], q[10];
cx q[11], q[12];
cx q[14], q[7];
rz(-pi/16)  q[2];
cx q[0], q[1];
rz(-pi/64)  q[5];
rz(-pi/256)  q[8];
rz(-pi/1024)  q[10];
rz(-pi/4096)  q[12];
rz(-pi/16384)  q[7];
cx q[4], q[2];
rz(pi/4)  q[1];
ry(pi/2)  q[0];
cx q[3], q[5];
cx q[9], q[8];
cx q[6], q[10];
cx q[11], q[12];
cx q[14], q[7];
rz(pi/16)  q[2];
rz(pi/8)  q[4];
rx(pi)  q[0];
rz(pi/32)  q[3];
rz(pi/64)  q[5];
rz(pi/128)  q[9];
rz(pi/256)  q[8];
rz(pi/512)  q[6];
rz(pi/1024)  q[10];
rz(pi/2048)  q[11];
rz(pi/4096)  q[12];
rz(pi/16384)  q[7];
rz(pi/8192)  q[14];
cx q[4], q[1];
cx q[3], q[2];
cx q[9], q[5];
cx q[6], q[8];
cx q[11], q[10];
cx q[14], q[12];
rz(-pi/8)  q[1];
rz(-pi/32)  q[2];
rz(-pi/128)  q[5];
rz(-pi/512)  q[8];
rz(-pi/2048)  q[10];
rz(-pi/8192)  q[12];
cx q[4], q[1];
cx q[3], q[2];
cx q[6], q[8];
cx q[11], q[10];
cx q[14], q[12];
rz(pi/8)  q[1];
rz(pi/4)  q[4];
swap q[9], q[2];
rz(pi/16)  q[3];
rz(pi/256)  q[6];
rz(pi/512)  q[8];
rz(pi/1024)  q[11];
rz(pi/2048)  q[10];
rz(pi/4096)  q[14];
rz(pi/8192)  q[12];
cx q[4], q[0];
cx q[2], q[5];
rz(pi/32)  q[9];
swap q[8], q[14];
cx q[3], q[1];
rz(-pi/4)  q[0];
rz(pi/64)  q[2];
rz(pi/128)  q[5];
cx q[11], q[14];
cx q[8], q[10];
rz(-pi/16)  q[1];
cx q[4], q[0];
cx q[2], q[9];
cx q[6], q[5];
rz(-pi/1024)  q[14];
rz(-pi/4096)  q[10];
cx q[3], q[1];
rz(pi/4)  q[0];
ry(pi/2)  q[4];
rz(-pi/64)  q[9];
rz(-pi/256)  q[5];
cx q[11], q[14];
cx q[8], q[10];
rz(pi/8)  q[3];
rz(pi/16)  q[1];
rx(pi)  q[4];
cx q[2], q[9];
cx q[6], q[5];
rz(pi/512)  q[11];
rz(pi/1024)  q[14];
rz(pi/2048)  q[8];
rz(pi/4096)  q[10];
cx q[3], q[0];
rz(pi/32)  q[2];
rz(pi/64)  q[9];
rz(pi/128)  q[6];
rz(pi/256)  q[5];
cx q[8], q[14];
rz(-pi/8)  q[0];
cx q[2], q[1];
cx q[6], q[9];
cx q[11], q[5];
rz(-pi/2048)  q[14];
cx q[3], q[0];
rz(-pi/32)  q[1];
rz(-pi/128)  q[9];
rz(-pi/512)  q[5];
swap q[11], q[7];
cx q[8], q[14];
rz(pi/4)  q[3];
rz(pi/8)  q[0];
cx q[2], q[1];
cx q[6], q[9];
cx q[7], q[5];
rz(pi/1024)  q[8];
rz(pi/2048)  q[14];
cx q[3], q[4];
rz(pi/16)  q[2];
rz(pi/32)  q[1];
rz(pi/64)  q[6];
rz(pi/128)  q[9];
rz(pi/256)  q[7];
rz(pi/512)  q[5];
rz(-pi/4)  q[4];
swap q[6], q[3];
cx q[7], q[9];
cx q[8], q[5];
cx q[2], q[0];
cx q[3], q[1];
rz(-pi/16)  q[0];
rz(-pi/256)  q[9];
rz(-pi/1024)  q[5];
cx q[6], q[4];
rz(-pi/64)  q[1];
cx q[2], q[0];
cx q[7], q[9];
ry(pi/2)  q[6];
rz(pi/4)  q[4];
cx q[3], q[1];
swap q[5], q[7];
rz(pi/8)  q[2];
rz(pi/16)  q[0];
rz(pi/256)  q[9];
rx(pi)  q[6];
cx q[8], q[7];
rz(pi/32)  q[3];
rz(pi/64)  q[1];
rz(pi/128)  q[5];
cx q[2], q[4];
rz(pi/512)  q[8];
rz(pi/1024)  q[7];
cx q[3], q[0];
cx q[5], q[1];
rz(-pi/8)  q[4];
cx q[8], q[9];
rz(-pi/32)  q[0];
rz(-pi/128)  q[1];
cx q[2], q[4];
rz(-pi/512)  q[9];
cx q[3], q[0];
cx q[5], q[1];
rz(pi/4)  q[2];
rz(pi/8)  q[4];
cx q[8], q[9];
rz(pi/16)  q[3];
rz(pi/32)  q[0];
rz(pi/64)  q[5];
rz(pi/128)  q[1];
cx q[2], q[6];
rz(pi/256)  q[8];
rz(pi/512)  q[9];
cx q[3], q[4];
cx q[5], q[0];
rz(-pi/4)  q[6];
cx q[8], q[1];
rz(-pi/16)  q[4];
rz(-pi/64)  q[0];
cx q[2], q[6];
rz(-pi/256)  q[1];
cx q[3], q[4];
cx q[5], q[0];
rz(pi/4)  q[6];
ry(pi/2)  q[2];
cx q[8], q[1];
rz(pi/8)  q[3];
rz(pi/16)  q[4];
rz(pi/32)  q[5];
rz(pi/64)  q[0];
rx(pi)  q[2];
rz(pi/128)  q[8];
rz(pi/256)  q[1];
cx q[3], q[6];
cx q[5], q[4];
cx q[8], q[0];
rz(-pi/8)  q[6];
rz(-pi/32)  q[4];
rz(-pi/128)  q[0];
cx q[3], q[6];
cx q[5], q[4];
cx q[8], q[0];
rz(pi/8)  q[6];
rz(pi/4)  q[3];
rz(pi/16)  q[5];
rz(pi/32)  q[4];
rz(pi/64)  q[8];
rz(pi/128)  q[0];
cx q[3], q[2];
cx q[5], q[6];
cx q[8], q[4];
rz(-pi/4)  q[2];
rz(-pi/16)  q[6];
rz(-pi/64)  q[4];
cx q[3], q[2];
cx q[5], q[6];
cx q[8], q[4];
rz(pi/4)  q[2];
ry(pi/2)  q[3];
rz(pi/16)  q[6];
rz(pi/8)  q[5];
rz(pi/32)  q[8];
rz(pi/64)  q[4];
rx(pi)  q[3];
cx q[5], q[2];
cx q[8], q[6];
rz(-pi/8)  q[2];
rz(-pi/32)  q[6];
cx q[5], q[2];
cx q[8], q[6];
rz(pi/8)  q[2];
rz(pi/4)  q[5];
rz(pi/32)  q[6];
rz(pi/16)  q[8];
cx q[5], q[3];
cx q[8], q[2];
rz(-pi/4)  q[3];
rz(-pi/16)  q[2];
cx q[5], q[3];
cx q[8], q[2];
rz(pi/4)  q[3];
ry(pi/2)  q[5];
rz(pi/16)  q[2];
rz(pi/8)  q[8];
rx(pi)  q[5];
cx q[8], q[3];
rz(-pi/8)  q[3];
cx q[8], q[3];
rz(pi/8)  q[3];
rz(pi/4)  q[8];
cx q[8], q[5];
rz(-pi/4)  q[5];
cx q[8], q[5];
rz(pi/4)  q[5];
ry(pi/2)  q[8];
rx(pi)  q[8];
measure q[13] -> c[0];
measure q[11] -> c[1];
measure q[12] -> c[2];
measure q[10] -> c[3];
measure q[14] -> c[4];
measure q[7] -> c[5];
measure q[9] -> c[6];
measure q[1] -> c[7];
measure q[0] -> c[8];
measure q[4] -> c[9];
measure q[6] -> c[10];
measure q[2] -> c[11];
measure q[3] -> c[12];
measure q[5] -> c[13];
measure q[8] -> c[14];
