OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[2];
rz(-1.58730875641222e-5)  q[3];
rz(0.0502195643591570)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[2];
rz(4.71217807818890)  q[3];
rz(3.92804288166833)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[2];
rz(6.25805439858898)  q[3];
rz(10.9245231827363)  q[2];
rz(-pi/2)  q[3];
rx(pi/2)  q[2];
ry(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(-pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rz(pi)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(3.19181745777772)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(3*pi)  q[3];
rz(pi)  q[2];
rz(-pi/2)  q[3];
rx(pi/2)  q[2];
ry(pi)  q[3];
rz(4.78344002009664)  q[2];
rx(pi/2)  q[2];
rz(5*pi/2)  q[2];
rx(pi/2)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(-pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rz(pi)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(3.14160761038035)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(7*pi/2)  q[3];
rz(pi)  q[2];
rz(-pi/2)  q[3];
rx(pi/2)  q[2];
ry(pi)  q[3];
rz(3*pi/2)  q[2];
rx(pi/2)  q[2];
rz(7*pi/2)  q[2];
rx(pi/2)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rx(pi)  q[3];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
rz(-pi/4)  q[2];
ry(pi/2)  q[2];
rx(pi)  q[2];
cz q[3], q[2];
rz(-0.0251309085906506)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(4.71217807818891)  q[3];
ry(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi)  q[2];
rz(6.28316943409205)  q[3];
rz(-0.0710212194315534)  q[2];
rx(pi/2)  q[2];
rz(5.49631401827607)  q[2];
rx(pi/2)  q[2];
rz(12.5161721546081)  q[2];
measure q[3] -> c[0];
measure q[2] -> c[1];

