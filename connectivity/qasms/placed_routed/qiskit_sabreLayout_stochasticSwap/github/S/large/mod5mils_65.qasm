OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u1(pi/4) q[14];
u2(0,pi) q[16];
u1(pi/4) q[16];
u1(pi/4) q[19];
cx q[25],q[22];
u3(pi,0,pi) q[22];
u1(pi/4) q[22];
cx q[19],q[22];
cx q[16],q[19];
swap q[16],q[19];
u1(-pi/4) q[16];
cx q[22],q[19];
swap q[19],q[22];
cx q[19],q[16];
u1(-pi/4) q[16];
u1(-pi/4) q[19];
u1(pi/4) q[22];
swap q[19],q[22];
cx q[19],q[16];
cx q[22],q[19];
swap q[16],q[19];
u2(0,pi) q[16];
u2(0,pi) q[16];
swap q[14],q[16];
u1(pi/4) q[14];
cx q[19],q[22];
u1(pi/4) q[22];
measure q[19] -> c[0];
swap q[19],q[22];
cx q[16],q[19];
cx q[14],q[16];
swap q[14],q[16];
u1(-pi/4) q[14];
cx q[19],q[16];
swap q[14],q[16];
u1(pi/4) q[14];
cx q[19],q[16];
u1(-pi/4) q[16];
cx q[14],q[16];
swap q[14],q[16];
u1(-pi/4) q[19];
cx q[19],q[16];
swap q[14],q[16];
u2(0,pi) q[14];
cx q[16],q[19];
swap q[14],q[16];
cx q[19],q[16];
measure q[25] -> c[1];
measure q[14] -> c[2];
measure q[19] -> c[3];
measure q[16] -> c[4];
measure q[26] -> c[5];
measure q[2] -> c[6];
measure q[23] -> c[7];
measure q[8] -> c[8];
measure q[24] -> c[9];
measure q[17] -> c[10];
measure q[9] -> c[11];
measure q[11] -> c[12];
measure q[7] -> c[13];
measure q[12] -> c[14];
measure q[5] -> c[15];
