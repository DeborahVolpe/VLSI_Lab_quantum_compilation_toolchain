OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi)  q[14];
u2(0,pi)  q[12];
u2(0,pi)  q[16];
u2(0,pi)  q[19];
u1(-3*pi/8)  q[13];
swap q[19], q[16];
swap q[16], q[14];
cx q[14], q[13];
swap q[19], q[16];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
swap q[16], q[14];
cx q[14], q[13];
swap q[19], q[16];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
swap q[16], q[14];
cx q[12], q[13];
u1(3*pi/8)  q[13];
cx q[12], q[13];
u1(-3*pi/8)  q[13];
cx q[12], q[13];
u1(3*pi/8)  q[13];
cx q[12], q[13];
u1(-3*pi/8)  q[13];
cx q[12], q[13];
u1(3*pi/8)  q[13];
cx q[12], q[13];
u1(-3*pi/8)  q[13];
cx q[12], q[13];
u1(3*pi/8)  q[13];
cx q[12], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u1(-3*pi/8)  q[13];
cx q[14], q[13];
u1(3*pi/8)  q[13];
cx q[14], q[13];
u2(0,pi)  q[14];
swap q[12], q[13];
u1(-pi/4)  q[14];
cx q[14], q[13];
u1(pi/4)  q[13];
cx q[14], q[13];
u1(-pi/8)  q[14];
u1(-pi/4)  q[13];
u2(0,pi)  q[13];
cx q[14], q[16];
u1(-pi/4)  q[13];
u1(pi/8)  q[16];
cx q[14], q[16];
u1(-pi/16)  q[14];
u1(-pi/8)  q[16];
swap q[16], q[14];
cx q[16], q[19];
cx q[13], q[14];
u1(pi/4)  q[14];
u1(pi/16)  q[19];
cx q[13], q[14];
cx q[16], q[19];
u1(-pi/8)  q[13];
u1(-pi/4)  q[14];
u1(-pi/16)  q[19];
u2(0,pi)  q[14];
swap q[19], q[16];
swap q[16], q[14];
cx q[13], q[14];
u1(-pi/4)  q[16];
u1(pi/8)  q[14];
cx q[13], q[14];
u1(-pi/8)  q[14];
cx q[16], q[14];
u1(pi/4)  q[14];
cx q[16], q[14];
u1(-pi/4)  q[14];
u2(0,pi)  q[14];
measure q[19] -> c[0];
measure q[13] -> c[1];
measure q[16] -> c[2];
measure q[14] -> c[3];
