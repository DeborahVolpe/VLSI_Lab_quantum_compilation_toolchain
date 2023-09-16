OPENQASM 2.0;
include "qelib1.inc";
qreg q[18];
creg ans[9];
rx(1.5707963268) q[17];
rx(1.5707963268) q[16];
rx(1.5707963268) q[14];
rx(1.5707963268) q[8];
ry(-1.5707963268) q[9];
ry(-1.5707963268) q[10];
ry(-1.5707963268) q[11];
ry(-1.5707963268) q[12];
ry(-1.5707963268) q[13];
ry(-1.5707963268) q[15];
rzz(1.5707963268) q[0],q[8];
rx(3.1415926536)q[0];
rz(-4.7123889804) q[0];
rzz(1.5707963268) q[0],q[16];
rx(1.0346909306632739e-13) q[0];
rz(1.5707963268) q[8];
rx(1.5707963268) q[8];
rzz(1.5707963268) q[8],q[0];
rz(2.1139347820446506e-12) q[0];
ry(0.7853981633999999) q[0];
rz(2.1139347820446506e-12) q[0];
rz(1.5707963268) q[16];
rx(1.5707963268) q[16];
rzz(1.5707963268) q[16],q[0];
rz(1.5707963267978966) q[0];
ry(0.7853981634000001) q[0];
rz(1.5707963267779261) q[0];
rz(-2.3561944902) q[8];
rzz(1.5707963268) q[8],q[0];
rz(2.1139347820446506e-12) q[0];
ry(0.7853981633999999) q[0];
rz(2.1139347820446506e-12) q[0];
rz(-9.4247779608) q[16];
rzz(1.5707963268) q[16],q[0];
rx(-1.5707963268) q[8];
rz(-4.7123889804) q[8];
rz(-3.14159265358469) q[0];
ry(1.5707963268) q[0];
rz(0.7853981634051035) q[0];
rzz(1.5707963268) q[16],q[8];
rz(2.1139347820446506e-12) q[8];
ry(0.7853981633999999) q[8];
rz(2.1139347820446506e-12) q[8];
rzz(1.5707963268) q[16],q[8];
rzz(1.5707963268) q[1],q[9];
rzz(1.5707963268) q[1],q[0];
rz(-4.7123889804) q[1];
rx(1.0346909306632739e-13) q[1];
rx(1.5707963268) q[9];
rzz(1.5707963268) q[9],q[1];
rz(2.1139347820446506e-12) q[1];
ry(0.7853981633999999) q[1];
rz(2.1139347820446506e-12) q[1];
rx(1.5707963268) q[0];
rzz(1.5707963268) q[0],q[1];
rz(1.5707963267978966) q[1];
ry(0.7853981634000001) q[1];
rz(1.5707963267779261) q[1];
rz(-2.3561944902) q[9];
rzz(1.5707963268) q[9],q[1];
rz(2.1139347820446506e-12) q[1];
ry(0.7853981633999999) q[1];
rz(2.1139347820446506e-12) q[1];
rz(-9.4247779608) q[0];
rzz(1.5707963268) q[0],q[1];
rx(-1.5707963268) q[9];
rz(-4.7123889804) q[9];
rz(-3.14159265358469) q[1];
ry(1.5707963268) q[1];
rz(0.7853981634051035) q[1];
rzz(1.5707963268) q[0],q[9];
rz(2.1139347820446506e-12) q[9];
ry(0.7853981633999999) q[9];
rz(2.1139347820446506e-12) q[9];
rzz(1.5707963268) q[0],q[9];
rzz(1.5707963268) q[2],q[10];
rzz(1.5707963268) q[2],q[1];
rz(-4.7123889804) q[2];
rx(1.0346909306632739e-13) q[2];
rx(1.5707963268) q[10];
rzz(1.5707963268) q[10],q[2];
rz(2.1139347820446506e-12) q[2];
ry(0.7853981633999999) q[2];
rz(2.1139347820446506e-12) q[2];
rx(1.5707963268) q[1];
rzz(1.5707963268) q[1],q[2];
rz(1.5707963267978966) q[2];
ry(0.7853981634000001) q[2];
rz(1.5707963267779261) q[2];
rz(-2.3561944902) q[10];
rzz(1.5707963268) q[10],q[2];
rz(2.1139347820446506e-12) q[2];
ry(0.7853981633999999) q[2];
rz(2.1139347820446506e-12) q[2];
rz(-9.4247779608) q[1];
rzz(1.5707963268) q[1],q[2];
rx(-1.5707963268) q[10];
rz(-4.7123889804) q[10];
rz(-3.14159265358469) q[2];
ry(1.5707963268) q[2];
rz(0.7853981634051035) q[2];
rzz(1.5707963268) q[1],q[10];
rz(2.1139347820446506e-12) q[10];
ry(0.7853981633999999) q[10];
rz(2.1139347820446506e-12) q[10];
rzz(1.5707963268) q[1],q[10];
rzz(1.5707963268) q[3],q[11];
rzz(1.5707963268) q[3],q[2];
rz(-4.7123889804) q[3];
rx(1.0346909306632739e-13) q[3];
rx(1.5707963268) q[11];
rzz(1.5707963268) q[11],q[3];
rz(2.1139347820446506e-12) q[3];
ry(0.7853981633999999) q[3];
rz(2.1139347820446506e-12) q[3];
rx(1.5707963268) q[2];
rzz(1.5707963268) q[2],q[3];
rz(1.5707963267978966) q[3];
ry(0.7853981634000001) q[3];
rz(1.5707963267779261) q[3];
rz(-2.3561944902) q[11];
rzz(1.5707963268) q[11],q[3];
rz(2.1139347820446506e-12) q[3];
ry(0.7853981633999999) q[3];
rz(2.1139347820446506e-12) q[3];
rz(-9.4247779608) q[2];
rzz(1.5707963268) q[2],q[3];
rx(-1.5707963268) q[11];
rz(-4.7123889804) q[11];
rz(1.5707963267978966) q[3];
ry(0.7853981634098968)q[3];
rz(-1.1896590559298869e-11) q[3];
rzz(1.5707963268) q[2],q[11];
rz(2.1139347820446506e-12) q[11];
ry(0.7853981633999999) q[11];
rz(2.1139347820446506e-12) q[11];
rzz(1.5707963268) q[2],q[11];
rzz(1.5707963268) q[3],q[17];
rx(1.0346909306632739e-13) q[3];
rz(1.5707963268) q[11];
rx(1.5707963268) q[11];
rzz(1.5707963268) q[11],q[3];
rz(2.1139347820446506e-12) q[3];
ry(0.7853981633999999) q[3];
rz(2.1139347820446506e-12) q[3];
rzz(1.5707963268) q[2],q[3];
rz(1.5707963267978966) q[3];
ry(0.7853981634000001) q[3];
rz(1.5707963267779261) q[3];
rz(-2.3561944902) q[11];
rzz(1.5707963268) q[11],q[3];
rz(2.1139347820446506e-12) q[3];
ry(0.7853981633999999) q[3];
rz(2.1139347820446506e-12) q[3];
rzz(1.5707963268) q[2],q[3];
rx(-1.5707963268) q[11];
rz(-4.7123889804) q[11];
rz(1.5707963267978966) q[3];
ry(0.7853981634098969)q[3];
rz(3.1415926535880754) q[3];
rzz(1.5707963268) q[2],q[11];
rx(-1.5707963268) q[2];
rz(-1.5707963268) q[2];
rz(2.1139347820446506e-12) q[11];
ry(0.7853981633999999) q[11];
rz(2.1139347820446506e-12) q[11];
rzz(1.5707963268) q[3],q[2];
rzz(1.5707963268) q[3],q[11];
rz(1.570796326794793) q[2];
ry(1.5707963268) q[2];
rz(3.14159265358469) q[2];
rz(1.5707963268) q[10];
rx(1.5707963268) q[10];
rzz(1.5707963268) q[10],q[2];
rz(2.1139347820446506e-12) q[2];
ry(0.7853981633999999) q[2];
rz(2.1139347820446506e-12) q[2];
rzz(1.5707963268) q[1],q[2];
rz(1.5707963267978966) q[2];
ry(0.7853981634000001) q[2];
rz(1.5707963267779261) q[2];
rz(-2.3561944902) q[10];
rzz(1.5707963268) q[10],q[2];
rz(2.1139347820446506e-12) q[2];
ry(0.7853981633999999) q[2];
rz(2.1139347820446506e-12) q[2];
rzz(1.5707963268) q[1],q[2];
rx(-1.5707963268) q[10];
rz(-4.7123889804) q[10];
rz(1.5707963267978966) q[2];
ry(0.7853981634098969)q[2];
rz(3.1415926535880754) q[2];
rzz(1.5707963268) q[1],q[10];
rx(-1.5707963268) q[1];
rz(-1.5707963268) q[1];
rz(2.1139347820446506e-12) q[10];
ry(0.7853981633999999) q[10];
rz(2.1139347820446506e-12) q[10];
rzz(1.5707963268) q[2],q[1];
rzz(1.5707963268) q[2],q[10];
rz(1.570796326794793) q[1];
ry(1.5707963268) q[1];
rz(3.14159265358469) q[1];
rz(1.5707963268) q[9];
rx(1.5707963268) q[9];
rzz(1.5707963268) q[9],q[1];
rz(2.1139347820446506e-12) q[1];
ry(0.7853981633999999) q[1];
rz(2.1139347820446506e-12) q[1];
rzz(1.5707963268) q[0],q[1];
rz(1.5707963267978966) q[1];
ry(0.7853981634000001) q[1];
rz(1.5707963267779261) q[1];
rz(-2.3561944902) q[9];
rzz(1.5707963268) q[9],q[1];
rz(2.1139347820446506e-12) q[1];
ry(0.7853981633999999) q[1];
rz(2.1139347820446506e-12) q[1];
rzz(1.5707963268) q[0],q[1];
rx(-1.5707963268) q[9];
rz(-4.7123889804) q[9];
rz(1.5707963267978966) q[1];
ry(0.7853981634098969)q[1];
rz(3.1415926535880754) q[1];
rzz(1.5707963268) q[0],q[9];
rx(-1.5707963268) q[0];
rz(-1.5707963268) q[0];
rz(2.1139347820446506e-12) q[9];
ry(0.7853981633999999) q[9];
rz(2.1139347820446506e-12) q[9];
rzz(1.5707963268) q[1],q[0];
rzz(1.5707963268) q[1],q[9];
rz(1.570796326794793) q[0];
ry(1.5707963268) q[0];
rz(3.14159265358469) q[0];
rz(1.5707963268) q[8];
rx(1.5707963268) q[8];
rzz(1.5707963268) q[8],q[0];
rz(2.1139347820446506e-12) q[0];
ry(0.7853981633999999) q[0];
rz(2.1139347820446506e-12) q[0];
rzz(1.5707963268) q[16],q[0];
rz(1.5707963267978966) q[0];
ry(0.7853981634000001) q[0];
rz(1.5707963267779261) q[0];
rz(-2.3561944902) q[8];
rzz(1.5707963268) q[8],q[0];
rz(2.1139347820446506e-12) q[0];
ry(0.7853981633999999) q[0];
rz(2.1139347820446506e-12) q[0];
rzz(1.5707963268) q[16],q[0];
rx(-1.5707963268) q[8];
rz(-4.7123889804) q[8];
rz(1.5707963267978966) q[0];
ry(0.7853981634098969)q[0];
rz(3.1415926535880754) q[0];
rzz(1.5707963268) q[16],q[8];
rx(-1.5707963268) q[16];
rz(-3.1415926536) q[16];
rz(2.1139347820446506e-12) q[8];
ry(0.7853981633999999) q[8];
rz(2.1139347820446506e-12) q[8];
rzz(1.5707963268) q[0],q[16];
rzz(1.5707963268) q[0],q[8];
rzz(1.5707963268) q[4],q[12];
rzz(1.5707963268) q[4],q[17];
rz(-4.7123889804) q[4];
rx(1.0346909306632739e-13) q[4];
rx(1.5707963268) q[12];
rzz(1.5707963268) q[12],q[4];
rz(2.1139347820446506e-12) q[4];
ry(0.7853981633999999) q[4];
rz(2.1139347820446506e-12) q[4];
rx(1.5707963268) q[17];
rzz(1.5707963268) q[17],q[4];
rz(1.5707963267978966) q[4];
ry(0.7853981634000001) q[4];
rz(1.5707963267779261) q[4];
rz(-2.3561944902) q[12];
rzz(1.5707963268) q[12],q[4];
rz(2.1139347820446506e-12) q[4];
ry(0.7853981633999999) q[4];
rz(2.1139347820446506e-12) q[4];
rz(-3.1415926536) q[17];
rzz(1.5707963268) q[17],q[4];
rx(-1.5707963268) q[12];
rz(-4.7123889804) q[12];
rz(-3.14159265358469) q[4];
ry(1.5707963268) q[4];
rz(0.7853981634051035) q[4];
rzz(1.5707963268) q[17],q[12];
rz(2.1139347820446506e-12) q[12];
ry(0.7853981633999999) q[12];
rz(2.1139347820446506e-12) q[12];
rzz(1.5707963268) q[17],q[12];
rzz(1.5707963268) q[5],q[13];
rzz(1.5707963268) q[5],q[4];
rz(-4.7123889804) q[5];
rx(1.0346909306632739e-13) q[5];
rx(1.5707963268) q[13];
rzz(1.5707963268) q[13],q[5];
rz(2.1139347820446506e-12) q[5];
ry(0.7853981633999999) q[5];
rz(2.1139347820446506e-12) q[5];
rx(1.5707963268) q[4];
rzz(1.5707963268) q[4],q[5];
rz(1.5707963267978966) q[5];
ry(0.7853981634000001) q[5];
rz(1.5707963267779261) q[5];
rz(-2.3561944902) q[13];
rzz(1.5707963268) q[13],q[5];
rz(2.1139347820446506e-12) q[5];
ry(0.7853981633999999) q[5];
rz(2.1139347820446506e-12) q[5];
rz(-9.4247779608) q[4];
rzz(1.5707963268) q[4],q[5];
rx(-1.5707963268) q[13];
rz(-4.7123889804) q[13];
rz(-3.14159265358469) q[5];
ry(1.5707963268) q[5];
rz(0.7853981634051035) q[5];
rzz(1.5707963268) q[4],q[13];
rz(2.1139347820446506e-12) q[13];
ry(0.7853981633999999) q[13];
rz(2.1139347820446506e-12) q[13];
rzz(1.5707963268) q[4],q[13];
rzz(1.5707963268) q[6],q[14];
rzz(1.5707963268) q[6],q[5];
rz(-4.7123889804) q[6];
rx(1.0346909306632739e-13) q[6];
rz(1.5707963268) q[14];
rx(1.5707963268) q[14];
rzz(1.5707963268) q[14],q[6];
rz(2.1139347820446506e-12) q[6];
ry(0.7853981633999999) q[6];
rz(2.1139347820446506e-12) q[6];
rx(1.5707963268) q[5];
rzz(1.5707963268) q[5],q[6];
rz(1.5707963267978966) q[6];
ry(0.7853981634000001) q[6];
rz(1.5707963267779261) q[6];
rz(-2.3561944902) q[14];
rzz(1.5707963268) q[14],q[6];
rz(2.1139347820446506e-12) q[6];
ry(0.7853981633999999) q[6];
rz(2.1139347820446506e-12) q[6];
rz(-9.4247779608) q[5];
rzz(1.5707963268) q[5],q[6];
rx(-1.5707963268) q[14];
rz(-4.7123889804) q[14];
rz(-3.14159265358469) q[6];
ry(1.5707963268) q[6];
rz(0.7853981634051035) q[6];
rzz(1.5707963268) q[5],q[14];
rz(2.1139347820446506e-12) q[14];
ry(0.7853981633999999) q[14];
rz(2.1139347820446506e-12) q[14];
rzz(1.5707963268) q[5],q[14];
rzz(1.5707963268) q[7],q[15];
rzz(1.5707963268) q[7],q[6];
rz(-4.7123889804) q[7];
rx(1.0346909306632739e-13) q[7];
rx(1.5707963268) q[15];
rzz(1.5707963268) q[15],q[7];
rz(2.1139347820446506e-12) q[7];
ry(0.7853981633999999) q[7];
rz(2.1139347820446506e-12) q[7];
rx(1.5707963268) q[6];
rzz(1.5707963268) q[6],q[7];
rz(1.5707963267978966) q[7];
ry(0.7853981634000001) q[7];
rz(1.5707963267779261) q[7];
rz(-2.3561944902) q[15];
rzz(1.5707963268) q[15],q[7];
rz(2.1139347820446506e-12) q[7];
ry(0.7853981633999999) q[7];
rz(2.1139347820446506e-12) q[7];
rz(-9.4247779608) q[6];
rzz(1.5707963268) q[6],q[7];
rx(-1.5707963268) q[15];
rz(-4.7123889804) q[15];
rz(1.5707963267978966) q[7];
ry(0.7853981634098968)q[7];
rz(-1.1896590559298869e-11) q[7];
rzz(1.5707963268) q[6],q[15];
rz(2.1139347820446506e-12) q[15];
ry(0.7853981633999999) q[15];
rz(2.1139347820446506e-12) q[15];
rzz(1.5707963268) q[6],q[15];
rzz(1.5707963268) q[7],q[16];
rx(1.0346909306632739e-13) q[7];
rz(1.5707963268) q[15];
rx(1.5707963268) q[15];
rzz(1.5707963268) q[15],q[7];
rz(2.1139347820446506e-12) q[7];
ry(0.7853981633999999) q[7];
rz(2.1139347820446506e-12) q[7];
rzz(1.5707963268) q[6],q[7];
rz(1.5707963267978966) q[7];
ry(0.7853981634000001) q[7];
rz(1.5707963267779261) q[7];
rz(-2.3561944902) q[15];
rzz(1.5707963268) q[15],q[7];
rz(2.1139347820446506e-12) q[7];
ry(0.7853981633999999) q[7];
rz(2.1139347820446506e-12) q[7];
rzz(1.5707963268) q[6],q[7];
rx(-1.5707963268) q[15];
rz(-4.7123889804) q[15];
rz(1.5707963267978966) q[7];
ry(0.7853981634098969)q[7];
rz(3.1415926535880754) q[7];
rzz(1.5707963268) q[6],q[15];
rx(-1.5707963268) q[6];
rz(-1.5707963268) q[6];
rz(2.1139347820446506e-12) q[15];
ry(0.7853981633999999) q[15];
rz(2.1139347820446506e-12) q[15];
rzz(1.5707963268) q[7],q[6];
rzz(1.5707963268) q[7],q[15];
rz(1.570796326794793) q[6];
ry(1.5707963268) q[6];
rz(3.14159265358469) q[6];
rz(1.5707963268) q[14];
rx(1.5707963268) q[14];
rzz(1.5707963268) q[14],q[6];
rz(2.1139347820446506e-12) q[6];
ry(0.7853981633999999) q[6];
rz(2.1139347820446506e-12) q[6];
rzz(1.5707963268) q[5],q[6];
rz(1.5707963267978966) q[6];
ry(0.7853981634000001) q[6];
rz(1.5707963267779261) q[6];
rz(-2.3561944902) q[14];
rzz(1.5707963268) q[14],q[6];
rz(2.1139347820446506e-12) q[6];
ry(0.7853981633999999) q[6];
rz(2.1139347820446506e-12) q[6];
rzz(1.5707963268) q[5],q[6];
rx(-1.5707963268) q[14];
rz(-4.7123889804) q[14];
rz(1.5707963267978966) q[6];
ry(0.7853981634098969)q[6];
rz(3.1415926535880754) q[6];
rzz(1.5707963268) q[5],q[14];
rx(-1.5707963268) q[5];
rz(-1.5707963268) q[5];
rz(2.1139347820446506e-12) q[14];
ry(0.7853981633999999) q[14];
rz(2.1139347820446506e-12) q[14];
rzz(1.5707963268) q[6],q[5];
rzz(1.5707963268) q[6],q[14];
rz(1.570796326794793) q[5];
ry(1.5707963268) q[5];
rz(3.14159265358469) q[5];
rz(1.5707963268) q[13];
rx(1.5707963268) q[13];
rzz(1.5707963268) q[13],q[5];
rz(2.1139347820446506e-12) q[5];
ry(0.7853981633999999) q[5];
rz(2.1139347820446506e-12) q[5];
rzz(1.5707963268) q[4],q[5];
rz(1.5707963267978966) q[5];
ry(0.7853981634000001) q[5];
rz(1.5707963267779261) q[5];
rz(-2.3561944902) q[13];
rzz(1.5707963268) q[13],q[5];
rz(2.1139347820446506e-12) q[5];
ry(0.7853981633999999) q[5];
rz(2.1139347820446506e-12) q[5];
rzz(1.5707963268) q[4],q[5];
rx(-1.5707963268) q[13];
rz(-4.7123889804) q[13];
rz(1.5707963267978966) q[5];
ry(0.7853981634098969)q[5];
rz(3.1415926535880754) q[5];
rzz(1.5707963268) q[4],q[13];
rx(-1.5707963268) q[4];
rz(-1.5707963268) q[4];
rz(2.1139347820446506e-12) q[13];
ry(0.7853981633999999) q[13];
rz(2.1139347820446506e-12) q[13];
rzz(1.5707963268) q[5],q[4];
rzz(1.5707963268) q[5],q[13];
rz(1.570796326794793) q[4];
ry(1.5707963268) q[4];
rz(3.14159265358469) q[4];
rz(1.5707963268) q[12];
rx(1.5707963268) q[12];
rzz(1.5707963268) q[12],q[4];
rz(2.1139347820446506e-12) q[4];
ry(0.7853981633999999) q[4];
rz(2.1139347820446506e-12) q[4];
rx(1.5707963268) q[16];
rzz(1.5707963268) q[16],q[4];
rz(1.5707963267978966) q[4];
ry(0.7853981634000001) q[4];
rz(1.5707963267779261) q[4];
rz(-2.3561944902) q[12];
rzz(1.5707963268) q[12],q[4];
rz(2.1139347820446506e-12) q[4];
ry(0.7853981633999999) q[4];
rz(2.1139347820446506e-12) q[4];
rz(-3.926990817) q[16];
rzz(1.5707963268) q[16],q[4];
rx(-1.5707963268) q[12];
rz(-4.7123889804) q[12];
rz(1.5707963267978966) q[4];
ry(0.7853981634098969)q[4];
rz(3.1415926535880754) q[4];
rzz(1.5707963268) q[16],q[12];
rx(-1.5707963268) q[16];
rz(-1.5707963268) q[16];
rz(2.1139347820446506e-12) q[12];
ry(0.7853981633999999) q[12];
rz(2.1139347820446506e-12) q[12];
rzz(1.5707963268) q[4],q[16];
rzz(1.5707963268) q[4],q[12];
rz(1.5707963268) q[8];
rx(1.5707963268) q[8];
rz(1.5707963268) q[9];
rx(1.5707963268) q[9];
rz(1.5707963268) q[10];
rx(1.5707963268) q[10];
rz(1.5707963268) q[11];
rx(1.5707963268) q[11];
rz(1.5707963268) q[12];
rx(1.5707963268) q[12];
rz(1.5707963268) q[13];
rx(1.5707963268) q[13];
rz(1.5707963268) q[14];
rx(1.5707963268) q[14];
rz(1.5707963268) q[15];
rx(1.5707963268) q[15];
rx(1.5707963268) q[16];
measure q[8] -> ans[0];
measure q[9] -> ans[1];
measure q[10] -> ans[2];
measure q[11] -> ans[3];
measure q[12] -> ans[4];
measure q[13] -> ans[5];
measure q[14] -> ans[6];
measure q[15] -> ans[7];
measure q[16] -> ans[8];
