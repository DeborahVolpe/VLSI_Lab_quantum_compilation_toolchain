OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[13];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u2(0.0*pi,1.0*pi) q[6];
u2(0.0*pi,1.0*pi) q[7];
u2(0.0*pi,1.0*pi) q[10];
u2(0.0*pi,1.0*pi) q[12];
u2(0.0*pi,1.0*pi) q[13];
u2(0.0*pi,1.0*pi) q[15];
u2(0.0*pi,1.0*pi) q[17];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
u3(1.0*pi,0.0*pi,1.0*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
u2(0.0*pi,1.0*pi) q[24];
cx q[23],q[24];
u2(0.0*pi,1.0*pi) q[23];
cx q[25],q[24];
measure q[23] -> c[0];
u2(0.0*pi,1.0*pi) q[25];
measure q[25] -> c[1];
swap q[24],q[23];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[21];
measure q[21] -> c[2];
swap q[23],q[21];
cx q[18],q[21];
u2(0.0*pi,1.0*pi) q[18];
measure q[18] -> c[3];
swap q[21],q[18];
cx q[15],q[18];
u2(0.0*pi,1.0*pi) q[15];
cx q[17],q[18];
measure q[15] -> c[4];
u2(0.0*pi,1.0*pi) q[17];
measure q[17] -> c[5];
swap q[18],q[15];
cx q[12],q[15];
u2(0.0*pi,1.0*pi) q[12];
measure q[12] -> c[6];
swap q[15],q[12];
cx q[10],q[12];
u2(0.0*pi,1.0*pi) q[10];
cx q[13],q[12];
measure q[10] -> c[7];
u2(0.0*pi,1.0*pi) q[13];
measure q[13] -> c[8];
swap q[12],q[10];
cx q[7],q[10];
u2(0.0*pi,1.0*pi) q[7];
measure q[7] -> c[9];
swap q[10],q[7];
cx q[4],q[7];
u2(0.0*pi,1.0*pi) q[4];
cx q[6],q[7];
measure q[4] -> c[10];
u2(0.0*pi,1.0*pi) q[6];
measure q[6] -> c[11];
swap q[7],q[4];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[1];
measure q[1] -> c[12];
