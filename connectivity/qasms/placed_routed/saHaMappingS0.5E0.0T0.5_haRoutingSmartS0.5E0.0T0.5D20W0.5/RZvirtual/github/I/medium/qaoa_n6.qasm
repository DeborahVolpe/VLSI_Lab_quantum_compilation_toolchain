OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
creg c[6];
ry(pi/2)  q[2];
ry(pi/2)  q[3];
ry(pi/2)  q[1];
ry(pi/2)  q[4];
ry(pi/2)  q[6];
ry(pi/2)  q[5];
rx(pi)  q[2];
rx(pi)  q[3];
rx(pi)  q[1];
rx(pi)  q[4];
rx(pi)  q[6];
rx(pi)  q[5];
rz(-2.8758029)  q[2];
rz(-2.8758029)  q[3];
rz(-2.8758029)  q[1];
rz(-2.8758029)  q[4];
rz(-2.8758029)  q[6];
rz(-2.8758029)  q[5];
rz(0.0)  q[2];
rz(0.0)  q[3];
rz(0.0)  q[1];
rz(0.0)  q[4];
rz(0.0)  q[6];
rz(0.0)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[2];
rz(4*pi)  q[3];
rz(4*pi)  q[1];
rz(4*pi)  q[4];
rz(4*pi)  q[6];
rz(4*pi)  q[5];
rx(pi/2)  q[2];
cx q[2], q[3];
rx(1.3050066)  q[2];
ry(pi/2)  q[3];
cx q[3], q[2];
rx(-pi/2)  q[3];
rz(pi/2)  q[3];
cx q[2], q[3];
rz(pi)  q[2];
rz(0.0)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(12.3005808498177)  q[2];
rz(12.3005808498177)  q[3];
rz(-2.8758029)  q[2];
rz(-2.8758029)  q[3];
rz(0.0)  q[2];
rz(0.0)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi)  q[2];
rz(3*pi)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
cx q[2], q[1];
rx(1.3050066)  q[2];
ry(pi/2)  q[1];
cx q[1], q[2];
rx(-pi/2)  q[1];
rz(pi/2)  q[1];
cx q[2], q[1];
rz(pi)  q[2];
rz(0.0)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(12.3005808498177)  q[2];
rz(12.3005808498177)  q[1];
rz(-2.8758029)  q[2];
rz(-2.8758029)  q[1];
rz(0.0)  q[2];
rz(0.0)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi)  q[2];
rz(4*pi)  q[1];
rx(pi/2)  q[2];
cx q[3], q[1];
rx(1.3050066)  q[3];
ry(pi/2)  q[1];
cx q[2], q[5];
rx(1.3050066)  q[2];
ry(pi/2)  q[5];
cx q[1], q[3];
rx(-pi/2)  q[1];
cx q[5], q[2];
rz(pi/2)  q[1];
rx(-pi/2)  q[5];
rz(pi/2)  q[5];
cx q[3], q[1];
rz(pi)  q[3];
rz(0.0)  q[1];
cx q[2], q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(pi)  q[2];
rz(0.0)  q[5];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(12.3005808498177)  q[3];
rz(12.3005808498177)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rz(-2.8758029)  q[3];
rz(-2.8758029)  q[1];
rz(12.3005808498177)  q[2];
rz(12.3005808498177)  q[5];
rz(0.0)  q[3];
rz(0.0)  q[1];
rx(-1.985717)  q[2];
rz(-2.8758029)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(0.4672733)  q[2];
rz(0.0)  q[5];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[1];
rz(5.65915874651753)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rz(3*pi/2)  q[5];
rz(3*pi)  q[3];
rz(3*pi)  q[1];
rz(3*pi/2)  q[2];
rx(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[2];
rz(4*pi)  q[5];
rz(3*pi)  q[2];
cx q[3], q[4];
cx q[1], q[6];
rx(1.3050066)  q[3];
ry(pi/2)  q[4];
rx(1.3050066)  q[1];
ry(pi/2)  q[6];
rx(pi/2)  q[2];
cx q[4], q[3];
cx q[6], q[1];
rx(-pi/2)  q[4];
rx(-pi/2)  q[6];
rz(pi/2)  q[4];
rz(pi/2)  q[6];
cx q[3], q[4];
cx q[1], q[6];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[1];
rz(0.0)  q[6];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rz(12.3005808498177)  q[3];
rz(12.3005808498177)  q[4];
rz(12.3005808498177)  q[1];
rz(12.3005808498177)  q[6];
rx(-1.985717)  q[3];
rz(-2.8758029)  q[4];
rx(-1.985717)  q[1];
rz(-2.8758029)  q[6];
rz(0.4672733)  q[3];
rz(0.0)  q[4];
rz(0.4672733)  q[1];
rz(0.0)  q[6];
rz(5.65915874651753)  q[3];
rx(pi/2)  q[4];
rz(5.65915874651753)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[3];
rz(4*pi)  q[4];
rx(pi/2)  q[1];
rz(3*pi)  q[6];
rz(4*pi)  q[3];
rz(4*pi)  q[1];
rx(pi/2)  q[6];
cx q[6], q[4];
cx q[2], q[3];
ry(pi/2)  q[4];
rx(1.3050066)  q[6];
rx(1.103523)  q[2];
ry(pi/2)  q[3];
cx q[4], q[6];
cx q[3], q[2];
rx(-pi/2)  q[4];
rx(-pi/2)  q[3];
rz(pi/2)  q[4];
rz(pi/2)  q[3];
cx q[6], q[4];
cx q[2], q[3];
rz(0.0)  q[4];
rz(pi)  q[6];
rz(pi)  q[2];
rz(0.0)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(12.3005808498177)  q[4];
rz(12.3005808498177)  q[6];
rz(12.7231238789159)  q[2];
rz(12.7231238789159)  q[3];
rz(-2.8758029)  q[4];
rz(-2.8758029)  q[6];
rz(0.4672733)  q[2];
rz(0.4672733)  q[3];
rz(0.0)  q[4];
rz(0.0)  q[6];
rz(5.65915874651753)  q[2];
rz(5.65915874651753)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi)  q[4];
rz(3*pi)  q[6];
rz(3*pi)  q[2];
rz(3*pi)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
cx q[2], q[1];
cx q[6], q[5];
rx(1.103523)  q[2];
ry(pi/2)  q[1];
rx(1.3050066)  q[6];
ry(pi/2)  q[5];
cx q[1], q[2];
cx q[5], q[6];
rx(-pi/2)  q[1];
rx(-pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[5];
cx q[2], q[1];
cx q[6], q[5];
rz(pi)  q[2];
rz(0.0)  q[1];
rz(pi)  q[6];
rz(0.0)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(12.7231238789159)  q[2];
rz(12.7231238789159)  q[1];
rz(12.3005808498177)  q[6];
rz(12.3005808498177)  q[5];
rz(0.4672733)  q[2];
rz(0.4672733)  q[1];
rx(-1.985717)  q[6];
rz(-2.8758029)  q[5];
rz(5.65915874651753)  q[2];
rz(5.65915874651753)  q[1];
rz(0.4672733)  q[6];
rz(0.0)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(5.65915874651753)  q[6];
rx(pi/2)  q[5];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[1];
rx(pi/2)  q[6];
rz(3*pi/2)  q[5];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi)  q[2];
rz(4*pi)  q[1];
rx(pi/2)  q[6];
rz(4*pi)  q[5];
rx(pi/2)  q[2];
rz(4*pi)  q[6];
cx q[3], q[1];
cx q[4], q[5];
rx(1.103523)  q[3];
ry(pi/2)  q[1];
rx(1.3050066)  q[4];
ry(pi/2)  q[5];
cx q[1], q[3];
cx q[5], q[4];
rx(-pi/2)  q[1];
rx(-pi/2)  q[5];
rz(pi/2)  q[1];
rz(pi/2)  q[5];
cx q[3], q[1];
cx q[4], q[5];
rz(pi)  q[3];
rz(0.0)  q[1];
rz(pi)  q[4];
rz(0.0)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(12.7231238789159)  q[3];
rz(12.7231238789159)  q[1];
rz(12.3005808498177)  q[4];
rz(12.3005808498177)  q[5];
rz(0.4672733)  q[3];
rz(0.4672733)  q[1];
rx(-1.985717)  q[4];
rx(-1.985717)  q[5];
rz(5.65915874651753)  q[3];
rz(5.65915874651753)  q[1];
rz(0.4672733)  q[4];
rz(0.4672733)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(5.65915874651753)  q[4];
rz(5.65915874651753)  q[5];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rz(3*pi)  q[3];
rz(3*pi)  q[1];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rx(pi/2)  q[3];
rx(pi/2)  q[1];
rz(4*pi)  q[4];
rz(4*pi)  q[5];
cx q[1], q[6];
cx q[3], q[4];
cx q[2], q[5];
rx(1.103523)  q[1];
ry(pi/2)  q[6];
rx(1.103523)  q[3];
ry(pi/2)  q[4];
rx(1.103523)  q[2];
ry(pi/2)  q[5];
cx q[6], q[1];
cx q[4], q[3];
cx q[5], q[2];
rx(-pi/2)  q[6];
rx(-pi/2)  q[4];
rx(-pi/2)  q[5];
rz(pi/2)  q[6];
rz(pi/2)  q[4];
rz(pi/2)  q[5];
cx q[1], q[6];
cx q[3], q[4];
cx q[2], q[5];
rz(pi)  q[1];
rz(0.0)  q[6];
rz(pi)  q[3];
rz(0.0)  q[4];
rz(pi)  q[2];
rz(0.0)  q[5];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[5];
rx(pi/2)  q[1];
rx(pi/2)  q[6];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[5];
rz(12.7231238789159)  q[1];
rz(12.7231238789159)  q[6];
rz(12.7231238789159)  q[3];
rz(12.7231238789159)  q[4];
rz(12.7231238789159)  q[2];
rz(12.7231238789159)  q[5];
rx(-2.108036)  q[1];
rz(0.4672733)  q[6];
rx(-2.108036)  q[3];
rz(0.4672733)  q[4];
rx(-2.108036)  q[2];
rz(0.4672733)  q[5];
rz(5.65915874651753)  q[6];
rz(5.65915874651753)  q[4];
rz(5.65915874651753)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi)  q[6];
rz(4*pi)  q[4];
rz(4*pi)  q[5];
rx(pi/2)  q[6];
cx q[6], q[4];
ry(pi/2)  q[4];
rx(1.103523)  q[6];
cx q[4], q[6];
rx(-pi/2)  q[4];
rz(pi/2)  q[4];
cx q[6], q[4];
rz(0.0)  q[4];
rz(pi)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rz(12.7231238789159)  q[4];
rz(12.7231238789159)  q[6];
rz(0.4672733)  q[4];
rz(0.4672733)  q[6];
rz(5.65915874651753)  q[4];
rz(5.65915874651753)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
rz(3*pi)  q[4];
rz(3*pi)  q[6];
rx(pi/2)  q[4];
rx(pi/2)  q[6];
cx q[6], q[5];
rx(1.103523)  q[6];
ry(pi/2)  q[5];
cx q[5], q[6];
rx(-pi/2)  q[5];
rz(pi/2)  q[5];
cx q[6], q[5];
rz(pi)  q[6];
rz(0.0)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(3*pi/2)  q[6];
rz(3*pi/2)  q[5];
rx(pi/2)  q[6];
rx(pi/2)  q[5];
rz(12.7231238789159)  q[6];
rz(12.7231238789159)  q[5];
rx(-2.108036)  q[6];
rz(0.4672733)  q[5];
rz(5.65915874651753)  q[5];
rx(pi/2)  q[5];
rz(3*pi/2)  q[5];
rx(pi/2)  q[5];
rz(4*pi)  q[5];
cx q[4], q[5];
rx(1.103523)  q[4];
ry(pi/2)  q[5];
cx q[5], q[4];
rx(-pi/2)  q[5];
rz(pi/2)  q[5];
cx q[4], q[5];
rz(pi)  q[4];
rz(0.0)  q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(3*pi/2)  q[4];
rz(3*pi/2)  q[5];
rx(pi/2)  q[4];
rx(pi/2)  q[5];
rz(12.7231238789159)  q[4];
rz(12.7231238789159)  q[5];
rx(-2.108036)  q[4];
rx(-2.108036)  q[5];
measure q[2] -> c[0];
measure q[3] -> c[1];
measure q[1] -> c[2];
measure q[4] -> c[3];
measure q[6] -> c[4];
measure q[5] -> c[5];