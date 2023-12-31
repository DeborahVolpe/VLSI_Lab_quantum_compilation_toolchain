OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[15];
u1(3.0517578125e-05*pi) q[0];
u1(6.103515625e-05*pi) q[1];
u1(0.000244140625*pi) q[4];
u1(0.0001220703125*pi) q[6];
u1(0.00048828125*pi) q[7];
u1(0.001953125*pi) q[10];
u1(0.00390625*pi) q[12];
u1(0.0009765625*pi) q[13];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[17];
u1(0.03125*pi) q[18];
u1(0.0625*pi) q[21];
u1(0.25*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.125*pi) q[25];
cx q[23],q[24];
u1(1.75*pi) q[24];
cx q[23],q[24];
u2(0.0*pi,1.0*pi) q[23];
u1(0.25*pi) q[24];
cx q[25],q[24];
u1(1.875*pi) q[24];
cx q[25],q[24];
u1(0.125*pi) q[24];
u1(0.25*pi) q[25];
swap q[24],q[23];
cx q[21],q[23];
cx q[25],q[24];
u1(1.9375*pi) q[23];
u1(1.75*pi) q[24];
cx q[21],q[23];
cx q[25],q[24];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
u1(0.25*pi) q[24];
u2(0.0*pi,1.0*pi) q[25];
swap q[23],q[21];
cx q[18],q[21];
cx q[23],q[24];
u1(1.96875*pi) q[21];
u1(1.875*pi) q[24];
cx q[18],q[21];
cx q[23],q[24];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
swap q[21],q[18];
swap q[24],q[23];
cx q[15],q[18];
cx q[21],q[23];
cx q[24],q[25];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
u1(1.75*pi) q[25];
cx q[15],q[18];
cx q[21],q[23];
cx q[24],q[25];
u1(0.03125*pi) q[15];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[17],q[18];
swap q[23],q[21];
swap q[25],q[24];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
cx q[17],q[18];
u1(1.875*pi) q[24];
u1(0.015625*pi) q[17];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
cx q[12],q[15];
cx q[18],q[21];
swap q[24],q[23];
u1(1.99609375*pi) q[15];
u1(1.96875*pi) q[21];
cx q[24],q[25];
cx q[12],q[15];
cx q[18],q[21];
u1(1.75*pi) q[25];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
cx q[24],q[25];
swap q[15],q[12];
swap q[21],q[18];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[10],q[12];
cx q[17],q[18];
cx q[21],q[23];
swap q[25],q[24];
u1(1.998046875*pi) q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
cx q[10],q[12];
cx q[17],q[18];
cx q[21],q[23];
u1(0.00390625*pi) q[10];
u1(0.001953125*pi) q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
cx q[13],q[12];
cx q[15],q[18];
swap q[23],q[21];
u1(1.9990234375*pi) q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
cx q[13],q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
u1(0.0009765625*pi) q[12];
u1(0.001953125*pi) q[13];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
swap q[12],q[10];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
cx q[7],q[10];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
u1(1.99951171875*pi) q[10];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[7],q[10];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
u1(0.0009765625*pi) q[7];
u1(0.00048828125*pi) q[10];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
swap q[10],q[7];
swap q[15],q[12];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[4],q[7];
cx q[13],q[12];
swap q[21],q[18];
swap q[25],q[24];
u1(1.999755859375*pi) q[7];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
cx q[4],q[7];
cx q[13],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
u1(0.00048828125*pi) q[4];
u1(0.000244140625*pi) q[7];
u1(0.001953125*pi) q[12];
u1(0.00390625*pi) q[13];
cx q[17],q[18];
cx q[21],q[23];
cx q[6],q[7];
cx q[10],q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
u1(1.9998779296875*pi) q[7];
u1(1.9990234375*pi) q[12];
cx q[15],q[18];
swap q[23],q[21];
cx q[6],q[7];
cx q[10],q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
u1(0.000244140625*pi) q[6];
u1(0.0001220703125*pi) q[7];
u1(0.001953125*pi) q[10];
u1(0.0009765625*pi) q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
swap q[7],q[4];
swap q[12],q[10];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
cx q[1],q[4];
cx q[7],q[10];
swap q[13],q[12];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
u1(1.99993896484375*pi) q[4];
u1(1.99951171875*pi) q[10];
cx q[12],q[15];
swap q[17],q[18];
swap q[24],q[23];
cx q[1],q[4];
cx q[7],q[10];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
u1(0.0001220703125*pi) q[1];
u1(6.103515625e-05*pi) q[4];
u1(0.0009765625*pi) q[7];
u1(0.00048828125*pi) q[10];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
swap q[4],q[1];
swap q[10],q[7];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[0],q[1];
cx q[6],q[7];
swap q[12],q[15];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
u1(1.999969482421875*pi) q[1];
u1(1.999755859375*pi) q[7];
cx q[13],q[12];
swap q[21],q[18];
swap q[25],q[24];
cx q[0],q[1];
cx q[6],q[7];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
u1(6.103515625e-05*pi) q[0];
u1(3.0517578125e-05*pi) q[1];
u1(0.00048828125*pi) q[6];
u1(0.000244140625*pi) q[7];
cx q[13],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
measure q[1] -> c[0];
cx q[4],q[7];
u1(0.001953125*pi) q[12];
u1(0.00390625*pi) q[13];
cx q[17],q[18];
cx q[21],q[23];
swap q[0],q[1];
u1(1.9998779296875*pi) q[7];
cx q[10],q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
cx q[4],q[7];
u1(1.9990234375*pi) q[12];
cx q[15],q[18];
swap q[23],q[21];
u1(0.000244140625*pi) q[4];
u1(0.0001220703125*pi) q[7];
cx q[10],q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
swap q[7],q[4];
u1(0.001953125*pi) q[10];
u1(0.0009765625*pi) q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
cx q[1],q[4];
swap q[6],q[7];
swap q[12],q[10];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
u1(1.99993896484375*pi) q[4];
cx q[7],q[10];
swap q[13],q[12];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
cx q[1],q[4];
u1(1.99951171875*pi) q[10];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
u1(0.0001220703125*pi) q[1];
u1(6.103515625e-05*pi) q[4];
cx q[7],q[10];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
measure q[4] -> c[1];
u1(0.0009765625*pi) q[7];
u1(0.00048828125*pi) q[10];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
swap q[1],q[4];
swap q[10],q[7];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[6],q[7];
swap q[12],q[15];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
u1(1.999755859375*pi) q[7];
cx q[13],q[12];
swap q[21],q[18];
swap q[25],q[24];
cx q[6],q[7];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
u1(0.00048828125*pi) q[6];
u1(0.000244140625*pi) q[7];
cx q[13],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
cx q[4],q[7];
u1(0.001953125*pi) q[12];
u1(0.00390625*pi) q[13];
cx q[17],q[18];
cx q[21],q[23];
u1(1.9998779296875*pi) q[7];
cx q[10],q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
cx q[4],q[7];
u1(1.9990234375*pi) q[12];
cx q[15],q[18];
swap q[23],q[21];
u1(0.000244140625*pi) q[4];
u1(0.0001220703125*pi) q[7];
cx q[10],q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
measure q[7] -> c[2];
u1(0.001953125*pi) q[10];
u1(0.0009765625*pi) q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
swap q[6],q[7];
swap q[12],q[10];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
cx q[7],q[10];
swap q[13],q[12];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
u1(1.99951171875*pi) q[10];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
cx q[7],q[10];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
u1(0.0009765625*pi) q[7];
u1(0.00048828125*pi) q[10];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
swap q[10],q[7];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[4],q[7];
swap q[12],q[15];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
u1(1.999755859375*pi) q[7];
cx q[13],q[12];
swap q[21],q[18];
swap q[25],q[24];
cx q[4],q[7];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
u1(0.00048828125*pi) q[4];
u1(0.000244140625*pi) q[7];
cx q[13],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
measure q[7] -> c[3];
u1(0.001953125*pi) q[12];
u1(0.00390625*pi) q[13];
cx q[17],q[18];
cx q[21],q[23];
swap q[4],q[7];
cx q[10],q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
u1(1.9990234375*pi) q[12];
cx q[15],q[18];
swap q[23],q[21];
cx q[10],q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
u1(0.001953125*pi) q[10];
u1(0.0009765625*pi) q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
swap q[12],q[10];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
cx q[7],q[10];
swap q[13],q[12];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
u1(1.99951171875*pi) q[10];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
cx q[7],q[10];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
u1(0.0009765625*pi) q[7];
u1(0.00048828125*pi) q[10];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
measure q[10] -> c[4];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
swap q[7],q[10];
swap q[12],q[15];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[13],q[12];
swap q[21],q[18];
swap q[25],q[24];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
cx q[13],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
u1(0.001953125*pi) q[12];
u1(0.00390625*pi) q[13];
cx q[17],q[18];
cx q[21],q[23];
cx q[10],q[12];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
u1(1.9990234375*pi) q[12];
cx q[15],q[18];
swap q[23],q[21];
cx q[10],q[12];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
u1(0.001953125*pi) q[10];
u1(0.0009765625*pi) q[12];
cx q[15],q[18];
u1(1.875*pi) q[24];
measure q[12] -> c[5];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
swap q[13],q[12];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
swap q[15],q[12];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[10],q[12];
swap q[21],q[18];
swap q[25],q[24];
u1(1.998046875*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
cx q[10],q[12];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
u1(0.00390625*pi) q[10];
u1(0.001953125*pi) q[12];
cx q[17],q[18];
cx q[21],q[23];
measure q[12] -> c[6];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
swap q[10],q[12];
cx q[15],q[18];
swap q[23],q[21];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
cx q[15],q[18];
u1(1.875*pi) q[24];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
swap q[18],q[15];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
cx q[12],q[15];
swap q[17],q[18];
swap q[23],q[24];
u1(1.99609375*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
cx q[12],q[15];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
u1(0.0078125*pi) q[12];
u1(0.00390625*pi) q[15];
cx q[18],q[21];
cx q[24],q[25];
measure q[15] -> c[7];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
swap q[12],q[15];
swap q[21],q[18];
swap q[25],q[24];
cx q[17],q[18];
cx q[21],q[23];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
cx q[17],q[18];
cx q[21],q[23];
u1(0.03125*pi) q[17];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
cx q[15],q[18];
swap q[23],q[21];
u1(1.9921875*pi) q[18];
cx q[23],q[24];
cx q[15],q[18];
u1(1.875*pi) q[24];
u1(0.015625*pi) q[15];
u1(0.0078125*pi) q[18];
cx q[23],q[24];
measure q[18] -> c[8];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
swap q[17],q[18];
swap q[23],q[24];
cx q[18],q[21];
cx q[24],q[25];
u1(1.96875*pi) q[21];
u1(1.75*pi) q[25];
cx q[18],q[21];
cx q[24],q[25];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
swap q[21],q[18];
swap q[25],q[24];
cx q[15],q[18];
cx q[21],q[23];
u1(1.984375*pi) q[18];
u1(1.9375*pi) q[23];
cx q[15],q[18];
cx q[21],q[23];
u1(0.03125*pi) q[15];
u1(0.015625*pi) q[18];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
measure q[18] -> c[9];
swap q[23],q[21];
swap q[15],q[18];
cx q[23],q[24];
cx q[18],q[21];
u1(1.875*pi) q[24];
u1(1.96875*pi) q[21];
cx q[23],q[24];
cx q[18],q[21];
u1(0.25*pi) q[23];
u1(0.125*pi) q[24];
u1(0.0625*pi) q[18];
u1(0.03125*pi) q[21];
swap q[24],q[23];
measure q[21] -> c[10];
cx q[24],q[25];
swap q[18],q[21];
u1(1.75*pi) q[25];
cx q[21],q[23];
cx q[24],q[25];
u1(1.9375*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
u1(0.25*pi) q[25];
cx q[21],q[23];
u1(0.125*pi) q[21];
u1(0.0625*pi) q[23];
measure q[23] -> c[11];
swap q[21],q[23];
swap q[23],q[24];
cx q[24],q[25];
u1(1.875*pi) q[25];
cx q[24],q[25];
u1(0.25*pi) q[24];
u1(0.125*pi) q[25];
measure q[25] -> c[12];
cx q[24],q[23];
u1(1.75*pi) q[23];
cx q[24],q[23];
u1(0.25*pi) q[23];
u2(0.0*pi,1.0*pi) q[24];
measure q[23] -> c[13];
measure q[24] -> c[14];
