OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[3];
rz(3*pi/2)  q[2];
rz(0.925356464517499)  q[1];
rz(0.177187947808302)  q[0];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(3*pi/2)  q[2];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[0];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(9*pi/2)  q[2];
rz(9*pi/2)  q[1];
rz(3*pi)  q[0];
cz q[1], q[0];
rz(3*pi/2)  q[1];
rz(0.0)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(3.53207685057836)  q[1];
rz(3.53207685057836)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(3*pi)  q[0];
cz q[1], q[0];
rz(pi)  q[1];
rz(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(5.42673992036369)  q[1];
rz(3.23530999601244)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(9*pi/2)  q[1];
rz(9*pi/2)  q[0];
cz q[2], q[1];
rz(3*pi/2)  q[2];
rz(0.0)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(4.17279559527435)  q[2];
rz(4.17279559527435)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(3*pi)  q[1];
cz q[2], q[1];
rz(0.0)  q[2];
rz(3*pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(6.20970299539712)  q[2];
rz(3.57339680126442)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi)  q[2];
rz(5*pi)  q[1];
cz q[1], q[0];
rz(3*pi/2)  q[1];
rz(0.0)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(3.87252240097961)  q[1];
rz(3.87252240097961)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(3*pi)  q[0];
cz q[1], q[0];
rz(0.0)  q[1];
rz(pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(5.10730277557677)  q[1];
rz(4.95748151312165)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(7*pi/2)  q[0];
cz q[2], q[1];
rz(3*pi/2)  q[2];
rz(0.0)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(4.17279559527435)  q[2];
rz(4.17279559527435)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(7*pi/2)  q[2];
rz(3*pi)  q[1];
cz q[2], q[1];
rz(3*pi/2)  q[2];
rz(pi/2)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(3*pi/2)  q[2];
rz(5.28333509041240)  q[1];
rx(pi/2)  q[2];
rx(pi/2)  q[1];
rz(10.5536094988276)  q[2];
rz(3*pi)  q[1];
cz q[1], q[0];
rz(3*pi/2)  q[1];
rz(0.0)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(3.53207685057836)  q[1];
rz(3.53207685057836)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(7*pi/2)  q[1];
rz(3*pi)  q[0];
cz q[1], q[0];
rz(pi/2)  q[1];
rz(0.0)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(3*pi/2)  q[1];
rz(3*pi/2)  q[0];
rx(pi/2)  q[1];
rx(pi/2)  q[0];
rz(13.0553449643740)  q[1];
rz(13.8035134813973)  q[0];
measure q[2] -> c[0];
measure q[1] -> c[1];
measure q[0] -> c[2];
