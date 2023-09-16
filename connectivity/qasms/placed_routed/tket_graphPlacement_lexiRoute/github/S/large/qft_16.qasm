OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[16];
u2(0.0*pi,1.0*pi) q[1];
u1(1.7499994153912508*pi) q[1];
cx q[1],q[0];
u1(0.2500005846087492*pi) q[1];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[2];
u1(0.125*pi) q[1];
cx q[1],q[2];
u1(1.9375*pi) q[1];
cx q[1],q[4];
u1(0.0625*pi) q[1];
cx q[1],q[4];
u1(1.968757884671061*pi) q[1];
swap q[2],q[1];
cx q[0],q[1];
cx q[2],q[3];
u1(0.2500005846087492*pi) q[0];
u1(0.031242115328939057*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.875*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
u1(1.984370984588376*pi) q[2];
u1(1.7499994153912508*pi) q[1];
swap q[2],q[3];
swap q[0],q[1];
cx q[3],q[5];
cx q[1],q[4];
u1(0.015629015411624123*pi) q[3];
u1(0.125*pi) q[1];
cx q[3],q[5];
cx q[1],q[4];
u1(1.992185492294188*pi) q[3];
u1(1.9375*pi) q[1];
swap q[3],q[5];
cx q[1],q[2];
cx q[5],q[8];
u1(0.0625*pi) q[1];
u1(0.007814507705812062*pi) q[5];
cx q[1],q[2];
cx q[5],q[8];
u1(1.968757884671061*pi) q[1];
u1(1.9961007038942487*pi) q[5];
swap q[1],q[2];
swap q[8],q[5];
swap q[0],q[1];
cx q[2],q[3];
cx q[8],q[11];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[2];
u1(0.0038992961057514363*pi) q[8];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
cx q[8],q[11];
cx q[1],q[4];
u1(1.984370984588376*pi) q[2];
u1(1.9980423941999697*pi) q[8];
u1(1.875*pi) q[1];
swap q[2],q[3];
u2(0.0*pi,1.0*pi) q[4];
cx q[8],q[9];
cx q[1],q[0];
cx q[3],q[5];
u1(1.7499994153912508*pi) q[4];
u1(0.0019576058000303127*pi) q[8];
u1(0.125*pi) q[1];
u1(0.015629015411624123*pi) q[3];
cx q[8],q[9];
cx q[1],q[0];
cx q[3],q[5];
u1(1.9990291548471395*pi) q[8];
u1(1.9375*pi) q[1];
u1(1.992185492294188*pi) q[3];
swap q[11],q[8];
cx q[1],q[2];
swap q[3],q[5];
cx q[11],q[14];
u1(0.0625*pi) q[1];
cx q[5],q[8];
u1(0.0009708451528605617*pi) q[11];
cx q[1],q[2];
u1(0.007814507705812062*pi) q[5];
cx q[11],q[14];
u1(1.968757884671061*pi) q[1];
cx q[5],q[8];
u1(1.999506619676415*pi) q[11];
swap q[1],q[2];
u1(1.9961007038942487*pi) q[5];
swap q[14],q[11];
swap q[4],q[1];
cx q[2],q[3];
swap q[5],q[8];
cx q[14],q[13];
cx q[1],q[0];
u1(0.031242115328939057*pi) q[2];
cx q[8],q[9];
u1(0.0004933803235848756*pi) q[14];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
u1(0.0038992961057514363*pi) q[8];
cx q[14],q[13];
cx q[1],q[0];
u1(1.984370984588376*pi) q[2];
cx q[8],q[9];
u1(1.9997612675853622*pi) q[14];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
swap q[2],q[3];
u1(1.9980423941999697*pi) q[8];
cx q[14],q[16];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[4];
cx q[3],q[5];
cx q[8],q[11];
u1(0.000238732414637843*pi) q[14];
u1(0.125*pi) q[1];
u1(0.015629015411624123*pi) q[3];
u1(0.0019576058000303127*pi) q[8];
cx q[14],q[16];
cx q[1],q[4];
cx q[3],q[5];
cx q[8],q[11];
u1(1.9998726760455265*pi) q[14];
u1(1.9375*pi) q[1];
u1(1.992185492294188*pi) q[3];
u1(1.9990291548471395*pi) q[8];
swap q[13],q[14];
cx q[1],q[2];
swap q[3],q[5];
swap q[8],q[11];
cx q[13],q[12];
u1(0.0625*pi) q[1];
swap q[5],q[8];
cx q[11],q[14];
u1(0.00012732395447351627*pi) q[13];
cx q[1],q[2];
cx q[8],q[9];
u1(0.0009708451528605617*pi) q[11];
cx q[13],q[12];
u1(1.968757884671061*pi) q[1];
u1(0.007814507705812062*pi) q[8];
cx q[11],q[14];
u1(1.9999363380227633*pi) q[13];
swap q[1],q[2];
cx q[8],q[9];
u1(1.999506619676415*pi) q[11];
swap q[13],q[12];
swap q[0],q[1];
cx q[2],q[3];
u1(1.9961007038942487*pi) q[8];
cx q[12],q[10];
swap q[11],q[14];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[2];
cx q[8],q[5];
u1(6.366197723675813e-05*pi) q[12];
cx q[14],q[16];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
u1(0.0038992961057514363*pi) q[8];
cx q[12],q[10];
u1(0.0004933803235848756*pi) q[14];
cx q[1],q[4];
u1(1.984370984588376*pi) q[2];
cx q[8],q[5];
u1(1.9999681690113815*pi) q[12];
cx q[14],q[16];
u1(1.875*pi) q[1];
swap q[2],q[3];
u2(0.0*pi,1.0*pi) q[4];
u1(1.9980423941999697*pi) q[8];
cx q[12],q[15];
u1(1.9997612675853622*pi) q[14];
cx q[1],q[0];
swap q[3],q[5];
u1(1.7499994153912508*pi) q[4];
cx q[8],q[11];
u1(3.183098861837907e-05*pi) q[12];
cx q[14],q[13];
u1(0.125*pi) q[1];
u1(0.0019576058000303127*pi) q[8];
cx q[12],q[15];
u1(0.000238732414637843*pi) q[14];
cx q[1],q[0];
cx q[8],q[11];
u1(1.9999840845056909*pi) q[12];
cx q[14],q[13];
u1(1.9375*pi) q[1];
u1(1.9990291548471395*pi) q[8];
swap q[12],q[10];
u1(1.9998726760455265*pi) q[14];
cx q[1],q[2];
cx q[10],q[7];
swap q[8],q[11];
swap q[14],q[13];
u1(0.0625*pi) q[1];
swap q[9],q[8];
u1(1.5915494309189534e-05*pi) q[10];
swap q[11],q[14];
cx q[13],q[12];
cx q[1],q[2];
cx q[5],q[8];
cx q[10],q[7];
u1(0.00012732395447351627*pi) q[13];
cx q[14],q[16];
u1(1.968757884671061*pi) q[1];
u1(0.015629015411624123*pi) q[5];
u2(0.0*pi,1.0*pi) q[10];
cx q[13],q[12];
u1(0.0009708451528605617*pi) q[14];
measure q[10] -> c[0];
swap q[1],q[2];
cx q[5],q[8];
u1(1.9999363380227633*pi) q[13];
cx q[14],q[16];
swap q[4],q[1];
u1(1.992185492294188*pi) q[5];
swap q[7],q[10];
swap q[13],q[12];
u1(1.999506619676415*pi) q[14];
cx q[1],q[0];
cx q[5],q[3];
cx q[14],q[11];
cx q[12],q[15];
u1(0.2500005846087492*pi) q[1];
u1(0.007814507705812062*pi) q[5];
u1(6.366197723675813e-05*pi) q[12];
u1(0.0004933803235848756*pi) q[14];
cx q[1],q[0];
cx q[5],q[3];
cx q[14],q[11];
cx q[12],q[15];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
swap q[2],q[3];
u1(1.9961007038942487*pi) q[5];
u1(1.9999681690113815*pi) q[12];
u1(1.9997612675853622*pi) q[14];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[4];
swap q[8],q[5];
cx q[12],q[10];
cx q[14],q[13];
u1(0.125*pi) q[1];
cx q[3],q[5];
cx q[8],q[9];
u1(3.183098861837907e-05*pi) q[12];
u1(0.000238732414637843*pi) q[14];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[3];
u1(0.0038992961057514363*pi) q[8];
cx q[12],q[10];
cx q[14],q[13];
u1(1.9375*pi) q[1];
cx q[3],q[5];
cx q[8],q[9];
u2(0.0*pi,1.0*pi) q[12];
u1(1.9998726760455265*pi) q[14];
measure q[12] -> c[1];
u1(1.984370984588376*pi) q[3];
u1(1.9980423941999697*pi) q[8];
swap q[14],q[13];
cx q[3],q[2];
swap q[8],q[11];
swap q[13],q[12];
swap q[16],q[14];
u1(0.015629015411624123*pi) q[3];
cx q[11],q[14];
cx q[12],q[15];
cx q[3],q[2];
u1(0.0019576058000303127*pi) q[11];
u1(0.00012732395447351627*pi) q[12];
u1(1.992185492294188*pi) q[3];
cx q[11],q[14];
cx q[12],q[15];
swap q[3],q[5];
u1(1.9990291548471395*pi) q[11];
u1(1.9999363380227633*pi) q[12];
swap q[3],q[2];
cx q[11],q[8];
cx q[12],q[10];
cx q[1],q[2];
u1(0.0009708451528605617*pi) q[11];
u1(6.366197723675813e-05*pi) q[12];
u1(0.0625*pi) q[1];
cx q[11],q[8];
cx q[12],q[10];
cx q[1],q[2];
swap q[5],q[8];
u1(1.999506619676415*pi) q[11];
u2(0.0*pi,1.0*pi) q[12];
measure q[12] -> c[2];
u1(1.968757884671061*pi) q[1];
cx q[8],q[9];
swap q[11],q[14];
swap q[1],q[2];
u1(0.007814507705812062*pi) q[8];
swap q[15],q[12];
cx q[14],q[16];
swap q[0],q[1];
cx q[2],q[3];
cx q[8],q[9];
u1(0.0004933803235848756*pi) q[14];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[2];
u1(1.9961007038942487*pi) q[8];
cx q[14],q[16];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
cx q[8],q[11];
u1(1.9997612675853622*pi) q[14];
cx q[1],q[4];
u1(1.984370984588376*pi) q[2];
u1(0.0038992961057514363*pi) q[8];
swap q[14],q[13];
u1(1.875*pi) q[1];
swap q[2],q[3];
u2(0.0*pi,1.0*pi) q[4];
cx q[8],q[11];
cx q[13],q[12];
cx q[1],q[0];
u1(1.7499994153912508*pi) q[4];
u1(1.9980423941999697*pi) q[8];
u1(0.000238732414637843*pi) q[13];
u1(0.125*pi) q[1];
cx q[8],q[5];
cx q[13],q[12];
cx q[1],q[0];
u1(0.0019576058000303127*pi) q[8];
u1(1.9998726760455265*pi) q[13];
u1(1.9375*pi) q[1];
cx q[8],q[5];
swap q[13],q[12];
cx q[1],q[2];
swap q[3],q[5];
u1(1.9990291548471395*pi) q[8];
cx q[12],q[10];
u1(0.0625*pi) q[1];
swap q[8],q[11];
u1(0.00012732395447351627*pi) q[12];
cx q[1],q[2];
swap q[9],q[8];
cx q[12],q[10];
swap q[11],q[14];
u1(1.968757884671061*pi) q[1];
cx q[5],q[8];
u2(0.0*pi,1.0*pi) q[12];
cx q[14],q[16];
measure q[12] -> c[3];
swap q[1],q[2];
u1(0.015629015411624123*pi) q[5];
u1(0.0009708451528605617*pi) q[14];
swap q[4],q[1];
cx q[5],q[8];
swap q[10],q[12];
cx q[14],q[16];
cx q[1],q[0];
u1(1.992185492294188*pi) q[5];
u1(1.999506619676415*pi) q[14];
u1(0.2500005846087492*pi) q[1];
swap q[8],q[5];
cx q[14],q[13];
cx q[1],q[0];
swap q[5],q[3];
cx q[8],q[9];
u1(0.0004933803235848756*pi) q[14];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
cx q[2],q[3];
u1(0.007814507705812062*pi) q[8];
cx q[14],q[13];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[2];
cx q[8],q[9];
u1(1.9997612675853622*pi) q[14];
u1(0.125*pi) q[1];
cx q[2],q[3];
u1(1.9961007038942487*pi) q[8];
swap q[14],q[13];
cx q[1],q[4];
u1(1.984370984588376*pi) q[2];
cx q[8],q[5];
cx q[13],q[12];
u1(1.9375*pi) q[1];
swap q[2],q[3];
u1(0.0038992961057514363*pi) q[8];
u1(0.000238732414637843*pi) q[13];
cx q[1],q[2];
cx q[8],q[5];
cx q[13],q[12];
u1(0.0625*pi) q[1];
swap q[3],q[5];
u1(1.9980423941999697*pi) q[8];
u2(0.0*pi,1.0*pi) q[13];
measure q[13] -> c[4];
cx q[1],q[2];
swap q[8],q[11];
u1(1.968757884671061*pi) q[1];
swap q[9],q[8];
swap q[11],q[14];
swap q[12],q[13];
swap q[1],q[2];
cx q[5],q[8];
cx q[14],q[16];
swap q[0],q[1];
u1(0.015629015411624123*pi) q[5];
u1(0.0019576058000303127*pi) q[14];
cx q[1],q[4];
cx q[5],q[8];
cx q[14],q[16];
u1(0.2500005846087492*pi) q[1];
u1(1.992185492294188*pi) q[5];
u1(1.9990291548471395*pi) q[14];
cx q[1],q[4];
cx q[5],q[3];
cx q[14],q[11];
u1(1.875*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
u1(0.007814507705812062*pi) q[5];
u1(0.0009708451528605617*pi) q[14];
cx q[1],q[0];
cx q[5],q[3];
u1(1.7499994153912508*pi) q[4];
cx q[14],q[11];
u1(0.125*pi) q[1];
swap q[2],q[3];
u1(1.9961007038942487*pi) q[5];
u1(1.999506619676415*pi) q[14];
cx q[1],q[0];
swap q[5],q[8];
cx q[14],q[13];
u1(1.9375*pi) q[1];
cx q[3],q[5];
swap q[8],q[11];
u1(0.0004933803235848756*pi) q[14];
u1(0.031242115328939057*pi) q[3];
cx q[14],q[13];
cx q[3],q[5];
u2(0.0*pi,1.0*pi) q[14];
measure q[14] -> c[5];
u1(1.984370984588376*pi) q[3];
cx q[3],q[2];
swap q[16],q[14];
u1(0.015629015411624123*pi) q[3];
cx q[11],q[14];
cx q[3],q[2];
u1(0.0038992961057514363*pi) q[11];
u1(1.992185492294188*pi) q[3];
cx q[11],q[14];
swap q[3],q[5];
u1(1.9980423941999697*pi) q[11];
swap q[3],q[2];
cx q[11],q[8];
cx q[1],q[2];
u1(0.0019576058000303127*pi) q[11];
u1(0.0625*pi) q[1];
cx q[11],q[8];
cx q[1],q[2];
swap q[5],q[8];
u1(1.9990291548471395*pi) q[11];
u1(1.968757884671061*pi) q[1];
swap q[14],q[11];
swap q[1],q[2];
cx q[8],q[11];
cx q[14],q[13];
swap q[4],q[1];
cx q[2],q[3];
u1(0.007814507705812062*pi) q[8];
u1(0.0009708451528605617*pi) q[14];
cx q[1],q[0];
u1(0.031242115328939057*pi) q[2];
cx q[8],q[11];
cx q[14],q[13];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
u1(1.9961007038942487*pi) q[8];
u2(0.0*pi,1.0*pi) q[14];
measure q[14] -> c[6];
cx q[1],q[0];
u1(1.984370984588376*pi) q[2];
cx q[8],q[5];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
swap q[2],q[3];
u1(0.0038992961057514363*pi) q[8];
swap q[13],q[14];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[4];
cx q[8],q[5];
u1(0.125*pi) q[1];
swap q[3],q[5];
u1(1.9980423941999697*pi) q[8];
cx q[1],q[4];
swap q[8],q[11];
u1(1.9375*pi) q[1];
cx q[5],q[8];
cx q[11],q[14];
cx q[1],q[2];
u1(0.015629015411624123*pi) q[5];
u1(0.0019576058000303127*pi) q[11];
u1(0.0625*pi) q[1];
cx q[5],q[8];
cx q[11],q[14];
cx q[1],q[2];
u1(1.992185492294188*pi) q[5];
u2(0.0*pi,1.0*pi) q[11];
measure q[11] -> c[7];
u1(1.968757884671061*pi) q[1];
cx q[5],q[3];
swap q[1],q[2];
u1(0.007814507705812062*pi) q[5];
swap q[14],q[11];
swap q[0],q[1];
cx q[5],q[3];
cx q[1],q[4];
swap q[2],q[3];
u1(1.9961007038942487*pi) q[5];
u1(0.2500005846087492*pi) q[1];
swap q[5],q[8];
cx q[1],q[4];
cx q[3],q[5];
cx q[8],q[11];
u1(1.875*pi) q[1];
u1(0.031242115328939057*pi) q[3];
u2(0.0*pi,1.0*pi) q[4];
u1(0.0038992961057514363*pi) q[8];
cx q[1],q[0];
cx q[3],q[5];
u1(1.7499994153912508*pi) q[4];
cx q[8],q[11];
u1(0.125*pi) q[1];
u1(1.984370984588376*pi) q[3];
u2(0.0*pi,1.0*pi) q[8];
measure q[8] -> c[8];
cx q[1],q[0];
cx q[3],q[2];
u1(1.9375*pi) q[1];
u1(0.015629015411624123*pi) q[3];
swap q[11],q[8];
cx q[3],q[2];
u1(1.992185492294188*pi) q[3];
swap q[3],q[5];
swap q[3],q[2];
cx q[5],q[8];
cx q[1],q[2];
u1(0.007814507705812062*pi) q[5];
u1(0.0625*pi) q[1];
cx q[5],q[8];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[5];
measure q[5] -> c[9];
u1(1.968757884671061*pi) q[1];
swap q[1],q[2];
swap q[8],q[5];
swap q[4],q[1];
cx q[2],q[3];
cx q[1],q[0];
u1(0.031242115328939057*pi) q[2];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u1(1.984370984588376*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
swap q[2],q[3];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[4];
cx q[3],q[5];
u1(0.125*pi) q[1];
u1(0.015629015411624123*pi) q[3];
cx q[1],q[4];
cx q[3],q[5];
u1(1.9375*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
measure q[3] -> c[10];
cx q[1],q[2];
u1(0.0625*pi) q[1];
swap q[5],q[3];
cx q[1],q[2];
u1(1.968757884671061*pi) q[1];
swap q[1],q[2];
swap q[0],q[1];
cx q[2],q[3];
cx q[1],q[4];
u1(0.031242115328939057*pi) q[2];
u1(0.2500005846087492*pi) q[1];
cx q[2],q[3];
cx q[1],q[4];
u2(0.0*pi,1.0*pi) q[2];
measure q[2] -> c[11];
u1(1.875*pi) q[1];
u2(0.0*pi,1.0*pi) q[4];
cx q[1],q[0];
swap q[3],q[2];
u1(1.7499994153912508*pi) q[4];
u1(0.125*pi) q[1];
cx q[1],q[0];
u1(1.9375*pi) q[1];
cx q[1],q[2];
u1(0.0625*pi) q[1];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
measure q[1] -> c[12];
swap q[4],q[1];
cx q[1],q[0];
u1(0.2500005846087492*pi) q[1];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
u1(1.875*pi) q[1];
u1(1.7499994153912508*pi) q[0];
cx q[1],q[2];
u1(0.125*pi) q[1];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
measure q[1] -> c[13];
swap q[2],q[1];
cx q[0],q[1];
u1(0.2500005846087492*pi) q[0];
cx q[0],q[1];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
measure q[0] -> c[14];
u2(0.0*pi,1.0*pi) q[1];
measure q[1] -> c[15];
