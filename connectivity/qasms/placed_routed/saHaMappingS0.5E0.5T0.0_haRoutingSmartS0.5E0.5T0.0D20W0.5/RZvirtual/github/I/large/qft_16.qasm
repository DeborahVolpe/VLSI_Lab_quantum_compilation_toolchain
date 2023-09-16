OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[16];
ry(pi/2)  q[9];
swap q[2], q[7];
rx(pi)  q[9];
swap q[2], q[5];
rz(-0.7854)  q[9];
cx q[9], q[11];
rz(0.7854)  q[9];
cx q[9], q[11];
rz(-1*pi/8)  q[9];
ry(pi/2)  q[11];
rx(pi)  q[11];
cx q[9], q[13];
rz(-0.7854)  q[11];
rz(1*pi/8)  q[9];
cx q[9], q[13];
rz(-1*pi/16)  q[9];
cx q[11], q[13];
rz(0.7854)  q[11];
cx q[9], q[4];
rz(1*pi/16)  q[9];
cx q[11], q[13];
rz(-1*pi/8)  q[11];
ry(pi/2)  q[13];
cx q[9], q[4];
rx(pi)  q[13];
rz(-0.09815)  q[9];
swap q[4], q[12];
cx q[11], q[12];
rz(-0.7854)  q[13];
cx q[9], q[10];
rz(1*pi/8)  q[11];
rz(0.09815)  q[9];
cx q[11], q[12];
cx q[9], q[10];
rz(-1*pi/16)  q[11];
cx q[13], q[12];
rz(-0.0491)  q[9];
rz(0.7854)  q[13];
cx q[11], q[10];
cx q[9], q[14];
rz(1*pi/16)  q[11];
cx q[13], q[12];
rz(0.0491)  q[9];
rz(-1*pi/8)  q[13];
ry(pi/2)  q[12];
cx q[11], q[10];
cx q[9], q[14];
rx(pi)  q[12];
rz(-0.09815)  q[11];
cx q[13], q[10];
rz(-0.02455)  q[9];
rz(-0.7854)  q[12];
rz(1*pi/8)  q[13];
cx q[11], q[14];
swap q[9], q[8];
rz(0.09815)  q[11];
cx q[13], q[10];
cx q[8], q[9];
rz(-1*pi/16)  q[13];
rz(0.02455)  q[8];
cx q[12], q[10];
cx q[11], q[14];
rz(0.7854)  q[12];
rz(-0.0491)  q[11];
cx q[13], q[14];
cx q[8], q[9];
rz(1*pi/16)  q[13];
rz(-0.01225)  q[8];
cx q[12], q[10];
cx q[11], q[9];
rz(-1*pi/8)  q[12];
ry(pi/2)  q[10];
rz(0.0491)  q[11];
swap q[8], q[6];
cx q[13], q[14];
cx q[6], q[7];
rx(pi)  q[10];
rz(-0.09815)  q[13];
swap q[11], q[8];
cx q[12], q[14];
rz(0.01225)  q[6];
cx q[8], q[9];
rz(-0.7854)  q[10];
rz(1*pi/8)  q[12];
rz(-0.02455)  q[8];
cx q[13], q[9];
cx q[6], q[7];
cx q[12], q[14];
rz(0.09815)  q[13];
rz(-0.00615)  q[6];
cx q[8], q[7];
rz(-1*pi/16)  q[12];
cx q[10], q[14];
rz(0.02455)  q[8];
cx q[13], q[9];
cx q[6], q[11];
rz(0.7854)  q[10];
rz(-0.0491)  q[13];
rz(0.00615)  q[6];
cx q[12], q[9];
cx q[8], q[7];
cx q[10], q[14];
rz(1*pi/16)  q[12];
rz(-0.01225)  q[8];
cx q[13], q[7];
cx q[6], q[11];
rz(-1*pi/8)  q[10];
ry(pi/2)  q[14];
rz(0.0491)  q[13];
rz(-0.00305)  q[6];
cx q[12], q[9];
cx q[8], q[11];
rx(pi)  q[14];
rz(-0.09815)  q[12];
rz(0.01225)  q[8];
cx q[10], q[9];
cx q[13], q[7];
cx q[6], q[15];
rz(-0.7854)  q[14];
rz(1*pi/8)  q[10];
rz(-0.02455)  q[13];
rz(0.00305)  q[6];
cx q[12], q[7];
cx q[8], q[11];
rz(0.09815)  q[12];
rz(-0.00615)  q[8];
cx q[10], q[9];
cx q[13], q[11];
cx q[6], q[15];
rz(-1*pi/16)  q[10];
rz(0.02455)  q[13];
rz(-0.00155)  q[6];
cx q[14], q[9];
cx q[12], q[7];
cx q[8], q[15];
rz(0.7854)  q[14];
rz(-0.0491)  q[12];
rz(0.00615)  q[8];
cx q[13], q[11];
cx q[6], q[5];
cx q[10], q[7];
rz(1*pi/16)  q[10];
rz(-0.01225)  q[13];
rz(0.00155)  q[6];
cx q[14], q[9];
cx q[12], q[11];
cx q[8], q[15];
rz(-1*pi/8)  q[14];
ry(pi/2)  q[9];
rz(0.0491)  q[12];
rz(-0.00305)  q[8];
cx q[10], q[7];
cx q[13], q[15];
swap q[6], q[4];
cx q[4], q[5];
rx(pi)  q[9];
rz(-0.09815)  q[10];
rz(0.01225)  q[13];
cx q[12], q[11];
rz(-0.00075)  q[4];
swap q[7], q[13];
rz(-0.7854)  q[9];
rz(-0.02455)  q[12];
cx q[10], q[11];
swap q[5], q[7];
cx q[14], q[13];
cx q[4], q[6];
rz(0.09815)  q[10];
cx q[8], q[7];
rz(1*pi/8)  q[14];
cx q[5], q[15];
rz(0.00075)  q[4];
cx q[10], q[11];
rz(0.00305)  q[8];
rz(-0.00615)  q[5];
cx q[14], q[13];
cx q[12], q[15];
rz(-0.0491)  q[10];
swap q[8], q[6];
rz(-1*pi/16)  q[14];
rz(0.02455)  q[12];
cx q[9], q[13];
cx q[6], q[7];
cx q[4], q[8];
rz(0.7854)  q[9];
cx q[14], q[11];
cx q[12], q[15];
rz(-0.00155)  q[6];
cx q[5], q[7];
rz(-0.0004)  q[4];
rz(1*pi/16)  q[14];
rz(-0.01225)  q[12];
cx q[9], q[13];
cx q[10], q[15];
rz(0.00615)  q[5];
cx q[6], q[8];
rz(-1*pi/8)  q[9];
ry(pi/2)  q[13];
rz(0.0491)  q[10];
cx q[14], q[11];
rz(0.00155)  q[6];
cx q[5], q[7];
rz(-0.09815)  q[14];
cx q[9], q[11];
cx q[10], q[15];
swap q[3], q[5];
swap q[7], q[13];
cx q[6], q[8];
rz(1*pi/8)  q[9];
rz(-0.02455)  q[10];
cx q[14], q[15];
cx q[4], q[5];
rz(-0.00305)  q[3];
cx q[12], q[13];
rx(pi)  q[7];
rz(-0.00075)  q[6];
rz(0.09815)  q[14];
cx q[9], q[11];
rz(0.0004)  q[4];
rz(0.01225)  q[12];
cx q[3], q[8];
rz(-0.7854)  q[7];
rz(-1*pi/16)  q[9];
cx q[14], q[15];
cx q[4], q[5];
rz(0.00305)  q[3];
cx q[12], q[13];
rz(-0.0491)  q[14];
cx q[9], q[15];
rz(-0.0002)  q[4];
cx q[6], q[5];
rz(-0.00615)  q[12];
cx q[10], q[13];
cx q[3], q[8];
rz(1*pi/16)  q[9];
rz(0.00075)  q[6];
cx q[4], q[16];
rz(0.02455)  q[10];
rz(-0.00155)  q[3];
swap q[7], q[12];
cx q[9], q[15];
rz(0.0002)  q[4];
cx q[7], q[8];
cx q[6], q[5];
cx q[12], q[11];
cx q[10], q[13];
rz(-0.09815)  q[9];
rz(0.7854)  q[12];
rz(0.00615)  q[7];
rz(-0.0004)  q[6];
cx q[3], q[5];
rz(-0.01225)  q[10];
cx q[14], q[13];
swap q[16], q[5];
rz(0.00155)  q[3];
cx q[12], q[11];
cx q[7], q[8];
rz(0.0491)  q[14];
cx q[4], q[5];
rz(-1*pi/8)  q[12];
ry(pi/2)  q[11];
rz(-0.00305)  q[7];
cx q[10], q[8];
cx q[3], q[16];
cx q[14], q[13];
rz(-0.0001)  q[4];
cx q[6], q[5];
swap q[1], q[3];
rx(pi)  q[11];
rz(0.01225)  q[10];
cx q[12], q[15];
cx q[7], q[16];
rz(-0.02455)  q[14];
cx q[9], q[13];
rz(0.0004)  q[6];
cx q[4], q[3];
rz(-0.00075)  q[1];
swap q[5], q[7];
rz(-0.7854)  q[11];
rz(1*pi/8)  q[12];
cx q[10], q[8];
rz(0.09815)  q[9];
rz(0.0001)  q[4];
cx q[6], q[7];
rz(0.00305)  q[5];
rz(-0.00615)  q[10];
cx q[12], q[15];
cx q[14], q[8];
cx q[9], q[13];
rz(-0.0002)  q[6];
cx q[1], q[7];
cx q[4], q[3];
cx q[5], q[16];
rz(-1*pi/16)  q[12];
rz(0.02455)  q[14];
cx q[11], q[15];
rz(-0.0491)  q[9];
rz(0.00075)  q[1];
rz(-5e-05)  q[4];
cx q[6], q[3];
rz(-0.00155)  q[5];
cx q[10], q[16];
rz(0.7854)  q[11];
cx q[12], q[13];
cx q[14], q[8];
rz(0.0002)  q[6];
cx q[1], q[7];
cx q[4], q[2];
rz(0.00615)  q[10];
rz(1*pi/16)  q[12];
rz(-0.01225)  q[14];
cx q[11], q[15];
cx q[9], q[8];
rz(-0.0004)  q[1];
rz(5e-05)  q[4];
swap q[6], q[2];
cx q[5], q[7];
cx q[10], q[16];
rz(-1*pi/8)  q[11];
ry(pi/2)  q[15];
rz(0.0491)  q[9];
cx q[12], q[13];
cx q[2], q[3];
rz(0.00155)  q[5];
cx q[4], q[6];
rz(-0.00305)  q[10];
cx q[14], q[16];
rx(pi)  q[15];
rz(-0.09815)  q[12];
cx q[11], q[13];
rz(-0.0001)  q[2];
cx q[1], q[3];
ry(pi/2)  q[4];
cx q[5], q[7];
rz(0.01225)  q[14];
swap q[8], q[10];
rz(-0.7854)  q[15];
rz(1*pi/8)  q[11];
rz(0.0004)  q[1];
cx q[2], q[6];
rz(-0.00075)  q[5];
rx(pi)  q[4];
cx q[9], q[10];
cx q[8], q[7];
cx q[14], q[16];
cx q[11], q[13];
rz(0.0001)  q[2];
cx q[1], q[3];
rz(-0.02455)  q[9];
rz(0.00305)  q[8];
cx q[12], q[10];
rz(-0.00615)  q[14];
rz(-1*pi/16)  q[11];
cx q[15], q[13];
rz(-0.0002)  q[1];
cx q[5], q[3];
cx q[2], q[6];
rz(0.09815)  q[12];
cx q[9], q[16];
cx q[8], q[7];
rz(0.7854)  q[15];
rz(0.00075)  q[5];
ry(pi/2)  q[2];
cx q[1], q[6];
rz(0.02455)  q[9];
rz(-0.00155)  q[8];
cx q[12], q[10];
cx q[14], q[7];
cx q[15], q[13];
rx(pi)  q[2];
rz(0.0002)  q[1];
cx q[5], q[3];
rz(-0.0491)  q[12];
rz(0.00615)  q[14];
cx q[11], q[10];
cx q[9], q[16];
ry(pi/2)  q[13];
rz(-1*pi/8)  q[15];
rz(-0.0004)  q[5];
cx q[8], q[3];
cx q[1], q[6];
rz(1*pi/16)  q[11];
rz(-0.01225)  q[9];
cx q[12], q[16];
cx q[14], q[7];
rx(pi)  q[13];
rz(0.00155)  q[8];
ry(pi/2)  q[1];
cx q[5], q[6];
rz(0.0491)  q[12];
rz(-0.00305)  q[14];
cx q[11], q[10];
cx q[9], q[7];
rz(-0.7854)  q[13];
rx(pi)  q[1];
rz(0.0004)  q[5];
swap q[3], q[9];
rz(-0.09815)  q[11];
cx q[15], q[10];
swap q[14], q[7];
cx q[12], q[16];
cx q[8], q[9];
rz(0.01225)  q[3];
cx q[5], q[6];
rz(1*pi/8)  q[15];
rz(-0.02455)  q[12];
cx q[11], q[16];
rz(-0.00075)  q[8];
cx q[7], q[9];
ry(pi/2)  q[5];
cx q[3], q[14];
rz(0.09815)  q[11];
cx q[15], q[10];
rz(0.00305)  q[7];
cx q[8], q[6];
rz(-0.00615)  q[3];
rx(pi)  q[5];
cx q[12], q[14];
rz(-1*pi/16)  q[15];
cx q[13], q[10];
cx q[11], q[16];
rz(0.00075)  q[8];
cx q[7], q[9];
rz(0.02455)  q[12];
rz(0.7854)  q[13];
rz(-0.0491)  q[11];
cx q[15], q[16];
rz(-0.00155)  q[7];
cx q[3], q[9];
cx q[8], q[6];
cx q[12], q[14];
rz(1*pi/16)  q[15];
cx q[13], q[10];
rz(0.00615)  q[3];
ry(pi/2)  q[8];
cx q[7], q[6];
rz(-0.01225)  q[12];
cx q[11], q[14];
rz(-1*pi/8)  q[13];
ry(pi/2)  q[10];
cx q[15], q[16];
rx(pi)  q[8];
rz(0.00155)  q[7];
cx q[3], q[9];
rz(0.0491)  q[11];
rx(pi)  q[10];
rz(-0.09815)  q[15];
cx q[13], q[16];
rz(-0.00305)  q[3];
swap q[9], q[11];
swap q[6], q[8];
rz(-0.7854)  q[10];
rz(1*pi/8)  q[13];
cx q[7], q[8];
cx q[12], q[11];
cx q[9], q[14];
cx q[13], q[16];
rz(0.01225)  q[12];
ry(pi/2)  q[7];
cx q[3], q[8];
rz(-0.02455)  q[9];
cx q[15], q[14];
rz(-1*pi/16)  q[13];
cx q[10], q[16];
rx(pi)  q[7];
rz(0.00305)  q[3];
cx q[12], q[11];
rz(0.09815)  q[15];
rz(0.7854)  q[10];
rz(-0.00615)  q[12];
cx q[9], q[11];
cx q[3], q[8];
cx q[15], q[14];
cx q[10], q[16];
rz(0.02455)  q[9];
ry(pi/2)  q[3];
cx q[12], q[8];
rz(-0.0491)  q[15];
cx q[13], q[14];
rz(-1*pi/8)  q[10];
ry(pi/2)  q[16];
rx(pi)  q[3];
rz(0.00615)  q[12];
cx q[9], q[11];
rz(1*pi/16)  q[13];
rx(pi)  q[16];
rz(-0.01225)  q[9];
cx q[15], q[11];
cx q[12], q[8];
cx q[13], q[14];
rz(-0.7854)  q[16];
rz(0.0491)  q[15];
ry(pi/2)  q[12];
cx q[9], q[8];
rz(-0.09815)  q[13];
cx q[10], q[14];
rx(pi)  q[12];
rz(0.01225)  q[9];
cx q[15], q[11];
rz(1*pi/8)  q[10];
rz(-0.02455)  q[15];
cx q[13], q[11];
cx q[9], q[8];
cx q[10], q[14];
rz(0.09815)  q[13];
ry(pi/2)  q[9];
cx q[15], q[8];
rz(-1*pi/16)  q[10];
cx q[16], q[14];
rx(pi)  q[9];
rz(0.02455)  q[15];
cx q[13], q[11];
rz(0.7854)  q[16];
rz(-0.0491)  q[13];
cx q[10], q[11];
cx q[15], q[8];
cx q[16], q[14];
rz(1*pi/16)  q[10];
ry(pi/2)  q[15];
swap q[8], q[12];
rz(-1*pi/8)  q[16];
ry(pi/2)  q[14];
cx q[13], q[12];
rx(pi)  q[15];
cx q[10], q[11];
rx(pi)  q[14];
rz(0.0491)  q[13];
rz(-0.09815)  q[10];
cx q[16], q[11];
rz(-0.7854)  q[14];
cx q[13], q[12];
rz(1*pi/8)  q[16];
ry(pi/2)  q[13];
cx q[10], q[12];
cx q[16], q[11];
rx(pi)  q[13];
rz(0.09815)  q[10];
rz(-1*pi/16)  q[16];
cx q[14], q[11];
cx q[10], q[12];
rz(0.7854)  q[14];
ry(pi/2)  q[10];
cx q[16], q[12];
cx q[14], q[11];
rx(pi)  q[10];
rz(1*pi/16)  q[16];
rz(-1*pi/8)  q[14];
ry(pi/2)  q[11];
cx q[16], q[12];
rx(pi)  q[11];
ry(pi/2)  q[16];
cx q[14], q[12];
rz(-0.7854)  q[11];
rx(pi)  q[16];
rz(1*pi/8)  q[14];
cx q[14], q[12];
ry(pi/2)  q[14];
cx q[11], q[12];
rx(pi)  q[14];
rz(0.7854)  q[11];
cx q[11], q[12];
ry(pi/2)  q[11];
ry(pi/2)  q[12];
rx(pi)  q[11];
rx(pi)  q[12];
ry(pi/2)  q[12];
rx(pi)  q[12];
measure q[4] -> c[0];
measure q[2] -> c[1];
measure q[1] -> c[2];
measure q[5] -> c[3];
measure q[6] -> c[4];
measure q[7] -> c[5];
measure q[3] -> c[6];
measure q[8] -> c[7];
measure q[9] -> c[8];
measure q[15] -> c[9];
measure q[13] -> c[10];
measure q[10] -> c[11];
measure q[16] -> c[12];
measure q[14] -> c[13];
measure q[11] -> c[14];
measure q[12] -> c[15];
