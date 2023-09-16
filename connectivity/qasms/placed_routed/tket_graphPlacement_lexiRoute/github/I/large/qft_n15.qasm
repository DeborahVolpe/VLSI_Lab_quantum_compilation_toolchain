OPENQASM 2.0;
include "qelib1.inc";

qreg q[15];
creg c[15];
ry(0.5*pi) q[0];
rz(0.25*pi) q[1];
rz(0.0625*pi) q[2];
rz(0.125*pi) q[3];
rz(0.03125*pi) q[4];
rz(0.015625*pi) q[5];
rz(0.0078125*pi) q[6];
rz(0.00390625*pi) q[7];
rz(0.001953125*pi) q[8];
rz(0.0009765625*pi) q[9];
rz(0.00048828125*pi) q[10];
rz(0.000244140625*pi) q[11];
rz(0.0001220703125*pi) q[12];
rz(6.103515625e-05*pi) q[13];
rz(3.0517578125e-05*pi) q[14];
rx(1.0*pi) q[0];
cx q[1],q[0];
rz(3.75*pi) q[0];
cx q[1],q[0];
rz(0.25*pi) q[0];
ry(0.5*pi) q[1];
cx q[3],q[0];
rx(1.0*pi) q[1];
rz(3.875*pi) q[0];
cx q[3],q[0];
rz(0.125*pi) q[0];
rz(0.25*pi) q[3];
cx q[2],q[0];
cx q[3],q[1];
rz(3.9375*pi) q[0];
rz(3.75*pi) q[1];
cx q[2],q[0];
cx q[3],q[1];
rz(0.0625*pi) q[0];
rz(0.25*pi) q[1];
rz(0.125*pi) q[2];
ry(0.5*pi) q[3];
cx q[4],q[0];
cx q[2],q[1];
rx(1.0*pi) q[3];
rz(3.96875*pi) q[0];
rz(3.875*pi) q[1];
cx q[4],q[0];
cx q[2],q[1];
rz(0.03125*pi) q[0];
rz(0.125*pi) q[1];
rz(0.25*pi) q[2];
rz(0.0625*pi) q[4];
cx q[5],q[0];
cx q[4],q[1];
cx q[2],q[3];
rz(3.984375*pi) q[0];
rz(3.9375*pi) q[1];
rz(3.75*pi) q[3];
cx q[5],q[0];
cx q[4],q[1];
cx q[2],q[3];
rz(0.015625*pi) q[0];
rz(0.0625*pi) q[1];
ry(0.5*pi) q[2];
rz(0.25*pi) q[3];
rz(0.125*pi) q[4];
rz(0.03125*pi) q[5];
cx q[6],q[0];
cx q[5],q[1];
rx(1.0*pi) q[2];
cx q[4],q[3];
rz(3.9921875*pi) q[0];
rz(3.96875*pi) q[1];
rz(3.875*pi) q[3];
cx q[6],q[0];
cx q[5],q[1];
cx q[4],q[3];
rz(0.0078125*pi) q[0];
rz(0.03125*pi) q[1];
rz(0.125*pi) q[3];
rz(0.25*pi) q[4];
rz(0.0625*pi) q[5];
rz(0.015625*pi) q[6];
cx q[7],q[0];
cx q[6],q[1];
cx q[4],q[2];
cx q[5],q[3];
rz(3.99609375*pi) q[0];
rz(3.984375*pi) q[1];
rz(3.75*pi) q[2];
rz(3.9375*pi) q[3];
cx q[7],q[0];
cx q[6],q[1];
cx q[4],q[2];
cx q[5],q[3];
rz(0.00390625*pi) q[0];
rz(0.015625*pi) q[1];
rz(0.25*pi) q[2];
rz(0.0625*pi) q[3];
ry(0.5*pi) q[4];
rz(0.125*pi) q[5];
rz(0.03125*pi) q[6];
rz(0.0078125*pi) q[7];
cx q[8],q[0];
cx q[7],q[1];
cx q[5],q[2];
cx q[6],q[3];
rx(1.0*pi) q[4];
rz(3.998046875*pi) q[0];
rz(3.9921875*pi) q[1];
rz(3.875*pi) q[2];
rz(3.96875*pi) q[3];
cx q[8],q[0];
cx q[7],q[1];
cx q[5],q[2];
cx q[6],q[3];
rz(0.001953125*pi) q[0];
rz(0.0078125*pi) q[1];
rz(0.125*pi) q[2];
rz(0.03125*pi) q[3];
rz(0.25*pi) q[5];
rz(0.0625*pi) q[6];
rz(0.015625*pi) q[7];
rz(0.00390625*pi) q[8];
cx q[9],q[0];
cx q[8],q[1];
cx q[6],q[2];
cx q[7],q[3];
cx q[5],q[4];
rz(3.9990234375*pi) q[0];
rz(3.99609375*pi) q[1];
rz(3.9375*pi) q[2];
rz(3.984375*pi) q[3];
rz(3.75*pi) q[4];
cx q[9],q[0];
cx q[8],q[1];
cx q[6],q[2];
cx q[7],q[3];
cx q[5],q[4];
rz(0.0009765625*pi) q[0];
rz(0.00390625*pi) q[1];
rz(0.0625*pi) q[2];
rz(0.015625*pi) q[3];
rz(0.25*pi) q[4];
ry(0.5*pi) q[5];
rz(0.125*pi) q[6];
rz(0.03125*pi) q[7];
rz(0.0078125*pi) q[8];
rz(0.001953125*pi) q[9];
cx q[10],q[0];
cx q[9],q[1];
cx q[7],q[2];
cx q[8],q[3];
cx q[6],q[4];
rx(1.0*pi) q[5];
rz(3.99951171875*pi) q[0];
rz(3.998046875*pi) q[1];
rz(3.96875*pi) q[2];
rz(3.9921875*pi) q[3];
rz(3.875*pi) q[4];
cx q[10],q[0];
cx q[9],q[1];
cx q[7],q[2];
cx q[8],q[3];
cx q[6],q[4];
rz(0.00048828125*pi) q[0];
rz(0.001953125*pi) q[1];
rz(0.03125*pi) q[2];
rz(0.0078125*pi) q[3];
rz(0.125*pi) q[4];
rz(0.25*pi) q[6];
rz(0.0625*pi) q[7];
rz(0.015625*pi) q[8];
rz(0.00390625*pi) q[9];
rz(0.0009765625*pi) q[10];
cx q[11],q[0];
cx q[10],q[1];
cx q[8],q[2];
cx q[9],q[3];
cx q[7],q[4];
cx q[6],q[5];
rz(3.999755859375*pi) q[0];
rz(3.9990234375*pi) q[1];
rz(3.984375*pi) q[2];
rz(3.99609375*pi) q[3];
rz(3.9375*pi) q[4];
rz(3.75*pi) q[5];
cx q[11],q[0];
cx q[10],q[1];
cx q[8],q[2];
cx q[9],q[3];
cx q[7],q[4];
cx q[6],q[5];
rz(0.000244140625*pi) q[0];
rz(0.0009765625*pi) q[1];
rz(0.015625*pi) q[2];
rz(0.00390625*pi) q[3];
rz(0.0625*pi) q[4];
rz(0.25*pi) q[5];
ry(0.5*pi) q[6];
rz(0.125*pi) q[7];
rz(0.03125*pi) q[8];
rz(0.0078125*pi) q[9];
rz(0.001953125*pi) q[10];
rz(0.00048828125*pi) q[11];
cx q[12],q[0];
cx q[11],q[1];
cx q[9],q[2];
cx q[10],q[3];
cx q[8],q[4];
cx q[7],q[5];
rx(1.0*pi) q[6];
rz(3.9998779296875*pi) q[0];
rz(3.99951171875*pi) q[1];
rz(3.9921875*pi) q[2];
rz(3.998046875*pi) q[3];
rz(3.96875*pi) q[4];
rz(3.875*pi) q[5];
cx q[12],q[0];
cx q[11],q[1];
cx q[9],q[2];
cx q[10],q[3];
cx q[8],q[4];
cx q[7],q[5];
rz(0.0001220703125*pi) q[0];
rz(0.00048828125*pi) q[1];
rz(0.0078125*pi) q[2];
rz(0.001953125*pi) q[3];
rz(0.03125*pi) q[4];
rz(0.125*pi) q[5];
rz(0.25*pi) q[7];
rz(0.0625*pi) q[8];
rz(0.015625*pi) q[9];
rz(0.00390625*pi) q[10];
rz(0.0009765625*pi) q[11];
rz(0.000244140625*pi) q[12];
cx q[13],q[0];
cx q[12],q[1];
cx q[10],q[2];
cx q[11],q[3];
cx q[9],q[4];
cx q[8],q[5];
cx q[7],q[6];
rz(3.99993896484375*pi) q[0];
rz(3.999755859375*pi) q[1];
rz(3.99609375*pi) q[2];
rz(3.9990234375*pi) q[3];
rz(3.984375*pi) q[4];
rz(3.9375*pi) q[5];
rz(3.75*pi) q[6];
cx q[13],q[0];
cx q[12],q[1];
cx q[10],q[2];
cx q[11],q[3];
cx q[9],q[4];
cx q[8],q[5];
cx q[7],q[6];
rz(6.103515625e-05*pi) q[0];
rz(0.000244140625*pi) q[1];
rz(0.00390625*pi) q[2];
rz(0.0009765625*pi) q[3];
rz(0.015625*pi) q[4];
rz(0.0625*pi) q[5];
rz(0.25*pi) q[6];
ry(0.5*pi) q[7];
rz(0.125*pi) q[8];
rz(0.03125*pi) q[9];
rz(0.0078125*pi) q[10];
rz(0.001953125*pi) q[11];
rz(0.00048828125*pi) q[12];
rz(0.0001220703125*pi) q[13];
cx q[14],q[0];
cx q[13],q[1];
cx q[11],q[2];
cx q[12],q[3];
cx q[10],q[4];
cx q[9],q[5];
cx q[8],q[6];
rx(1.0*pi) q[7];
rz(3.999969482421875*pi) q[0];
rz(3.9998779296875*pi) q[1];
rz(3.998046875*pi) q[2];
rz(3.99951171875*pi) q[3];
rz(3.9921875*pi) q[4];
rz(3.96875*pi) q[5];
rz(3.875*pi) q[6];
cx q[14],q[0];
cx q[13],q[1];
cx q[11],q[2];
cx q[12],q[3];
cx q[10],q[4];
cx q[9],q[5];
cx q[8],q[6];
rz(3.0517578125e-05*pi) q[0];
rz(0.0001220703125*pi) q[1];
rz(0.001953125*pi) q[2];
rz(0.00048828125*pi) q[3];
rz(0.0078125*pi) q[4];
rz(0.03125*pi) q[5];
rz(0.125*pi) q[6];
rz(0.25*pi) q[8];
rz(0.0625*pi) q[9];
rz(0.015625*pi) q[10];
rz(0.00390625*pi) q[11];
rz(0.0009765625*pi) q[12];
rz(0.000244140625*pi) q[13];
rz(6.103515625e-05*pi) q[14];
measure q[0] -> c[0];
cx q[14],q[1];
cx q[12],q[2];
cx q[13],q[3];
cx q[11],q[4];
cx q[10],q[5];
cx q[9],q[6];
cx q[8],q[7];
rz(3.99993896484375*pi) q[1];
rz(3.9990234375*pi) q[2];
rz(3.999755859375*pi) q[3];
rz(3.99609375*pi) q[4];
rz(3.984375*pi) q[5];
rz(3.9375*pi) q[6];
rz(3.75*pi) q[7];
cx q[14],q[1];
cx q[12],q[2];
cx q[13],q[3];
cx q[11],q[4];
cx q[10],q[5];
cx q[9],q[6];
cx q[8],q[7];
rz(6.103515625e-05*pi) q[1];
rz(0.0009765625*pi) q[2];
rz(0.000244140625*pi) q[3];
rz(0.00390625*pi) q[4];
rz(0.015625*pi) q[5];
rz(0.0625*pi) q[6];
rz(0.25*pi) q[7];
ry(0.5*pi) q[8];
rz(0.125*pi) q[9];
rz(0.03125*pi) q[10];
rz(0.0078125*pi) q[11];
rz(0.001953125*pi) q[12];
rz(0.00048828125*pi) q[13];
rz(0.0001220703125*pi) q[14];
measure q[1] -> c[1];
cx q[13],q[2];
cx q[14],q[3];
cx q[12],q[4];
cx q[11],q[5];
cx q[10],q[6];
cx q[9],q[7];
rx(1.0*pi) q[8];
rz(3.99951171875*pi) q[2];
rz(3.9998779296875*pi) q[3];
rz(3.998046875*pi) q[4];
rz(3.9921875*pi) q[5];
rz(3.96875*pi) q[6];
rz(3.875*pi) q[7];
cx q[13],q[2];
cx q[14],q[3];
cx q[12],q[4];
cx q[11],q[5];
cx q[10],q[6];
cx q[9],q[7];
rz(0.00048828125*pi) q[2];
rz(0.0001220703125*pi) q[3];
rz(0.001953125*pi) q[4];
rz(0.0078125*pi) q[5];
rz(0.03125*pi) q[6];
rz(0.125*pi) q[7];
rz(0.25*pi) q[9];
rz(0.0625*pi) q[10];
rz(0.015625*pi) q[11];
rz(0.00390625*pi) q[12];
rz(0.0009765625*pi) q[13];
rz(0.000244140625*pi) q[14];
measure q[3] -> c[2];
cx q[14],q[2];
cx q[13],q[4];
cx q[12],q[5];
cx q[11],q[6];
cx q[10],q[7];
cx q[9],q[8];
rz(3.999755859375*pi) q[2];
rz(3.9990234375*pi) q[4];
rz(3.99609375*pi) q[5];
rz(3.984375*pi) q[6];
rz(3.9375*pi) q[7];
rz(3.75*pi) q[8];
cx q[14],q[2];
cx q[13],q[4];
cx q[12],q[5];
cx q[11],q[6];
cx q[10],q[7];
cx q[9],q[8];
rz(0.000244140625*pi) q[2];
rz(0.0009765625*pi) q[4];
rz(0.00390625*pi) q[5];
rz(0.015625*pi) q[6];
rz(0.0625*pi) q[7];
rz(0.25*pi) q[8];
ry(0.5*pi) q[9];
rz(0.125*pi) q[10];
rz(0.03125*pi) q[11];
rz(0.0078125*pi) q[12];
rz(0.001953125*pi) q[13];
rz(0.00048828125*pi) q[14];
measure q[2] -> c[3];
cx q[14],q[4];
cx q[13],q[5];
cx q[12],q[6];
cx q[11],q[7];
cx q[10],q[8];
rx(1.0*pi) q[9];
rz(3.99951171875*pi) q[4];
rz(3.998046875*pi) q[5];
rz(3.9921875*pi) q[6];
rz(3.96875*pi) q[7];
rz(3.875*pi) q[8];
cx q[14],q[4];
cx q[13],q[5];
cx q[12],q[6];
cx q[11],q[7];
cx q[10],q[8];
rz(0.00048828125*pi) q[4];
rz(0.001953125*pi) q[5];
rz(0.0078125*pi) q[6];
rz(0.03125*pi) q[7];
rz(0.125*pi) q[8];
rz(0.25*pi) q[10];
rz(0.0625*pi) q[11];
rz(0.015625*pi) q[12];
rz(0.00390625*pi) q[13];
rz(0.0009765625*pi) q[14];
measure q[4] -> c[4];
cx q[14],q[5];
cx q[13],q[6];
cx q[12],q[7];
cx q[11],q[8];
cx q[10],q[9];
rz(3.9990234375*pi) q[5];
rz(3.99609375*pi) q[6];
rz(3.984375*pi) q[7];
rz(3.9375*pi) q[8];
rz(3.75*pi) q[9];
cx q[14],q[5];
cx q[13],q[6];
cx q[12],q[7];
cx q[11],q[8];
cx q[10],q[9];
rz(0.0009765625*pi) q[5];
rz(0.00390625*pi) q[6];
rz(0.015625*pi) q[7];
rz(0.0625*pi) q[8];
rz(0.25*pi) q[9];
ry(0.5*pi) q[10];
rz(0.125*pi) q[11];
rz(0.03125*pi) q[12];
rz(0.0078125*pi) q[13];
rz(0.001953125*pi) q[14];
measure q[5] -> c[5];
cx q[14],q[6];
cx q[13],q[7];
cx q[12],q[8];
cx q[11],q[9];
rx(1.0*pi) q[10];
rz(3.998046875*pi) q[6];
rz(3.9921875*pi) q[7];
rz(3.96875*pi) q[8];
rz(3.875*pi) q[9];
cx q[14],q[6];
cx q[13],q[7];
cx q[12],q[8];
cx q[11],q[9];
rz(0.001953125*pi) q[6];
rz(0.0078125*pi) q[7];
rz(0.03125*pi) q[8];
rz(0.125*pi) q[9];
rz(0.25*pi) q[11];
rz(0.0625*pi) q[12];
rz(0.015625*pi) q[13];
rz(0.00390625*pi) q[14];
measure q[6] -> c[6];
cx q[14],q[7];
cx q[13],q[8];
cx q[12],q[9];
cx q[11],q[10];
rz(3.99609375*pi) q[7];
rz(3.984375*pi) q[8];
rz(3.9375*pi) q[9];
rz(3.75*pi) q[10];
cx q[14],q[7];
cx q[13],q[8];
cx q[12],q[9];
cx q[11],q[10];
rz(0.00390625*pi) q[7];
rz(0.015625*pi) q[8];
rz(0.0625*pi) q[9];
rz(0.25*pi) q[10];
ry(0.5*pi) q[11];
rz(0.125*pi) q[12];
rz(0.03125*pi) q[13];
rz(0.0078125*pi) q[14];
measure q[7] -> c[7];
cx q[14],q[8];
cx q[13],q[9];
cx q[12],q[10];
rx(1.0*pi) q[11];
rz(3.9921875*pi) q[8];
rz(3.96875*pi) q[9];
rz(3.875*pi) q[10];
cx q[14],q[8];
cx q[13],q[9];
cx q[12],q[10];
rz(0.0078125*pi) q[8];
rz(0.03125*pi) q[9];
rz(0.125*pi) q[10];
rz(0.25*pi) q[12];
rz(0.0625*pi) q[13];
rz(0.015625*pi) q[14];
measure q[8] -> c[8];
cx q[14],q[9];
cx q[13],q[10];
cx q[12],q[11];
rz(3.984375*pi) q[9];
rz(3.9375*pi) q[10];
rz(3.75*pi) q[11];
cx q[14],q[9];
cx q[13],q[10];
cx q[12],q[11];
rz(0.015625*pi) q[9];
rz(0.0625*pi) q[10];
rz(0.25*pi) q[11];
ry(0.5*pi) q[12];
rz(0.125*pi) q[13];
rz(0.03125*pi) q[14];
measure q[9] -> c[9];
cx q[14],q[10];
cx q[13],q[11];
rx(1.0*pi) q[12];
rz(3.96875*pi) q[10];
rz(3.875*pi) q[11];
cx q[14],q[10];
cx q[13],q[11];
rz(0.03125*pi) q[10];
rz(0.125*pi) q[11];
rz(0.25*pi) q[13];
rz(0.0625*pi) q[14];
measure q[10] -> c[10];
cx q[14],q[11];
cx q[13],q[12];
rz(3.9375*pi) q[11];
rz(3.75*pi) q[12];
cx q[14],q[11];
cx q[13],q[12];
rz(0.0625*pi) q[11];
rz(0.25*pi) q[12];
ry(0.5*pi) q[13];
rz(0.125*pi) q[14];
measure q[11] -> c[11];
cx q[14],q[12];
rx(1.0*pi) q[13];
rz(3.875*pi) q[12];
cx q[14],q[12];
rz(0.125*pi) q[12];
rz(0.25*pi) q[14];
measure q[12] -> c[12];
cx q[14],q[13];
rz(3.75*pi) q[13];
cx q[14],q[13];
rz(0.25*pi) q[13];
ry(0.5*pi) q[14];
measure q[13] -> c[13];
rx(1.0*pi) q[14];
measure q[14] -> c[14];