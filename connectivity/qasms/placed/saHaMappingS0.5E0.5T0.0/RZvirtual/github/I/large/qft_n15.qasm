OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[15];
ry(pi/2)  q[9];
rz(pi/4)  q[2];
rz(pi/8)  q[8];
rz(pi/16)  q[11];
rz(pi/32)  q[12];
rz(pi/64)  q[7];
rz(pi/128)  q[3];
rz(pi/256)  q[6];
rz(pi/512)  q[14];
rz(pi/1024)  q[16];
rz(pi/2048)  q[4];
rz(pi/4096)  q[10];
rz(pi/8192)  q[13];
rz(pi/16384)  q[5];
rz(pi/32768)  q[15];
rx(pi)  q[9];
cx q[2], q[9];
rz(-pi/4)  q[9];
cx q[2], q[9];
rz(pi/4)  q[9];
ry(pi/2)  q[2];
rx(pi)  q[2];
cx q[8], q[9];
rz(-pi/8)  q[9];
cx q[8], q[9];
rz(pi/8)  q[9];
rz(pi/4)  q[8];
cx q[8], q[2];
cx q[11], q[9];
rz(-pi/4)  q[2];
rz(-pi/16)  q[9];
cx q[8], q[2];
cx q[11], q[9];
rz(pi/4)  q[2];
ry(pi/2)  q[8];
rz(pi/16)  q[9];
rz(pi/8)  q[11];
rx(pi)  q[8];
cx q[11], q[2];
cx q[12], q[9];
rz(-pi/8)  q[2];
rz(-pi/32)  q[9];
cx q[11], q[2];
cx q[12], q[9];
rz(pi/8)  q[2];
rz(pi/4)  q[11];
rz(pi/32)  q[9];
rz(pi/16)  q[12];
cx q[11], q[8];
cx q[12], q[2];
cx q[7], q[9];
rz(-pi/4)  q[8];
rz(-pi/16)  q[2];
rz(-pi/64)  q[9];
cx q[11], q[8];
cx q[12], q[2];
cx q[7], q[9];
rz(pi/4)  q[8];
ry(pi/2)  q[11];
rz(pi/16)  q[2];
rz(pi/8)  q[12];
rz(pi/64)  q[9];
rz(pi/32)  q[7];
rx(pi)  q[11];
cx q[12], q[8];
cx q[7], q[2];
cx q[3], q[9];
rz(-pi/8)  q[8];
rz(-pi/32)  q[2];
rz(-pi/128)  q[9];
cx q[12], q[8];
cx q[7], q[2];
cx q[3], q[9];
rz(pi/8)  q[8];
rz(pi/4)  q[12];
rz(pi/32)  q[2];
rz(pi/16)  q[7];
rz(pi/128)  q[9];
rz(pi/64)  q[3];
cx q[12], q[11];
cx q[7], q[8];
cx q[3], q[2];
cx q[6], q[9];
rz(-pi/4)  q[11];
rz(-pi/16)  q[8];
rz(-pi/64)  q[2];
rz(-pi/256)  q[9];
cx q[12], q[11];
cx q[7], q[8];
cx q[3], q[2];
cx q[6], q[9];
rz(pi/4)  q[11];
ry(pi/2)  q[12];
rz(pi/16)  q[8];
rz(pi/8)  q[7];
rz(pi/64)  q[2];
rz(pi/32)  q[3];
rz(pi/256)  q[9];
rz(pi/128)  q[6];
rx(pi)  q[12];
cx q[7], q[11];
cx q[3], q[8];
cx q[6], q[2];
cx q[14], q[9];
rz(-pi/8)  q[11];
rz(-pi/32)  q[8];
rz(-pi/128)  q[2];
rz(-pi/512)  q[9];
cx q[7], q[11];
cx q[3], q[8];
cx q[6], q[2];
cx q[14], q[9];
rz(pi/8)  q[11];
rz(pi/4)  q[7];
rz(pi/32)  q[8];
rz(pi/16)  q[3];
rz(pi/128)  q[2];
rz(pi/64)  q[6];
rz(pi/512)  q[9];
rz(pi/256)  q[14];
cx q[7], q[12];
cx q[3], q[11];
cx q[6], q[8];
cx q[14], q[2];
cx q[16], q[9];
rz(-pi/4)  q[12];
rz(-pi/16)  q[11];
rz(-pi/64)  q[8];
rz(-pi/256)  q[2];
rz(-pi/1024)  q[9];
cx q[7], q[12];
cx q[3], q[11];
cx q[6], q[8];
cx q[14], q[2];
cx q[16], q[9];
rz(pi/4)  q[12];
ry(pi/2)  q[7];
rz(pi/16)  q[11];
rz(pi/8)  q[3];
rz(pi/64)  q[8];
rz(pi/32)  q[6];
rz(pi/256)  q[2];
rz(pi/128)  q[14];
rz(pi/1024)  q[9];
rz(pi/512)  q[16];
rx(pi)  q[7];
cx q[3], q[12];
cx q[6], q[11];
cx q[14], q[8];
cx q[16], q[2];
cx q[4], q[9];
rz(-pi/8)  q[12];
rz(-pi/32)  q[11];
rz(-pi/128)  q[8];
rz(-pi/512)  q[2];
rz(-pi/2048)  q[9];
cx q[3], q[12];
cx q[6], q[11];
cx q[14], q[8];
cx q[16], q[2];
cx q[4], q[9];
rz(pi/8)  q[12];
rz(pi/4)  q[3];
rz(pi/32)  q[11];
rz(pi/16)  q[6];
rz(pi/128)  q[8];
rz(pi/64)  q[14];
rz(pi/512)  q[2];
rz(pi/256)  q[16];
rz(pi/2048)  q[9];
rz(pi/1024)  q[4];
cx q[3], q[7];
cx q[6], q[12];
cx q[14], q[11];
cx q[16], q[8];
cx q[4], q[2];
cx q[10], q[9];
rz(-pi/4)  q[7];
rz(-pi/16)  q[12];
rz(-pi/64)  q[11];
rz(-pi/256)  q[8];
rz(-pi/1024)  q[2];
rz(-pi/4096)  q[9];
cx q[3], q[7];
cx q[6], q[12];
cx q[14], q[11];
cx q[16], q[8];
cx q[4], q[2];
cx q[10], q[9];
rz(pi/4)  q[7];
ry(pi/2)  q[3];
rz(pi/16)  q[12];
rz(pi/8)  q[6];
rz(pi/64)  q[11];
rz(pi/32)  q[14];
rz(pi/256)  q[8];
rz(pi/128)  q[16];
rz(pi/1024)  q[2];
rz(pi/512)  q[4];
rz(pi/4096)  q[9];
rz(pi/2048)  q[10];
rx(pi)  q[3];
cx q[6], q[7];
cx q[14], q[12];
cx q[16], q[11];
cx q[4], q[8];
cx q[10], q[2];
cx q[13], q[9];
rz(-pi/8)  q[7];
rz(-pi/32)  q[12];
rz(-pi/128)  q[11];
rz(-pi/512)  q[8];
rz(-pi/2048)  q[2];
rz(-pi/8192)  q[9];
cx q[6], q[7];
cx q[14], q[12];
cx q[16], q[11];
cx q[4], q[8];
cx q[10], q[2];
cx q[13], q[9];
rz(pi/8)  q[7];
rz(pi/4)  q[6];
rz(pi/32)  q[12];
rz(pi/16)  q[14];
rz(pi/128)  q[11];
rz(pi/64)  q[16];
rz(pi/256)  q[4];
rz(pi/512)  q[8];
rz(pi/2048)  q[2];
rz(pi/1024)  q[10];
rz(pi/8192)  q[9];
rz(pi/4096)  q[13];
cx q[6], q[3];
cx q[14], q[7];
cx q[16], q[12];
cx q[4], q[11];
cx q[10], q[8];
cx q[13], q[2];
cx q[5], q[9];
rz(-pi/4)  q[3];
rz(-pi/16)  q[7];
rz(-pi/64)  q[12];
rz(-pi/256)  q[11];
rz(-pi/1024)  q[8];
rz(-pi/4096)  q[2];
rz(-pi/16384)  q[9];
cx q[6], q[3];
cx q[14], q[7];
cx q[16], q[12];
cx q[4], q[11];
cx q[10], q[8];
cx q[13], q[2];
cx q[5], q[9];
rz(pi/4)  q[3];
ry(pi/2)  q[6];
rz(pi/16)  q[7];
rz(pi/8)  q[14];
rz(pi/64)  q[12];
rz(pi/32)  q[16];
rz(pi/128)  q[4];
rz(pi/256)  q[11];
rz(pi/512)  q[10];
rz(pi/1024)  q[8];
rz(pi/4096)  q[2];
rz(pi/2048)  q[13];
rz(pi/16384)  q[9];
rz(pi/8192)  q[5];
rx(pi)  q[6];
cx q[14], q[3];
cx q[16], q[7];
cx q[4], q[12];
cx q[10], q[11];
cx q[13], q[8];
cx q[5], q[2];
cx q[15], q[9];
rz(-pi/8)  q[3];
rz(-pi/32)  q[7];
rz(-pi/128)  q[12];
rz(-pi/512)  q[11];
rz(-pi/2048)  q[8];
rz(-pi/8192)  q[2];
rz(-pi/32768)  q[9];
cx q[14], q[3];
cx q[16], q[7];
cx q[4], q[12];
cx q[10], q[11];
cx q[13], q[8];
cx q[5], q[2];
cx q[15], q[9];
rz(pi/8)  q[3];
rz(pi/4)  q[14];
rz(pi/32)  q[7];
rz(pi/16)  q[16];
rz(pi/64)  q[4];
rz(pi/128)  q[12];
rz(pi/256)  q[10];
rz(pi/512)  q[11];
rz(pi/1024)  q[13];
rz(pi/2048)  q[8];
rz(pi/8192)  q[2];
rz(pi/4096)  q[5];
rz(pi/32768)  q[9];
rz(pi/16384)  q[15];
cx q[14], q[6];
cx q[16], q[3];
cx q[4], q[7];
cx q[10], q[12];
cx q[13], q[11];
cx q[5], q[8];
cx q[15], q[2];
rz(-pi/4)  q[6];
rz(-pi/16)  q[3];
rz(-pi/64)  q[7];
rz(-pi/256)  q[12];
rz(-pi/1024)  q[11];
rz(-pi/4096)  q[8];
rz(-pi/16384)  q[2];
cx q[14], q[6];
cx q[16], q[3];
cx q[4], q[7];
cx q[10], q[12];
cx q[13], q[11];
cx q[5], q[8];
cx q[15], q[2];
rz(pi/4)  q[6];
ry(pi/2)  q[14];
rz(pi/16)  q[3];
rz(pi/8)  q[16];
rz(pi/32)  q[4];
rz(pi/64)  q[7];
rz(pi/128)  q[10];
rz(pi/256)  q[12];
rz(pi/512)  q[13];
rz(pi/1024)  q[11];
rz(pi/2048)  q[5];
rz(pi/4096)  q[8];
rz(pi/16384)  q[2];
rz(pi/8192)  q[15];
rx(pi)  q[14];
cx q[16], q[6];
cx q[4], q[3];
cx q[10], q[7];
cx q[13], q[12];
cx q[5], q[11];
cx q[15], q[8];
rz(-pi/8)  q[6];
rz(-pi/32)  q[3];
rz(-pi/128)  q[7];
rz(-pi/512)  q[12];
rz(-pi/2048)  q[11];
rz(-pi/8192)  q[8];
cx q[16], q[6];
cx q[4], q[3];
cx q[10], q[7];
cx q[13], q[12];
cx q[5], q[11];
cx q[15], q[8];
rz(pi/8)  q[6];
rz(pi/4)  q[16];
rz(pi/16)  q[4];
rz(pi/32)  q[3];
rz(pi/64)  q[10];
rz(pi/128)  q[7];
rz(pi/256)  q[13];
rz(pi/512)  q[12];
rz(pi/1024)  q[5];
rz(pi/2048)  q[11];
rz(pi/4096)  q[15];
rz(pi/8192)  q[8];
cx q[16], q[14];
cx q[4], q[6];
cx q[10], q[3];
cx q[13], q[7];
cx q[5], q[12];
cx q[15], q[11];
rz(-pi/4)  q[14];
rz(-pi/16)  q[6];
rz(-pi/64)  q[3];
rz(-pi/256)  q[7];
rz(-pi/1024)  q[12];
rz(-pi/4096)  q[11];
cx q[16], q[14];
cx q[4], q[6];
cx q[10], q[3];
cx q[13], q[7];
cx q[5], q[12];
cx q[15], q[11];
rz(pi/4)  q[14];
ry(pi/2)  q[16];
rz(pi/8)  q[4];
rz(pi/16)  q[6];
rz(pi/32)  q[10];
rz(pi/64)  q[3];
rz(pi/128)  q[13];
rz(pi/256)  q[7];
rz(pi/512)  q[5];
rz(pi/1024)  q[12];
rz(pi/2048)  q[15];
rz(pi/4096)  q[11];
rx(pi)  q[16];
cx q[4], q[14];
cx q[10], q[6];
cx q[13], q[3];
cx q[5], q[7];
cx q[15], q[12];
rz(-pi/8)  q[14];
rz(-pi/32)  q[6];
rz(-pi/128)  q[3];
rz(-pi/512)  q[7];
rz(-pi/2048)  q[12];
cx q[4], q[14];
cx q[10], q[6];
cx q[13], q[3];
cx q[5], q[7];
cx q[15], q[12];
rz(pi/4)  q[4];
rz(pi/8)  q[14];
rz(pi/16)  q[10];
rz(pi/32)  q[6];
rz(pi/64)  q[13];
rz(pi/128)  q[3];
rz(pi/256)  q[5];
rz(pi/512)  q[7];
rz(pi/1024)  q[15];
rz(pi/2048)  q[12];
cx q[4], q[16];
cx q[10], q[14];
cx q[13], q[6];
cx q[5], q[3];
cx q[15], q[7];
rz(-pi/4)  q[16];
rz(-pi/16)  q[14];
rz(-pi/64)  q[6];
rz(-pi/256)  q[3];
rz(-pi/1024)  q[7];
cx q[4], q[16];
cx q[10], q[14];
cx q[13], q[6];
cx q[5], q[3];
cx q[15], q[7];
ry(pi/2)  q[4];
rz(pi/4)  q[16];
rz(pi/8)  q[10];
rz(pi/16)  q[14];
rz(pi/32)  q[13];
rz(pi/64)  q[6];
rz(pi/128)  q[5];
rz(pi/256)  q[3];
rz(pi/512)  q[15];
rz(pi/1024)  q[7];
rx(pi)  q[4];
cx q[10], q[16];
cx q[13], q[14];
cx q[5], q[6];
cx q[15], q[3];
rz(-pi/8)  q[16];
rz(-pi/32)  q[14];
rz(-pi/128)  q[6];
rz(-pi/512)  q[3];
cx q[10], q[16];
cx q[13], q[14];
cx q[5], q[6];
cx q[15], q[3];
rz(pi/4)  q[10];
rz(pi/8)  q[16];
rz(pi/16)  q[13];
rz(pi/32)  q[14];
rz(pi/64)  q[5];
rz(pi/128)  q[6];
rz(pi/256)  q[15];
rz(pi/512)  q[3];
cx q[10], q[4];
cx q[13], q[16];
cx q[5], q[14];
cx q[15], q[6];
rz(-pi/4)  q[4];
rz(-pi/16)  q[16];
rz(-pi/64)  q[14];
rz(-pi/256)  q[6];
cx q[10], q[4];
cx q[13], q[16];
cx q[5], q[14];
cx q[15], q[6];
rz(pi/4)  q[4];
ry(pi/2)  q[10];
rz(pi/8)  q[13];
rz(pi/16)  q[16];
rz(pi/32)  q[5];
rz(pi/64)  q[14];
rz(pi/128)  q[15];
rz(pi/256)  q[6];
rx(pi)  q[10];
cx q[13], q[4];
cx q[5], q[16];
cx q[15], q[14];
rz(-pi/8)  q[4];
rz(-pi/32)  q[16];
rz(-pi/128)  q[14];
cx q[13], q[4];
cx q[5], q[16];
cx q[15], q[14];
rz(pi/8)  q[4];
rz(pi/4)  q[13];
rz(pi/16)  q[5];
rz(pi/32)  q[16];
rz(pi/64)  q[15];
rz(pi/128)  q[14];
cx q[13], q[10];
cx q[5], q[4];
cx q[15], q[16];
rz(-pi/4)  q[10];
rz(-pi/16)  q[4];
rz(-pi/64)  q[16];
cx q[13], q[10];
cx q[5], q[4];
cx q[15], q[16];
rz(pi/4)  q[10];
ry(pi/2)  q[13];
rz(pi/16)  q[4];
rz(pi/8)  q[5];
rz(pi/32)  q[15];
rz(pi/64)  q[16];
rx(pi)  q[13];
cx q[5], q[10];
cx q[15], q[4];
rz(-pi/8)  q[10];
rz(-pi/32)  q[4];
cx q[5], q[10];
cx q[15], q[4];
rz(pi/8)  q[10];
rz(pi/4)  q[5];
rz(pi/32)  q[4];
rz(pi/16)  q[15];
cx q[5], q[13];
cx q[15], q[10];
rz(-pi/4)  q[13];
rz(-pi/16)  q[10];
cx q[5], q[13];
cx q[15], q[10];
rz(pi/4)  q[13];
ry(pi/2)  q[5];
rz(pi/16)  q[10];
rz(pi/8)  q[15];
rx(pi)  q[5];
cx q[15], q[13];
rz(-pi/8)  q[13];
cx q[15], q[13];
rz(pi/8)  q[13];
rz(pi/4)  q[15];
cx q[15], q[5];
rz(-pi/4)  q[5];
cx q[15], q[5];
rz(pi/4)  q[5];
ry(pi/2)  q[15];
rx(pi)  q[15];
measure q[9] -> c[0];
measure q[2] -> c[1];
measure q[8] -> c[2];
measure q[11] -> c[3];
measure q[12] -> c[4];
measure q[7] -> c[5];
measure q[3] -> c[6];
measure q[6] -> c[7];
measure q[14] -> c[8];
measure q[16] -> c[9];
measure q[4] -> c[10];
measure q[10] -> c[11];
measure q[13] -> c[12];
measure q[5] -> c[13];
measure q[15] -> c[14];

