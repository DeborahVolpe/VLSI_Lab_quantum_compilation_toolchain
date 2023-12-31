OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[16];
measure q[0] -> c[5];
measure q[1] -> c[6];
measure q[2] -> c[7];
measure q[3] -> c[8];
measure q[4] -> c[9];
measure q[5] -> c[10];
measure q[6] -> c[11];
measure q[7] -> c[12];
measure q[8] -> c[13];
measure q[9] -> c[14];
measure q[10] -> c[15];
u1(0.25*pi) q[21];
u1(0.25*pi) q[22];
u3(1.0*pi,0.0*pi,1.0*pi) q[23];
u1(0.25*pi) q[24];
u1(0.25*pi) q[25];
u3(1.0*pi,0.0*pi,1.0*pi) q[23];
cx q[24],q[25];
u2(0.0*pi,1.0*pi) q[23];
u1(0.25*pi) q[23];
cx q[23],q[24];
u1(1.75*pi) q[24];
cx q[24],q[23];
cx q[25],q[24];
cx q[24],q[23];
u1(0.25*pi) q[23];
cx q[25],q[24];
cx q[25],q[24];
u1(1.75*pi) q[24];
u1(1.75*pi) q[25];
cx q[23],q[24];
swap q[25],q[24];
cx q[24],q[23];
u2(0.0*pi,1.0*pi) q[23];
cx q[25],q[24];
u2(0.0*pi,1.0*pi) q[23];
cx q[25],q[24];
u1(0.25*pi) q[23];
u1(0.25*pi) q[24];
u1(0.25*pi) q[25];
cx q[25],q[22];
swap q[24],q[23];
cx q[21],q[23];
cx q[24],q[25];
cx q[23],q[21];
u1(1.75*pi) q[25];
cx q[25],q[24];
cx q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(0.25*pi) q[24];
cx q[22],q[25];
u1(1.75*pi) q[22];
u1(1.75*pi) q[25];
cx q[24],q[25];
cx q[25],q[24];
cx q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[24];
cx q[25],q[22];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[22];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[25];
swap q[25],q[24];
cx q[25],q[22];
cx q[24],q[23];
cx q[23],q[21];
u1(1.75*pi) q[21];
cx q[24],q[23];
cx q[23],q[24];
cx q[23],q[21];
u1(0.25*pi) q[24];
u1(1.75*pi) q[21];
u1(1.75*pi) q[23];
cx q[23],q[21];
cx q[24],q[23];
cx q[23],q[21];
cx q[24],q[23];
cx q[23],q[24];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[21];
u1(0.25*pi) q[23];
u1(0.25*pi) q[24];
cx q[21],q[23];
cx q[24],q[25];
cx q[23],q[21];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(1.75*pi) q[24];
u1(0.25*pi) q[25];
cx q[25],q[24];
cx q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
u1(1.75*pi) q[24];
u1(1.75*pi) q[22];
cx q[25],q[24];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
u1(0.25*pi) q[22];
cx q[24],q[25];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[24];
cx q[24],q[23];
cx q[23],q[21];
u1(1.75*pi) q[21];
cx q[24],q[23];
cx q[23],q[24];
cx q[23],q[21];
u1(0.25*pi) q[24];
u1(1.75*pi) q[21];
u1(1.75*pi) q[23];
cx q[23],q[21];
cx q[24],q[23];
cx q[23],q[21];
cx q[24],q[23];
cx q[23],q[24];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
u1(0.25*pi) q[24];
u1(0.25*pi) q[23];
cx q[24],q[25];
cx q[23],q[24];
u1(1.75*pi) q[24];
cx q[24],q[23];
cx q[25],q[24];
cx q[24],q[23];
u1(0.25*pi) q[23];
cx q[25],q[24];
cx q[25],q[24];
u1(1.75*pi) q[24];
u1(1.75*pi) q[25];
cx q[23],q[24];
swap q[21],q[23];
swap q[25],q[24];
cx q[23],q[21];
cx q[24],q[23];
cx q[23],q[21];
u2(0.0*pi,1.0*pi) q[21];
cx q[24],q[23];
u2(0.0*pi,1.0*pi) q[21];
cx q[25],q[24];
u1(0.25*pi) q[21];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
swap q[23],q[24];
u1(0.25*pi) q[25];
cx q[25],q[24];
cx q[22],q[25];
cx q[25],q[24];
cx q[22],q[25];
cx q[25],q[22];
u1(1.75*pi) q[22];
cx q[24],q[25];
u1(0.25*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
u1(1.75*pi) q[22];
cx q[24],q[25];
cx q[25],q[22];
u1(1.75*pi) q[24];
cx q[24],q[25];
u2(0.0*pi,1.0*pi) q[25];
u1(0.25*pi) q[25];
swap q[24],q[25];
cx q[22],q[25];
cx q[24],q[23];
u1(0.25*pi) q[22];
cx q[23],q[24];
u1(0.25*pi) q[25];
cx q[21],q[23];
cx q[22],q[25];
cx q[25],q[22];
cx q[23],q[24];
cx q[21],q[23];
u1(1.75*pi) q[24];
cx q[23],q[21];
u1(0.25*pi) q[21];
cx q[23],q[24];
u1(1.75*pi) q[23];
u1(1.75*pi) q[24];
cx q[23],q[24];
cx q[21],q[23];
cx q[23],q[24];
cx q[21],q[23];
cx q[23],q[21];
u2(0.0*pi,1.0*pi) q[21];
cx q[24],q[23];
measure q[21] -> c[4];
u1(0.25*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[24];
cx q[24],q[25];
cx q[25],q[22];
u1(1.75*pi) q[22];
cx q[24],q[25];
cx q[25],q[24];
cx q[25],q[22];
u1(0.25*pi) q[24];
u1(1.75*pi) q[22];
u1(1.75*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[24];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[24];
measure q[24] -> c[1];
u2(0.0*pi,1.0*pi) q[22];
u1(0.25*pi) q[25];
u1(0.25*pi) q[22];
swap q[23],q[24];
cx q[25],q[24];
cx q[22],q[25];
u1(1.75*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
u1(0.25*pi) q[22];
cx q[24],q[25];
cx q[24],q[25];
u1(1.75*pi) q[24];
u1(1.75*pi) q[25];
cx q[22],q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
u2(0.0*pi,1.0*pi) q[22];
cx q[24],q[25];
measure q[22] -> c[2];
cx q[25],q[24];
cx q[24],q[25];
measure q[24] -> c[0];
measure q[25] -> c[3];
