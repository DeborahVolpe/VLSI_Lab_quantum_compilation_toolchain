OPENQASM 2.0;
include "qelib1.inc";

qreg q[27];
creg c[15];
u1(3.0517578125e-05*pi) q[2];
u1(6.103515625e-05*pi) q[3];
u1(0.000244140625*pi) q[5];
u1(0.00048828125*pi) q[8];
u1(0.0001220703125*pi) q[9];
u1(0.001953125*pi) q[11];
u1(0.0009765625*pi) q[13];
u1(0.00390625*pi) q[14];
u1(0.015625*pi) q[16];
u1(0.03125*pi) q[19];
u1(0.0078125*pi) q[20];
u1(0.125*pi) q[22];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
u1(0.0625*pi) q[26];
cx q[24],q[25];
u1(1.75*pi) q[25];
cx q[24],q[25];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[22],q[25];
u1(1.875*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[22];
u1(0.125*pi) q[25];
cx q[26],q[25];
u1(1.9375*pi) q[25];
cx q[26],q[25];
u1(0.0625*pi) q[25];
u1(0.125*pi) q[26];
swap q[25],q[22];
cx q[19],q[22];
cx q[25],q[24];
u1(1.96875*pi) q[22];
u1(1.75*pi) q[24];
cx q[19],q[22];
cx q[25],q[24];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
swap q[22],q[19];
swap q[24],q[25];
cx q[16],q[19];
cx q[26],q[25];
u1(1.984375*pi) q[19];
u1(1.875*pi) q[25];
cx q[16],q[19];
cx q[26],q[25];
u1(0.03125*pi) q[16];
u1(0.015625*pi) q[19];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
cx q[20],q[19];
cx q[22],q[25];
u1(1.9921875*pi) q[19];
u1(1.9375*pi) q[25];
cx q[20],q[19];
cx q[22],q[25];
u1(0.0078125*pi) q[19];
u1(0.015625*pi) q[20];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
swap q[19],q[16];
swap q[25],q[22];
cx q[14],q[16];
cx q[19],q[22];
swap q[24],q[25];
u1(1.99609375*pi) q[16];
u1(1.96875*pi) q[22];
cx q[26],q[25];
cx q[14],q[16];
cx q[19],q[22];
u1(1.75*pi) q[25];
u1(0.0078125*pi) q[14];
u1(0.00390625*pi) q[16];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
cx q[26],q[25];
swap q[16],q[14];
swap q[22],q[19];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
cx q[11],q[14];
cx q[20],q[19];
cx q[24],q[25];
u1(1.998046875*pi) q[14];
u1(1.984375*pi) q[19];
u1(1.875*pi) q[25];
cx q[11],q[14];
cx q[20],q[19];
cx q[24],q[25];
u1(0.00390625*pi) q[11];
u1(0.001953125*pi) q[14];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[20];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
cx q[13],q[14];
cx q[16],q[19];
cx q[22],q[25];
u1(1.9990234375*pi) q[14];
u1(1.9921875*pi) q[19];
u1(1.9375*pi) q[25];
cx q[13],q[14];
cx q[16],q[19];
cx q[22],q[25];
u1(0.001953125*pi) q[13];
u1(0.0009765625*pi) q[14];
u1(0.015625*pi) q[16];
u1(0.0078125*pi) q[19];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
swap q[14],q[11];
swap q[19],q[16];
swap q[25],q[22];
cx q[8],q[11];
cx q[14],q[16];
swap q[20],q[19];
swap q[26],q[25];
u1(1.99951171875*pi) q[11];
u1(1.99609375*pi) q[16];
cx q[19],q[22];
cx q[24],q[25];
cx q[8],q[11];
cx q[14],q[16];
u1(1.96875*pi) q[22];
u1(1.75*pi) q[25];
u1(0.0009765625*pi) q[8];
u1(0.00048828125*pi) q[11];
u1(0.0078125*pi) q[14];
u1(0.00390625*pi) q[16];
cx q[19],q[22];
cx q[24],q[25];
swap q[11],q[8];
swap q[16],q[14];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[5],q[8];
cx q[13],q[14];
swap q[19],q[22];
cx q[26],q[25];
u1(1.999755859375*pi) q[8];
u1(1.998046875*pi) q[14];
cx q[20],q[19];
u1(1.875*pi) q[25];
cx q[5],q[8];
cx q[13],q[14];
u1(1.984375*pi) q[19];
cx q[26],q[25];
u1(0.00048828125*pi) q[5];
u1(0.000244140625*pi) q[8];
u1(0.00390625*pi) q[13];
u1(0.001953125*pi) q[14];
cx q[20],q[19];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
cx q[9],q[8];
cx q[11],q[14];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[20];
cx q[22],q[25];
u1(1.9998779296875*pi) q[8];
u1(1.9990234375*pi) q[14];
cx q[16],q[19];
u1(1.9375*pi) q[25];
cx q[9],q[8];
cx q[11],q[14];
u1(1.9921875*pi) q[19];
cx q[22],q[25];
u1(0.0001220703125*pi) q[8];
u1(0.000244140625*pi) q[9];
u1(0.001953125*pi) q[11];
u1(0.0009765625*pi) q[14];
cx q[16],q[19];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
swap q[8],q[5];
swap q[14],q[11];
u1(0.015625*pi) q[16];
u1(0.0078125*pi) q[19];
swap q[25],q[22];
cx q[3],q[5];
cx q[8],q[11];
swap q[13],q[14];
swap q[19],q[16];
swap q[24],q[25];
u1(1.99993896484375*pi) q[5];
u1(1.99951171875*pi) q[11];
cx q[14],q[16];
swap q[22],q[19];
cx q[26],q[25];
cx q[3],q[5];
cx q[8],q[11];
u1(1.99609375*pi) q[16];
cx q[20],q[19];
u1(1.75*pi) q[25];
u1(0.0001220703125*pi) q[3];
u1(6.103515625e-05*pi) q[5];
u1(0.0009765625*pi) q[8];
u1(0.00048828125*pi) q[11];
cx q[14],q[16];
u1(1.96875*pi) q[19];
cx q[26],q[25];
swap q[5],q[3];
swap q[11],q[8];
u1(0.0078125*pi) q[14];
u1(0.00390625*pi) q[16];
cx q[20],q[19];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
cx q[2],q[3];
cx q[9],q[8];
swap q[16],q[14];
u1(0.03125*pi) q[19];
u1(0.0625*pi) q[20];
cx q[24],q[25];
u1(1.999969482421875*pi) q[3];
u1(1.999755859375*pi) q[8];
cx q[13],q[14];
cx q[22],q[19];
u1(1.875*pi) q[25];
cx q[2],q[3];
cx q[9],q[8];
u1(1.998046875*pi) q[14];
u1(1.984375*pi) q[19];
cx q[24],q[25];
u1(6.103515625e-05*pi) q[2];
u1(3.0517578125e-05*pi) q[3];
u1(0.000244140625*pi) q[8];
u1(0.00048828125*pi) q[9];
cx q[13],q[14];
cx q[22],q[19];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
measure q[3] -> c[0];
cx q[5],q[8];
u1(0.00390625*pi) q[13];
u1(0.001953125*pi) q[14];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[22];
swap q[2],q[3];
u1(1.9998779296875*pi) q[8];
cx q[11],q[14];
cx q[16],q[19];
cx q[5],q[8];
u1(1.9990234375*pi) q[14];
u1(1.9921875*pi) q[19];
u1(0.000244140625*pi) q[5];
u1(0.0001220703125*pi) q[8];
cx q[11],q[14];
cx q[16],q[19];
swap q[8],q[5];
u1(0.001953125*pi) q[11];
u1(0.0009765625*pi) q[14];
u1(0.015625*pi) q[16];
u1(0.0078125*pi) q[19];
cx q[3],q[5];
swap q[9],q[8];
swap q[14],q[11];
swap q[19],q[16];
u1(1.99993896484375*pi) q[5];
cx q[8],q[11];
swap q[16],q[14];
swap q[20],q[19];
cx q[3],q[5];
u1(1.99951171875*pi) q[11];
cx q[13],q[14];
swap q[19],q[22];
u1(0.0001220703125*pi) q[3];
u1(6.103515625e-05*pi) q[5];
cx q[8],q[11];
u1(1.99609375*pi) q[14];
cx q[22],q[25];
measure q[5] -> c[1];
u1(0.0009765625*pi) q[8];
u1(0.00048828125*pi) q[11];
cx q[13],q[14];
u1(1.9375*pi) q[25];
swap q[3],q[5];
swap q[8],q[11];
u1(0.0078125*pi) q[13];
u1(0.00390625*pi) q[14];
cx q[22],q[25];
cx q[9],q[8];
cx q[16],q[14];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
u1(1.999755859375*pi) q[8];
u1(1.998046875*pi) q[14];
swap q[25],q[22];
cx q[9],q[8];
cx q[16],q[14];
cx q[19],q[22];
swap q[26],q[25];
u1(0.000244140625*pi) q[8];
u1(0.00048828125*pi) q[9];
u1(0.001953125*pi) q[14];
u1(0.00390625*pi) q[16];
u1(1.96875*pi) q[22];
cx q[24],q[25];
cx q[5],q[8];
cx q[11],q[14];
cx q[19],q[22];
u1(1.75*pi) q[25];
u1(1.9998779296875*pi) q[8];
u1(1.9990234375*pi) q[14];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
cx q[24],q[25];
cx q[5],q[8];
cx q[11],q[14];
swap q[22],q[19];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
u1(0.000244140625*pi) q[5];
u1(0.0001220703125*pi) q[8];
u1(0.001953125*pi) q[11];
u1(0.0009765625*pi) q[14];
cx q[20],q[19];
cx q[26],q[25];
measure q[8] -> c[2];
swap q[14],q[11];
u1(1.984375*pi) q[19];
u1(1.875*pi) q[25];
swap q[11],q[8];
swap q[13],q[14];
cx q[20],q[19];
cx q[26],q[25];
cx q[9],q[8];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[20];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
u1(1.99951171875*pi) q[8];
swap q[19],q[16];
cx q[22],q[25];
cx q[9],q[8];
cx q[14],q[16];
u1(1.9375*pi) q[25];
u1(0.00048828125*pi) q[8];
u1(0.0009765625*pi) q[9];
u1(1.9921875*pi) q[16];
cx q[22],q[25];
cx q[5],q[8];
cx q[14],q[16];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
u1(1.999755859375*pi) q[8];
u1(0.015625*pi) q[14];
u1(0.0078125*pi) q[16];
swap q[25],q[22];
cx q[5],q[8];
cx q[19],q[16];
swap q[24],q[25];
u1(0.00048828125*pi) q[5];
u1(0.000244140625*pi) q[8];
u1(1.99609375*pi) q[16];
cx q[26],q[25];
measure q[8] -> c[3];
cx q[19],q[16];
u1(1.75*pi) q[25];
swap q[9],q[8];
u1(0.00390625*pi) q[16];
u1(0.0078125*pi) q[19];
cx q[26],q[25];
swap q[16],q[14];
swap q[22],q[19];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
cx q[13],q[14];
cx q[20],q[19];
cx q[24],q[25];
u1(1.998046875*pi) q[14];
u1(1.96875*pi) q[19];
u1(1.875*pi) q[25];
cx q[13],q[14];
cx q[20],q[19];
cx q[24],q[25];
u1(0.00390625*pi) q[13];
u1(0.001953125*pi) q[14];
u1(0.03125*pi) q[19];
u1(0.0625*pi) q[20];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
swap q[14],q[11];
cx q[16],q[19];
cx q[8],q[11];
u1(1.984375*pi) q[19];
u1(1.9990234375*pi) q[11];
cx q[16],q[19];
cx q[8],q[11];
u1(0.03125*pi) q[16];
u1(0.015625*pi) q[19];
u1(0.001953125*pi) q[8];
u1(0.0009765625*pi) q[11];
cx q[22],q[19];
swap q[11],q[8];
u1(1.9921875*pi) q[19];
cx q[5],q[8];
cx q[22],q[19];
u1(1.99951171875*pi) q[8];
u1(0.0078125*pi) q[19];
u1(0.015625*pi) q[22];
cx q[5],q[8];
swap q[19],q[16];
u1(0.0009765625*pi) q[5];
u1(0.00048828125*pi) q[8];
swap q[16],q[14];
swap q[20],q[19];
measure q[8] -> c[4];
cx q[13],q[14];
swap q[19],q[22];
swap q[5],q[8];
u1(1.99609375*pi) q[14];
cx q[22],q[25];
cx q[13],q[14];
u1(1.9375*pi) q[25];
u1(0.0078125*pi) q[13];
u1(0.00390625*pi) q[14];
cx q[22],q[25];
cx q[11],q[14];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
u1(1.998046875*pi) q[14];
swap q[25],q[22];
cx q[11],q[14];
swap q[22],q[19];
swap q[26],q[25];
u1(0.00390625*pi) q[11];
u1(0.001953125*pi) q[14];
cx q[20],q[19];
cx q[24],q[25];
swap q[14],q[11];
u1(1.96875*pi) q[19];
u1(1.75*pi) q[25];
cx q[8],q[11];
cx q[20],q[19];
cx q[24],q[25];
u1(1.9990234375*pi) q[11];
u1(0.03125*pi) q[19];
u1(0.0625*pi) q[20];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[8],q[11];
cx q[22],q[19];
cx q[26],q[25];
u1(0.001953125*pi) q[8];
u1(0.0009765625*pi) q[11];
u1(1.984375*pi) q[19];
u1(1.875*pi) q[25];
measure q[11] -> c[5];
cx q[22],q[19];
cx q[26],q[25];
swap q[8],q[11];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[22];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
swap q[19],q[16];
swap q[16],q[14];
swap q[20],q[19];
cx q[13],q[14];
swap q[19],q[22];
u1(1.9921875*pi) q[14];
cx q[22],q[25];
cx q[13],q[14];
u1(1.9375*pi) q[25];
u1(0.015625*pi) q[13];
u1(0.0078125*pi) q[14];
cx q[22],q[25];
cx q[16],q[14];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
u1(1.99609375*pi) q[14];
swap q[25],q[22];
cx q[16],q[14];
cx q[19],q[22];
swap q[24],q[25];
u1(0.00390625*pi) q[14];
u1(0.0078125*pi) q[16];
u1(1.96875*pi) q[22];
cx q[26],q[25];
cx q[11],q[14];
cx q[19],q[22];
u1(1.75*pi) q[25];
u1(1.998046875*pi) q[14];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
cx q[26],q[25];
cx q[11],q[14];
swap q[22],q[19];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
u1(0.00390625*pi) q[11];
u1(0.001953125*pi) q[14];
swap q[19],q[16];
cx q[24],q[25];
measure q[14] -> c[6];
u1(1.875*pi) q[25];
swap q[13],q[14];
cx q[24],q[25];
cx q[14],q[16];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
u1(1.984375*pi) q[16];
cx q[22],q[25];
cx q[14],q[16];
u1(1.9375*pi) q[25];
u1(0.03125*pi) q[14];
u1(0.015625*pi) q[16];
cx q[22],q[25];
cx q[19],q[16];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
u1(1.9921875*pi) q[16];
swap q[25],q[22];
cx q[19],q[16];
swap q[26],q[25];
u1(0.0078125*pi) q[16];
u1(0.015625*pi) q[19];
cx q[24],q[25];
swap q[16],q[14];
swap q[22],q[19];
u1(1.75*pi) q[25];
cx q[11],q[14];
cx q[16],q[19];
cx q[24],q[25];
u1(1.99609375*pi) q[14];
u1(1.96875*pi) q[19];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[11],q[14];
cx q[16],q[19];
cx q[26],q[25];
u1(0.0078125*pi) q[11];
u1(0.00390625*pi) q[14];
u1(0.0625*pi) q[16];
u1(0.03125*pi) q[19];
u1(1.875*pi) q[25];
measure q[14] -> c[7];
cx q[22],q[19];
cx q[26],q[25];
swap q[11],q[14];
u1(1.984375*pi) q[19];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
cx q[22],q[19];
u1(0.015625*pi) q[19];
u1(0.03125*pi) q[22];
swap q[19],q[16];
cx q[14],q[16];
swap q[19],q[22];
u1(1.9921875*pi) q[16];
cx q[22],q[25];
cx q[14],q[16];
u1(1.9375*pi) q[25];
u1(0.015625*pi) q[14];
u1(0.0078125*pi) q[16];
cx q[22],q[25];
measure q[16] -> c[8];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
swap q[14],q[16];
swap q[25],q[22];
cx q[19],q[22];
swap q[24],q[25];
u1(1.96875*pi) q[22];
cx q[26],q[25];
cx q[19],q[22];
u1(1.75*pi) q[25];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
cx q[26],q[25];
swap q[22],q[19];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
cx q[16],q[19];
cx q[24],q[25];
u1(1.984375*pi) q[19];
u1(1.875*pi) q[25];
cx q[16],q[19];
cx q[24],q[25];
u1(0.03125*pi) q[16];
u1(0.015625*pi) q[19];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
measure q[19] -> c[9];
cx q[22],q[25];
swap q[16],q[19];
u1(1.9375*pi) q[25];
cx q[22],q[25];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
swap q[25],q[22];
cx q[19],q[22];
swap q[26],q[25];
u1(1.96875*pi) q[22];
cx q[24],q[25];
cx q[19],q[22];
u1(1.75*pi) q[25];
u1(0.0625*pi) q[19];
u1(0.03125*pi) q[22];
cx q[24],q[25];
measure q[22] -> c[10];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
swap q[19],q[22];
cx q[26],q[25];
u1(1.875*pi) q[25];
cx q[26],q[25];
u1(0.125*pi) q[25];
u1(0.25*pi) q[26];
cx q[22],q[25];
u1(1.9375*pi) q[25];
cx q[22],q[25];
u1(0.125*pi) q[22];
u1(0.0625*pi) q[25];
measure q[25] -> c[11];
swap q[24],q[25];
cx q[26],q[25];
u1(1.75*pi) q[25];
cx q[26],q[25];
u1(0.25*pi) q[25];
u2(0.0*pi,1.0*pi) q[26];
cx q[22],q[25];
u1(1.875*pi) q[25];
cx q[22],q[25];
u1(0.25*pi) q[22];
u1(0.125*pi) q[25];
measure q[25] -> c[12];
swap q[26],q[25];
cx q[22],q[25];
u1(1.75*pi) q[25];
cx q[22],q[25];
u2(0.0*pi,1.0*pi) q[22];
u1(0.25*pi) q[25];
measure q[25] -> c[13];
measure q[22] -> c[14];