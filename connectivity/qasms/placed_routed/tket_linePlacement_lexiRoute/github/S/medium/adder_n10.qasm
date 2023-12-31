OPENQASM 2.0;
include "qelib1.inc";

qreg q[27];
creg c[5];
u3(1.0*pi,0.0*pi,1.0*pi) q[16];
u3(1.0*pi,0.0*pi,1.0*pi) q[18];
u3(1.0*pi,0.0*pi,1.0*pi) q[21];
u3(1.0*pi,0.0*pi,1.0*pi) q[22];
u3(1.0*pi,0.0*pi,1.0*pi) q[24];
cx q[21],q[18];
cx q[19],q[22];
cx q[25],q[24];
swap q[19],q[22];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[21];
cx q[18],q[21];
u1(1.75*pi) q[21];
cx q[23],q[21];
u1(0.25*pi) q[21];
cx q[18],q[21];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
cx q[23],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[21],q[18];
u1(1.75*pi) q[18];
u1(0.25*pi) q[21];
cx q[21],q[18];
cx q[15],q[18];
swap q[23],q[21];
swap q[15],q[18];
cx q[18],q[21];
u2(0.0*pi,1.0*pi) q[18];
cx q[15],q[18];
u1(1.75*pi) q[18];
cx q[21],q[18];
u1(0.25*pi) q[18];
cx q[15],q[18];
u1(0.25*pi) q[15];
u1(1.75*pi) q[18];
cx q[21],q[18];
u1(0.25*pi) q[18];
u2(0.0*pi,1.0*pi) q[18];
swap q[21],q[18];
cx q[18],q[15];
swap q[21],q[23];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
swap q[23],q[24];
cx q[18],q[15];
swap q[24],q[25];
swap q[18],q[21];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[22];
cx q[19],q[22];
u1(1.75*pi) q[22];
cx q[25],q[22];
u1(0.25*pi) q[22];
cx q[19],q[22];
u1(0.25*pi) q[19];
u1(1.75*pi) q[22];
cx q[25],q[22];
u1(0.25*pi) q[22];
u2(0.0*pi,1.0*pi) q[22];
swap q[25],q[22];
cx q[22],q[19];
cx q[24],q[25];
u1(1.75*pi) q[19];
u1(0.25*pi) q[22];
u2(0.0*pi,1.0*pi) q[24];
cx q[22],q[19];
cx q[23],q[24];
swap q[16],q[19];
u1(1.75*pi) q[24];
swap q[19],q[22];
cx q[25],q[24];
u1(0.25*pi) q[24];
cx q[23],q[24];
u1(0.25*pi) q[23];
u1(1.75*pi) q[24];
cx q[25],q[24];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[24];
swap q[25],q[24];
cx q[24],q[23];
cx q[25],q[26];
measure q[26] -> c[4];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
cx q[22],q[25];
cx q[24],q[23];
u1(1.75*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[22];
u1(1.75*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[25];
swap q[24],q[25];
cx q[25],q[22];
u1(1.75*pi) q[22];
u1(0.25*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
swap q[23],q[24];
measure q[22] -> c[3];
swap q[21],q[23];
u2(0.0*pi,1.0*pi) q[25];
swap q[19],q[22];
cx q[24],q[25];
swap q[16],q[19];
u1(1.75*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[24];
u1(1.75*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[25];
swap q[22],q[25];
cx q[25],q[24];
u1(1.75*pi) q[24];
u1(0.25*pi) q[25];
cx q[25],q[24];
cx q[22],q[25];
swap q[19],q[22];
cx q[25],q[24];
measure q[24] -> c[2];
u2(0.0*pi,1.0*pi) q[25];
cx q[22],q[25];
swap q[23],q[24];
u1(1.75*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[22];
u1(1.75*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[25];
swap q[24],q[25];
cx q[25],q[22];
u1(1.75*pi) q[22];
u1(0.25*pi) q[25];
cx q[25],q[22];
cx q[24],q[25];
cx q[25],q[22];
measure q[22] -> c[1];
u2(0.0*pi,1.0*pi) q[25];
swap q[25],q[24];
swap q[24],q[23];
swap q[23],q[21];
swap q[21],q[18];
cx q[15],q[18];
u1(1.75*pi) q[18];
cx q[21],q[18];
u1(0.25*pi) q[18];
cx q[15],q[18];
u1(0.25*pi) q[15];
u1(1.75*pi) q[18];
cx q[21],q[18];
u1(0.25*pi) q[18];
u2(0.0*pi,1.0*pi) q[18];
swap q[21],q[18];
cx q[18],q[15];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
cx q[18],q[15];
cx q[21],q[18];
cx q[18],q[15];
measure q[15] -> c[0];
