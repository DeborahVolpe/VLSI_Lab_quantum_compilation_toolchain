OPENQASM 2.0;
include "qelib1.inc";

qreg q[16];
creg c[16];
ry(0.5*pi) q[0];
rx(1.0*pi) q[0];
rz(3.749999415391251*pi) q[0];
cx q[0],q[1];
rz(0.2500005846087492*pi) q[0];
cx q[0],q[1];
rz(3.875*pi) q[0];
ry(0.5*pi) q[1];
cx q[0],q[3];
rx(1.0*pi) q[1];
rz(0.125*pi) q[0];
rz(3.749999415391251*pi) q[1];
cx q[0],q[3];
rz(3.9375*pi) q[0];
cx q[1],q[3];
cx q[0],q[2];
rz(0.2500005846087492*pi) q[1];
rz(0.0625*pi) q[0];
cx q[1],q[3];
cx q[0],q[2];
rz(3.875*pi) q[1];
ry(0.5*pi) q[3];
rz(3.968757884671061*pi) q[0];
cx q[1],q[2];
rx(1.0*pi) q[3];
cx q[0],q[4];
rz(0.125*pi) q[1];
rz(3.749999415391251*pi) q[3];
rz(0.031242115328939057*pi) q[0];
cx q[1],q[2];
cx q[0],q[4];
rz(3.9375*pi) q[1];
cx q[3],q[2];
rz(3.984370984588376*pi) q[0];
cx q[1],q[4];
rz(0.2500005846087492*pi) q[3];
cx q[0],q[5];
rz(0.0625*pi) q[1];
cx q[3],q[2];
rz(0.015629015411624123*pi) q[0];
cx q[1],q[4];
ry(0.5*pi) q[2];
rz(3.875*pi) q[3];
cx q[0],q[5];
rz(3.968757884671061*pi) q[1];
rx(1.0*pi) q[2];
cx q[3],q[4];
rz(3.9921854922941877*pi) q[0];
cx q[1],q[5];
rz(3.749999415391251*pi) q[2];
rz(0.125*pi) q[3];
cx q[0],q[6];
rz(0.031242115328939057*pi) q[1];
cx q[3],q[4];
rz(0.007814507705812062*pi) q[0];
cx q[1],q[5];
cx q[2],q[4];
rz(3.9375*pi) q[3];
cx q[0],q[6];
rz(3.984370984588376*pi) q[1];
rz(0.2500005846087492*pi) q[2];
cx q[3],q[5];
rz(3.9961007038942484*pi) q[0];
cx q[1],q[6];
cx q[2],q[4];
rz(0.0625*pi) q[3];
cx q[0],q[7];
rz(0.015629015411624123*pi) q[1];
rz(3.875*pi) q[2];
cx q[3],q[5];
ry(0.5*pi) q[4];
rz(0.0038992961057514363*pi) q[0];
cx q[1],q[6];
cx q[2],q[5];
rz(3.968757884671061*pi) q[3];
rx(1.0*pi) q[4];
cx q[0],q[7];
rz(3.9921854922941877*pi) q[1];
rz(0.125*pi) q[2];
cx q[3],q[6];
rz(3.749999415391251*pi) q[4];
rz(3.99804239419997*pi) q[0];
cx q[1],q[7];
cx q[2],q[5];
rz(0.031242115328939057*pi) q[3];
cx q[0],q[8];
rz(0.007814507705812062*pi) q[1];
rz(3.9375*pi) q[2];
cx q[3],q[6];
cx q[4],q[5];
rz(0.0019576058000303127*pi) q[0];
cx q[1],q[7];
cx q[2],q[6];
rz(3.984370984588376*pi) q[3];
rz(0.2500005846087492*pi) q[4];
cx q[0],q[8];
rz(3.9961007038942484*pi) q[1];
rz(0.0625*pi) q[2];
cx q[3],q[7];
cx q[4],q[5];
rz(3.9990291548471393*pi) q[0];
cx q[1],q[8];
cx q[2],q[6];
rz(0.015629015411624123*pi) q[3];
rz(3.875*pi) q[4];
ry(0.5*pi) q[5];
cx q[0],q[9];
rz(0.0038992961057514363*pi) q[1];
rz(3.968757884671061*pi) q[2];
cx q[3],q[7];
cx q[4],q[6];
rx(1.0*pi) q[5];
rz(0.0009708451528605617*pi) q[0];
cx q[1],q[8];
cx q[2],q[7];
rz(3.9921854922941877*pi) q[3];
rz(0.125*pi) q[4];
rz(3.749999415391251*pi) q[5];
cx q[0],q[9];
rz(3.99804239419997*pi) q[1];
rz(0.031242115328939057*pi) q[2];
cx q[3],q[8];
cx q[4],q[6];
rz(3.9995066196764153*pi) q[0];
cx q[1],q[9];
cx q[2],q[7];
rz(0.007814507705812062*pi) q[3];
rz(3.9375*pi) q[4];
cx q[5],q[6];
cx q[0],q[10];
rz(0.0019576058000303127*pi) q[1];
rz(3.984370984588376*pi) q[2];
cx q[3],q[8];
cx q[4],q[7];
rz(0.2500005846087492*pi) q[5];
rz(0.0004933803235848756*pi) q[0];
cx q[1],q[9];
cx q[2],q[8];
rz(3.9961007038942484*pi) q[3];
rz(0.0625*pi) q[4];
cx q[5],q[6];
cx q[0],q[10];
rz(3.9990291548471393*pi) q[1];
rz(0.015629015411624123*pi) q[2];
cx q[3],q[9];
cx q[4],q[7];
rz(3.875*pi) q[5];
ry(0.5*pi) q[6];
rz(3.999761267585362*pi) q[0];
cx q[1],q[10];
cx q[2],q[8];
rz(0.0038992961057514363*pi) q[3];
rz(3.968757884671061*pi) q[4];
cx q[5],q[7];
rx(1.0*pi) q[6];
cx q[0],q[11];
rz(0.0009708451528605617*pi) q[1];
rz(3.9921854922941877*pi) q[2];
cx q[3],q[9];
cx q[4],q[8];
rz(0.125*pi) q[5];
rz(3.749999415391251*pi) q[6];
rz(0.000238732414637843*pi) q[0];
cx q[1],q[10];
cx q[2],q[9];
rz(3.99804239419997*pi) q[3];
rz(0.031242115328939057*pi) q[4];
cx q[5],q[7];
cx q[0],q[11];
rz(3.9995066196764153*pi) q[1];
rz(0.007814507705812062*pi) q[2];
cx q[3],q[10];
cx q[4],q[8];
rz(3.9375*pi) q[5];
cx q[6],q[7];
rz(3.9998726760455265*pi) q[0];
cx q[1],q[11];
cx q[2],q[9];
rz(0.0019576058000303127*pi) q[3];
rz(3.984370984588376*pi) q[4];
cx q[5],q[8];
rz(0.2500005846087492*pi) q[6];
cx q[0],q[12];
rz(0.0004933803235848756*pi) q[1];
rz(3.9961007038942484*pi) q[2];
cx q[3],q[10];
cx q[4],q[9];
rz(0.0625*pi) q[5];
cx q[6],q[7];
rz(0.00012732395447351627*pi) q[0];
cx q[1],q[11];
cx q[2],q[10];
rz(3.9990291548471393*pi) q[3];
rz(0.015629015411624123*pi) q[4];
cx q[5],q[8];
rz(3.875*pi) q[6];
ry(0.5*pi) q[7];
cx q[0],q[12];
rz(3.999761267585362*pi) q[1];
rz(0.0038992961057514363*pi) q[2];
cx q[3],q[11];
cx q[4],q[9];
rz(3.968757884671061*pi) q[5];
cx q[6],q[8];
rx(1.0*pi) q[7];
rz(3.999936338022763*pi) q[0];
cx q[1],q[12];
cx q[2],q[10];
rz(0.0009708451528605617*pi) q[3];
rz(3.9921854922941877*pi) q[4];
cx q[5],q[9];
rz(0.125*pi) q[6];
rz(3.749999415391251*pi) q[7];
cx q[0],q[13];
rz(0.000238732414637843*pi) q[1];
rz(3.99804239419997*pi) q[2];
cx q[3],q[11];
cx q[4],q[10];
rz(0.031242115328939057*pi) q[5];
cx q[6],q[8];
rz(6.366197723675813e-05*pi) q[0];
cx q[1],q[12];
cx q[2],q[11];
rz(3.9995066196764153*pi) q[3];
rz(0.007814507705812062*pi) q[4];
cx q[5],q[9];
rz(3.9375*pi) q[6];
cx q[7],q[8];
cx q[0],q[13];
rz(3.9998726760455265*pi) q[1];
rz(0.0019576058000303127*pi) q[2];
cx q[3],q[12];
cx q[4],q[10];
rz(3.984370984588376*pi) q[5];
cx q[6],q[9];
rz(0.2500005846087492*pi) q[7];
rz(3.9999681690113817*pi) q[0];
cx q[1],q[13];
cx q[2],q[11];
rz(0.0004933803235848756*pi) q[3];
rz(3.9961007038942484*pi) q[4];
cx q[5],q[10];
rz(0.0625*pi) q[6];
cx q[7],q[8];
cx q[0],q[14];
rz(0.00012732395447351627*pi) q[1];
rz(3.9990291548471393*pi) q[2];
cx q[3],q[12];
cx q[4],q[11];
rz(0.015629015411624123*pi) q[5];
cx q[6],q[9];
rz(3.875*pi) q[7];
ry(0.5*pi) q[8];
rz(3.183098861837907e-05*pi) q[0];
cx q[1],q[13];
cx q[2],q[12];
rz(3.999761267585362*pi) q[3];
rz(0.0038992961057514363*pi) q[4];
cx q[5],q[10];
rz(3.968757884671061*pi) q[6];
cx q[7],q[9];
rx(1.0*pi) q[8];
cx q[0],q[14];
rz(3.999936338022763*pi) q[1];
rz(0.0009708451528605617*pi) q[2];
cx q[3],q[13];
cx q[4],q[11];
rz(3.9921854922941877*pi) q[5];
cx q[6],q[10];
rz(0.125*pi) q[7];
rz(3.749999415391251*pi) q[8];
rz(3.999984084505691*pi) q[0];
cx q[1],q[14];
cx q[2],q[12];
rz(0.000238732414637843*pi) q[3];
rz(3.99804239419997*pi) q[4];
cx q[5],q[11];
rz(0.031242115328939057*pi) q[6];
cx q[7],q[9];
cx q[0],q[15];
rz(6.366197723675813e-05*pi) q[1];
rz(3.9995066196764153*pi) q[2];
cx q[3],q[13];
cx q[4],q[12];
rz(0.007814507705812062*pi) q[5];
cx q[6],q[10];
rz(3.9375*pi) q[7];
cx q[8],q[9];
rz(1.5915494309189534e-05*pi) q[0];
cx q[1],q[14];
cx q[2],q[13];
rz(3.9998726760455265*pi) q[3];
rz(0.0019576058000303127*pi) q[4];
cx q[5],q[11];
rz(3.984370984588376*pi) q[6];
cx q[7],q[10];
rz(0.2500005846087492*pi) q[8];
cx q[0],q[15];
rz(3.9999681690113817*pi) q[1];
rz(0.0004933803235848756*pi) q[2];
cx q[3],q[14];
cx q[4],q[12];
rz(3.9961007038942484*pi) q[5];
cx q[6],q[11];
rz(0.0625*pi) q[7];
cx q[8],q[9];
ry(0.5*pi) q[0];
cx q[1],q[15];
cx q[2],q[13];
rz(0.00012732395447351627*pi) q[3];
rz(3.9990291548471393*pi) q[4];
cx q[5],q[12];
rz(0.015629015411624123*pi) q[6];
cx q[7],q[10];
rz(3.875*pi) q[8];
ry(0.5*pi) q[9];
rx(1.0*pi) q[0];
rz(3.183098861837907e-05*pi) q[1];
rz(3.999761267585362*pi) q[2];
cx q[3],q[14];
cx q[4],q[13];
rz(0.0038992961057514363*pi) q[5];
cx q[6],q[11];
rz(3.968757884671061*pi) q[7];
cx q[8],q[10];
rx(1.0*pi) q[9];
measure q[0] -> c[0];
cx q[1],q[15];
cx q[2],q[14];
rz(3.999936338022763*pi) q[3];
rz(0.0009708451528605617*pi) q[4];
cx q[5],q[12];
rz(3.9921854922941877*pi) q[6];
cx q[7],q[11];
rz(0.125*pi) q[8];
rz(3.749999415391251*pi) q[9];
ry(0.5*pi) q[1];
rz(0.000238732414637843*pi) q[2];
cx q[3],q[15];
cx q[4],q[13];
rz(3.99804239419997*pi) q[5];
cx q[6],q[12];
rz(0.031242115328939057*pi) q[7];
cx q[8],q[10];
rx(1.0*pi) q[1];
cx q[2],q[14];
rz(6.366197723675813e-05*pi) q[3];
rz(3.9995066196764153*pi) q[4];
cx q[5],q[13];
rz(0.007814507705812062*pi) q[6];
cx q[7],q[11];
rz(3.9375*pi) q[8];
cx q[9],q[10];
measure q[1] -> c[1];
rz(3.9998726760455265*pi) q[2];
cx q[3],q[15];
cx q[4],q[14];
rz(0.0019576058000303127*pi) q[5];
cx q[6],q[12];
rz(3.984370984588376*pi) q[7];
cx q[8],q[11];
rz(0.2500005846087492*pi) q[9];
cx q[2],q[15];
ry(0.5*pi) q[3];
rz(0.0004933803235848756*pi) q[4];
cx q[5],q[13];
rz(3.9961007038942484*pi) q[6];
cx q[7],q[12];
rz(0.0625*pi) q[8];
cx q[9],q[10];
rz(0.00012732395447351627*pi) q[2];
rx(1.0*pi) q[3];
cx q[4],q[14];
rz(3.9990291548471393*pi) q[5];
cx q[6],q[13];
rz(0.015629015411624123*pi) q[7];
cx q[8],q[11];
rz(3.875*pi) q[9];
ry(0.5*pi) q[10];
measure q[3] -> c[2];
cx q[2],q[15];
rz(3.999761267585362*pi) q[4];
cx q[5],q[14];
rz(0.0038992961057514363*pi) q[6];
cx q[7],q[12];
rz(3.968757884671061*pi) q[8];
cx q[9],q[11];
rx(1.0*pi) q[10];
ry(0.5*pi) q[2];
cx q[4],q[15];
rz(0.0009708451528605617*pi) q[5];
cx q[6],q[13];
rz(3.9921854922941877*pi) q[7];
cx q[8],q[12];
rz(0.125*pi) q[9];
rz(3.749999415391251*pi) q[10];
rx(1.0*pi) q[2];
rz(0.000238732414637843*pi) q[4];
cx q[5],q[14];
rz(3.99804239419997*pi) q[6];
cx q[7],q[13];
rz(0.031242115328939057*pi) q[8];
cx q[9],q[11];
measure q[2] -> c[3];
cx q[4],q[15];
rz(3.9995066196764153*pi) q[5];
cx q[6],q[14];
rz(0.007814507705812062*pi) q[7];
cx q[8],q[12];
rz(3.9375*pi) q[9];
cx q[10],q[11];
ry(0.5*pi) q[4];
cx q[5],q[15];
rz(0.0019576058000303127*pi) q[6];
cx q[7],q[13];
rz(3.984370984588376*pi) q[8];
cx q[9],q[12];
rz(0.2500005846087492*pi) q[10];
rx(1.0*pi) q[4];
rz(0.0004933803235848756*pi) q[5];
cx q[6],q[14];
rz(3.9961007038942484*pi) q[7];
cx q[8],q[13];
rz(0.0625*pi) q[9];
cx q[10],q[11];
measure q[4] -> c[4];
cx q[5],q[15];
rz(3.9990291548471393*pi) q[6];
cx q[7],q[14];
rz(0.015629015411624123*pi) q[8];
cx q[9],q[12];
rz(3.875*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[5];
cx q[6],q[15];
rz(0.0038992961057514363*pi) q[7];
cx q[8],q[13];
rz(3.968757884671061*pi) q[9];
cx q[10],q[12];
rx(1.0*pi) q[11];
rx(1.0*pi) q[5];
rz(0.0009708451528605617*pi) q[6];
cx q[7],q[14];
rz(3.9921854922941877*pi) q[8];
cx q[9],q[13];
rz(0.125*pi) q[10];
rz(3.749999415391251*pi) q[11];
measure q[5] -> c[5];
cx q[6],q[15];
rz(3.99804239419997*pi) q[7];
cx q[8],q[14];
rz(0.031242115328939057*pi) q[9];
cx q[10],q[12];
ry(0.5*pi) q[6];
cx q[7],q[15];
rz(0.007814507705812062*pi) q[8];
cx q[9],q[13];
rz(3.9375*pi) q[10];
cx q[11],q[12];
rx(1.0*pi) q[6];
rz(0.0019576058000303127*pi) q[7];
cx q[8],q[14];
rz(3.984370984588376*pi) q[9];
cx q[10],q[13];
rz(0.2500005846087492*pi) q[11];
measure q[6] -> c[6];
cx q[7],q[15];
rz(3.9961007038942484*pi) q[8];
cx q[9],q[14];
rz(0.0625*pi) q[10];
cx q[11],q[12];
ry(0.5*pi) q[7];
cx q[8],q[15];
rz(0.015629015411624123*pi) q[9];
cx q[10],q[13];
rz(3.875*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[7];
rz(0.0038992961057514363*pi) q[8];
cx q[9],q[14];
rz(3.968757884671061*pi) q[10];
cx q[11],q[13];
rx(1.0*pi) q[12];
measure q[7] -> c[7];
cx q[8],q[15];
rz(3.9921854922941877*pi) q[9];
cx q[10],q[14];
rz(0.125*pi) q[11];
rz(3.749999415391251*pi) q[12];
ry(0.5*pi) q[8];
cx q[9],q[15];
rz(0.031242115328939057*pi) q[10];
cx q[11],q[13];
rx(1.0*pi) q[8];
rz(0.007814507705812062*pi) q[9];
cx q[10],q[14];
rz(3.9375*pi) q[11];
cx q[12],q[13];
measure q[8] -> c[8];
cx q[9],q[15];
rz(3.984370984588376*pi) q[10];
cx q[11],q[14];
rz(0.2500005846087492*pi) q[12];
ry(0.5*pi) q[9];
cx q[10],q[15];
rz(0.0625*pi) q[11];
cx q[12],q[13];
rx(1.0*pi) q[9];
rz(0.015629015411624123*pi) q[10];
cx q[11],q[14];
rz(3.875*pi) q[12];
ry(0.5*pi) q[13];
measure q[9] -> c[9];
cx q[10],q[15];
rz(3.968757884671061*pi) q[11];
cx q[12],q[14];
rx(1.0*pi) q[13];
ry(0.5*pi) q[10];
cx q[11],q[15];
rz(0.125*pi) q[12];
rz(3.749999415391251*pi) q[13];
rx(1.0*pi) q[10];
rz(0.031242115328939057*pi) q[11];
cx q[12],q[14];
measure q[10] -> c[10];
cx q[11],q[15];
rz(3.9375*pi) q[12];
cx q[13],q[14];
ry(0.5*pi) q[11];
cx q[12],q[15];
rz(0.2500005846087492*pi) q[13];
rx(1.0*pi) q[11];
rz(0.0625*pi) q[12];
cx q[13],q[14];
measure q[11] -> c[11];
cx q[12],q[15];
rz(3.875*pi) q[13];
ry(0.5*pi) q[14];
ry(0.5*pi) q[12];
cx q[13],q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[12];
rz(0.125*pi) q[13];
rz(3.749999415391251*pi) q[14];
measure q[12] -> c[12];
cx q[13],q[15];
ry(0.5*pi) q[13];
cx q[14],q[15];
rx(1.0*pi) q[13];
rz(0.2500005846087492*pi) q[14];
measure q[13] -> c[13];
cx q[14],q[15];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
measure q[14] -> c[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
measure q[15] -> c[15];