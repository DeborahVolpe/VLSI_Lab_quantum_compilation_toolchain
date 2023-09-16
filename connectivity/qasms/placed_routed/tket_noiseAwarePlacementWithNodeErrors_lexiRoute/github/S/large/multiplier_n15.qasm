OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[3];
u3(1.0*pi,0.0*pi,1.0*pi) q[11];
u3(1.0*pi,0.0*pi,1.0*pi) q[13];
u2(0.0*pi,1.0*pi) q[14];
u3(1.0*pi,0.0*pi,1.0*pi) q[16];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[19];
u3(1.0*pi,0.0*pi,1.0*pi) q[22];
u2(0.0*pi,1.0*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
cx q[13],q[14];
cx q[15],q[18];
cx q[22],q[19];
cx q[21],q[23];
cx q[25],q[24];
u1(1.75*pi) q[14];
u1(1.75*pi) q[18];
u1(1.75*pi) q[19];
u1(1.75*pi) q[23];
u1(1.75*pi) q[24];
cx q[16],q[14];
swap q[18],q[15];
swap q[24],q[25];
u1(0.25*pi) q[14];
cx q[13],q[14];
u1(0.25*pi) q[13];
u1(1.75*pi) q[14];
cx q[16],q[14];
u1(0.25*pi) q[14];
u2(0.0*pi,1.0*pi) q[14];
swap q[13],q[14];
swap q[13],q[12];
cx q[16],q[14];
cx q[12],q[15];
u1(1.75*pi) q[14];
u1(0.25*pi) q[16];
cx q[16],q[14];
u1(0.25*pi) q[15];
cx q[18],q[15];
cx q[16],q[19];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
u1(0.25*pi) q[19];
cx q[12],q[15];
cx q[22],q[19];
u1(0.25*pi) q[15];
u1(1.75*pi) q[19];
u1(0.25*pi) q[22];
u2(0.0*pi,1.0*pi) q[15];
cx q[16],q[19];
u2(0.0*pi,1.0*pi) q[15];
u1(0.25*pi) q[19];
swap q[18],q[15];
u2(0.0*pi,1.0*pi) q[19];
cx q[12],q[15];
swap q[22],q[19];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
cx q[16],q[19];
cx q[22],q[25];
cx q[12],q[15];
u1(0.25*pi) q[16];
u1(1.75*pi) q[19];
cx q[12],q[15];
cx q[16],q[19];
cx q[15],q[18];
swap q[16],q[19];
u1(1.75*pi) q[18];
cx q[19],q[22];
cx q[17],q[18];
cx q[22],q[25];
u1(0.25*pi) q[18];
cx q[19],q[22];
u1(0.25*pi) q[25];
cx q[15],q[18];
cx q[24],q[25];
u1(0.25*pi) q[15];
u1(1.75*pi) q[18];
u1(0.25*pi) q[24];
u1(1.75*pi) q[25];
cx q[17],q[18];
swap q[25],q[22];
u1(0.25*pi) q[18];
cx q[19],q[22];
swap q[24],q[25];
u2(0.0*pi,1.0*pi) q[18];
u1(0.25*pi) q[22];
cx q[24],q[23];
u2(0.0*pi,1.0*pi) q[22];
u1(0.25*pi) q[23];
swap q[19],q[22];
cx q[21],q[23];
cx q[19],q[20];
u1(0.25*pi) q[21];
cx q[22],q[25];
u1(1.75*pi) q[23];
u2(0.0*pi,1.0*pi) q[19];
u1(0.25*pi) q[22];
cx q[24],q[23];
u1(1.75*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[23];
cx q[25],q[22];
u2(0.0*pi,1.0*pi) q[23];
cx q[22],q[19];
u2(0.0*pi,1.0*pi) q[23];
swap q[21],q[23];
cx q[25],q[22];
cx q[22],q[19];
cx q[24],q[23];
u1(1.75*pi) q[19];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
swap q[20],q[19];
cx q[24],q[23];
swap q[19],q[22];
cx q[24],q[23];
swap q[16],q[19];
cx q[23],q[21];
swap q[22],q[25];
u1(1.75*pi) q[21];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[18],q[21];
swap q[23],q[24];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
cx q[24],q[25];
cx q[18],q[21];
u2(0.0*pi,1.0*pi) q[24];
swap q[15],q[18];
swap q[24],q[23];
cx q[17],q[18];
cx q[21],q[23];
u1(0.25*pi) q[17];
u1(1.75*pi) q[18];
u1(1.75*pi) q[23];
cx q[17],q[18];
swap q[23],q[21];
swap q[15],q[18];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[18],q[21];
cx q[21],q[23];
u1(0.25*pi) q[21];
u1(1.75*pi) q[23];
cx q[21],q[23];
swap q[18],q[21];
cx q[24],q[23];
cx q[23],q[21];
u1(1.75*pi) q[21];
swap q[21],q[23];
cx q[24],q[23];
u1(0.25*pi) q[23];
cx q[21],q[23];
u1(0.25*pi) q[21];
u1(1.75*pi) q[23];
cx q[24],q[23];
u1(0.25*pi) q[23];
u2(0.0*pi,1.0*pi) q[23];
u2(0.0*pi,1.0*pi) q[23];
swap q[21],q[23];
cx q[24],q[23];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
cx q[24],q[23];
cx q[24],q[23];
swap q[23],q[21];
u2(0.0*pi,1.0*pi) q[24];
cx q[18],q[21];
swap q[24],q[25];
u2(0.0*pi,1.0*pi) q[18];
cx q[21],q[23];
swap q[25],q[22];
cx q[15],q[18];
cx q[19],q[22];
u1(1.75*pi) q[23];
u1(1.75*pi) q[18];
u1(1.75*pi) q[22];
cx q[17],q[18];
swap q[22],q[19];
u1(0.25*pi) q[18];
cx q[15],q[18];
u1(0.25*pi) q[15];
u1(1.75*pi) q[18];
cx q[17],q[18];
u1(0.25*pi) q[18];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[18];
swap q[17],q[18];
cx q[18],q[15];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
cx q[18],q[15];
cx q[12],q[15];
swap q[17],q[18];
cx q[15],q[18];
u1(1.75*pi) q[18];
swap q[18],q[15];
cx q[12],q[15];
u1(0.25*pi) q[15];
cx q[18],q[15];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
cx q[12],q[15];
u1(0.25*pi) q[15];
u2(0.0*pi,1.0*pi) q[15];
u2(0.0*pi,1.0*pi) q[15];
swap q[18],q[15];
cx q[12],q[15];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
cx q[12],q[15];
cx q[12],q[15];
u2(0.0*pi,1.0*pi) q[12];
swap q[15],q[18];
swap q[12],q[13];
cx q[17],q[18];
cx q[14],q[13];
cx q[18],q[15];
u1(1.75*pi) q[13];
u1(1.75*pi) q[15];
swap q[13],q[14];
cx q[16],q[14];
u1(0.25*pi) q[14];
cx q[13],q[14];
u1(0.25*pi) q[13];
u1(1.75*pi) q[14];
cx q[16],q[14];
u1(0.25*pi) q[14];
u2(0.0*pi,1.0*pi) q[14];
swap q[13],q[14];
swap q[13],q[12];
cx q[16],q[14];
cx q[12],q[15];
u1(1.75*pi) q[14];
u1(0.25*pi) q[16];
cx q[16],q[14];
u1(0.25*pi) q[15];
cx q[18],q[15];
cx q[16],q[19];
u1(1.75*pi) q[15];
u1(0.25*pi) q[18];
u1(0.25*pi) q[19];
cx q[12],q[15];
cx q[22],q[19];
u1(0.25*pi) q[15];
u1(1.75*pi) q[19];
u1(0.25*pi) q[22];
u2(0.0*pi,1.0*pi) q[15];
cx q[16],q[19];
u2(0.0*pi,1.0*pi) q[15];
u1(0.25*pi) q[19];
swap q[18],q[15];
u2(0.0*pi,1.0*pi) q[19];
cx q[12],q[15];
u2(0.0*pi,1.0*pi) q[19];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
swap q[19],q[16];
cx q[12],q[15];
cx q[14],q[16];
cx q[19],q[22];
cx q[12],q[15];
u1(1.75*pi) q[16];
u1(0.25*pi) q[19];
u1(1.75*pi) q[22];
swap q[16],q[14];
cx q[15],q[18];
cx q[19],q[22];
cx q[11],q[14];
u1(1.75*pi) q[18];
cx q[19],q[20];
swap q[25],q[22];
u1(0.25*pi) q[14];
cx q[17],q[18];
u1(0.25*pi) q[20];
cx q[16],q[14];
u1(0.25*pi) q[18];
swap q[20],q[19];
u1(1.75*pi) q[14];
cx q[15],q[18];
u1(0.25*pi) q[16];
cx q[22],q[19];
cx q[11],q[14];
u1(0.25*pi) q[15];
u1(1.75*pi) q[18];
u1(1.75*pi) q[19];
u1(0.25*pi) q[22];
u1(0.25*pi) q[14];
cx q[17],q[18];
cx q[20],q[19];
u2(0.0*pi,1.0*pi) q[14];
u1(0.25*pi) q[18];
u1(0.25*pi) q[19];
swap q[16],q[14];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[19];
cx q[11],q[14];
swap q[15],q[18];
u2(0.0*pi,1.0*pi) q[19];
u1(0.25*pi) q[11];
u1(1.75*pi) q[14];
cx q[17],q[18];
swap q[19],q[22];
cx q[11],q[14];
u1(0.25*pi) q[17];
u1(1.75*pi) q[18];
cx q[20],q[19];
cx q[25],q[22];
swap q[11],q[14];
cx q[17],q[18];
u1(1.75*pi) q[19];
u1(0.25*pi) q[20];
u1(1.75*pi) q[22];
swap q[15],q[18];
cx q[20],q[19];
swap q[16],q[19];
swap q[14],q[16];
swap q[22],q[19];
swap q[11],q[14];
cx q[16],q[19];
swap q[22],q[25];
u1(0.25*pi) q[19];
swap q[25],q[24];
cx q[22],q[19];
cx q[24],q[23];
u1(1.75*pi) q[19];
u1(0.25*pi) q[22];
u1(0.25*pi) q[23];
cx q[16],q[19];
cx q[21],q[23];
u1(0.25*pi) q[19];
u1(0.25*pi) q[21];
u1(1.75*pi) q[23];
u2(0.0*pi,1.0*pi) q[19];
cx q[24],q[23];
swap q[22],q[19];
u1(0.25*pi) q[23];
cx q[16],q[19];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[23];
u1(0.25*pi) q[16];
u1(1.75*pi) q[19];
u2(0.0*pi,1.0*pi) q[22];
u2(0.0*pi,1.0*pi) q[23];
cx q[16],q[19];
swap q[21],q[23];
cx q[19],q[22];
cx q[24],q[23];
u1(1.75*pi) q[22];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
cx q[24],q[23];
cx q[24],q[23];
cx q[23],q[21];
cx q[24],q[25];
u1(1.75*pi) q[21];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[18],q[21];
cx q[23],q[24];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
cx q[24],q[25];
cx q[18],q[21];
cx q[23],q[24];
u2(0.0*pi,1.0*pi) q[23];
cx q[21],q[23];
u1(1.75*pi) q[23];
swap q[23],q[21];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[18],q[21];
cx q[21],q[23];
u1(0.25*pi) q[21];
u1(1.75*pi) q[23];
cx q[21],q[23];
swap q[18],q[21];
cx q[24],q[23];
cx q[23],q[21];
u1(1.75*pi) q[21];
swap q[21],q[23];
cx q[24],q[23];
u1(0.25*pi) q[23];
cx q[21],q[23];
u1(0.25*pi) q[21];
u1(1.75*pi) q[23];
cx q[24],q[23];
u1(0.25*pi) q[23];
u2(0.0*pi,1.0*pi) q[23];
u2(0.0*pi,1.0*pi) q[23];
swap q[21],q[23];
cx q[18],q[21];
cx q[24],q[23];
u1(1.75*pi) q[23];
u1(0.25*pi) q[24];
cx q[24],q[23];
cx q[24],q[23];
cx q[21],q[23];
u2(0.0*pi,1.0*pi) q[24];
cx q[18],q[21];
swap q[24],q[25];
u2(0.0*pi,1.0*pi) q[18];
cx q[21],q[23];
swap q[25],q[22];
cx q[15],q[18];
swap q[22],q[19];
cx q[23],q[21];
swap q[19],q[16];
u1(1.75*pi) q[18];
u1(1.75*pi) q[21];
swap q[25],q[22];
cx q[14],q[16];
cx q[17],q[18];
u1(1.75*pi) q[16];
u1(0.25*pi) q[18];
cx q[15],q[18];
cx q[19],q[16];
u1(0.25*pi) q[15];
u1(0.25*pi) q[16];
u1(1.75*pi) q[18];
cx q[14],q[16];
cx q[17],q[18];
u1(0.25*pi) q[14];
u1(1.75*pi) q[16];
u1(0.25*pi) q[18];
cx q[19],q[16];
u2(0.0*pi,1.0*pi) q[18];
u1(0.25*pi) q[16];
u2(0.0*pi,1.0*pi) q[18];
u2(0.0*pi,1.0*pi) q[16];
swap q[21],q[18];
swap q[14],q[16];
swap q[18],q[15];
swap q[13],q[14];
cx q[19],q[16];
cx q[17],q[18];
swap q[13],q[12];
u1(1.75*pi) q[16];
u1(0.25*pi) q[17];
u1(1.75*pi) q[18];
u1(0.25*pi) q[19];
cx q[12],q[15];
cx q[19],q[16];
cx q[17],q[18];
u1(0.25*pi) q[15];
cx q[19],q[22];
swap q[18],q[15];
u1(0.25*pi) q[22];
cx q[12],q[15];
swap q[21],q[18];
cx q[25],q[22];
cx q[13],q[12];
cx q[23],q[21];
u1(1.75*pi) q[22];
u1(0.25*pi) q[25];
cx q[12],q[15];
cx q[19],q[22];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[13],q[12];
cx q[15],q[18];
u1(0.25*pi) q[22];
swap q[12],q[15];
u1(1.75*pi) q[18];
u2(0.0*pi,1.0*pi) q[22];
swap q[18],q[15];
u2(0.0*pi,1.0*pi) q[22];
swap q[15],q[12];
cx q[18],q[21];
swap q[22],q[19];
cx q[13],q[12];
cx q[16],q[19];
u1(0.25*pi) q[21];
cx q[22],q[25];
u1(0.25*pi) q[12];
u1(1.75*pi) q[19];
u2(0.0*pi,1.0*pi) q[21];
u1(0.25*pi) q[22];
u1(1.75*pi) q[25];
cx q[15],q[12];
swap q[19],q[16];
u2(0.0*pi,1.0*pi) q[21];
cx q[22],q[25];
u1(1.75*pi) q[12];
cx q[14],q[16];
u1(0.25*pi) q[15];
swap q[23],q[21];
swap q[24],q[25];
cx q[13],q[12];
u1(0.25*pi) q[16];
cx q[18],q[21];
cx q[22],q[25];
u1(0.25*pi) q[12];
cx q[19],q[16];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
u2(0.0*pi,1.0*pi) q[12];
u1(1.75*pi) q[16];
cx q[18],q[21];
u1(0.25*pi) q[19];
u2(0.0*pi,1.0*pi) q[12];
cx q[14],q[16];
cx q[18],q[21];
swap q[13],q[12];
u1(0.25*pi) q[16];
swap q[17],q[18];
cx q[21],q[23];
cx q[12],q[15];
u2(0.0*pi,1.0*pi) q[16];
u1(1.75*pi) q[23];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
swap q[19],q[16];
swap q[23],q[21];
cx q[12],q[15];
cx q[14],q[16];
cx q[19],q[22];
cx q[12],q[15];
u1(0.25*pi) q[14];
u1(1.75*pi) q[16];
cx q[22],q[25];
swap q[13],q[12];
cx q[14],q[16];
cx q[18],q[15];
cx q[19],q[22];
swap q[25],q[24];
cx q[15],q[12];
u2(0.0*pi,1.0*pi) q[19];
u1(1.75*pi) q[12];
cx q[16],q[19];
cx q[13],q[12];
u1(1.75*pi) q[19];
u1(0.25*pi) q[12];
swap q[19],q[16];
cx q[15],q[12];
cx q[14],q[16];
u1(1.75*pi) q[12];
u1(0.25*pi) q[15];
u1(0.25*pi) q[16];
cx q[13],q[12];
cx q[19],q[16];
u1(0.25*pi) q[12];
u1(1.75*pi) q[16];
u1(0.25*pi) q[19];
u2(0.0*pi,1.0*pi) q[12];
cx q[14],q[16];
u2(0.0*pi,1.0*pi) q[12];
u1(0.25*pi) q[16];
swap q[15],q[12];
u2(0.0*pi,1.0*pi) q[16];
cx q[13],q[12];
swap q[19],q[16];
u1(1.75*pi) q[12];
u1(0.25*pi) q[13];
cx q[14],q[16];
cx q[13],q[12];
u1(0.25*pi) q[14];
u1(1.75*pi) q[16];
cx q[13],q[12];
cx q[14],q[16];
cx q[12],q[15];
u1(1.75*pi) q[15];
cx q[18],q[15];
u1(0.25*pi) q[15];
cx q[12],q[15];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
cx q[18],q[15];
u1(0.25*pi) q[15];
u2(0.0*pi,1.0*pi) q[15];
swap q[18],q[15];
cx q[15],q[12];
cx q[18],q[21];
u1(1.75*pi) q[12];
u1(0.25*pi) q[15];
u1(0.25*pi) q[21];
cx q[15],q[12];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[18],q[21];
cx q[23],q[24];
measure q[24] -> c[2];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
u2(0.0*pi,1.0*pi) q[23];
cx q[18],q[21];
cx q[21],q[23];
u1(1.75*pi) q[23];
swap q[23],q[21];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[18],q[21];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
cx q[18],q[21];
swap q[17],q[18];
cx q[18],q[21];
cx q[21],q[23];
u1(1.75*pi) q[23];
swap q[23],q[21];
cx q[18],q[21];
u1(0.25*pi) q[21];
cx q[23],q[21];
u1(1.75*pi) q[21];
u1(0.25*pi) q[23];
cx q[18],q[21];
u1(0.25*pi) q[21];
u2(0.0*pi,1.0*pi) q[21];
swap q[23],q[21];
cx q[18],q[21];
u1(0.25*pi) q[18];
u1(1.75*pi) q[21];
cx q[18],q[21];
cx q[18],q[21];
swap q[17],q[18];
cx q[18],q[21];
measure q[21] -> c[1];
u2(0.0*pi,1.0*pi) q[18];
swap q[18],q[15];
cx q[12],q[15];
u1(1.75*pi) q[15];
cx q[18],q[15];
u1(0.25*pi) q[15];
cx q[12],q[15];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
cx q[18],q[15];
u1(0.25*pi) q[15];
u2(0.0*pi,1.0*pi) q[15];
u2(0.0*pi,1.0*pi) q[15];
swap q[18],q[15];
cx q[15],q[12];
u1(1.75*pi) q[12];
u1(0.25*pi) q[15];
cx q[15],q[12];
cx q[13],q[12];
swap q[18],q[15];
cx q[12],q[15];
u1(1.75*pi) q[15];
swap q[15],q[12];
cx q[13],q[12];
u1(0.25*pi) q[12];
cx q[15],q[12];
u1(1.75*pi) q[12];
u1(0.25*pi) q[15];
cx q[13],q[12];
u1(0.25*pi) q[12];
u2(0.0*pi,1.0*pi) q[12];
swap q[13],q[12];
cx q[12],q[15];
u1(0.25*pi) q[12];
u1(1.75*pi) q[15];
cx q[12],q[15];
cx q[12],q[15];
cx q[18],q[15];
measure q[15] -> c[0];
