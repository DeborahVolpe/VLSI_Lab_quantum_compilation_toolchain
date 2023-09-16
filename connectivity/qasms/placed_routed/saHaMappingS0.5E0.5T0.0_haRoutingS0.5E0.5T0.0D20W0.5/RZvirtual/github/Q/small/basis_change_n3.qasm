OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[3];
rz(3*pi/2)  q[2];
rz(0.925356464517499)  q[3];
rz(0.177187947808302)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(9*pi/2)  q[2];
rz(9*pi/2)  q[3];
rz(3*pi)  q[4];
cz q[3], q[4];
rz(3*pi/2)  q[3];
rz(0.0)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(3.53207685057836)  q[3];
rz(3.53207685057836)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(7*pi/2)  q[3];
rz(3*pi)  q[4];
cz q[3], q[4];
rz(pi)  q[3];
rz(pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(5.42673992036369)  q[3];
rz(3.23530999601244)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(9*pi/2)  q[3];
rz(9*pi/2)  q[4];
cz q[2], q[3];
rz(3*pi/2)  q[2];
rz(0.0)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(4.17279559527435)  q[2];
rz(4.17279559527435)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(7*pi/2)  q[2];
rz(3*pi)  q[3];
cz q[2], q[3];
rz(0.0)  q[2];
rz(3*pi/2)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(6.20970299539712)  q[2];
rz(3.57339680126442)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi)  q[2];
rz(5*pi)  q[3];
cz q[3], q[4];
rz(3*pi/2)  q[3];
rz(0.0)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(3.87252240097961)  q[3];
rz(3.87252240097961)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(7*pi/2)  q[3];
rz(3*pi)  q[4];
cz q[3], q[4];
rz(0.0)  q[3];
rz(pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(5.10730277557677)  q[3];
rz(4.95748151312165)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(7*pi/2)  q[3];
rz(7*pi/2)  q[4];
cz q[2], q[3];
rz(3*pi/2)  q[2];
rz(0.0)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(4.17279559527435)  q[2];
rz(4.17279559527435)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(7*pi/2)  q[2];
rz(3*pi)  q[3];
cz q[2], q[3];
rz(3*pi/2)  q[2];
rz(pi/2)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(3*pi/2)  q[2];
rz(5.28333509041240)  q[3];
rx(pi/2)  q[2];
rx(pi/2)  q[3];
rz(10.5536094988276)  q[2];
rz(3*pi)  q[3];
cz q[3], q[4];
rz(3*pi/2)  q[3];
rz(0.0)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(3.53207685057836)  q[3];
rz(3.53207685057836)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(7*pi/2)  q[3];
rz(3*pi)  q[4];
cz q[3], q[4];
rz(pi/2)  q[3];
rz(0.0)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(3*pi/2)  q[3];
rz(3*pi/2)  q[4];
rx(pi/2)  q[3];
rx(pi/2)  q[4];
rz(13.0553449643740)  q[3];
rz(13.8035134813973)  q[4];
measure q[2] -> c[0];
measure q[3] -> c[1];
measure q[4] -> c[2];
