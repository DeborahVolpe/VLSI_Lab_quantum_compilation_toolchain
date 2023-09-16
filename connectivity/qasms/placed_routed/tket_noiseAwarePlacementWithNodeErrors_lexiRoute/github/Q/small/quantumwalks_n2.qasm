OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[2];
rz(0.015985383815362814*pi) q[3];
rz(3.999994947439304*pi) q[4];
rx(0.5*pi) q[3];
rx(0.5*pi) q[4];
rz(1.2503348825888954*pi) q[3];
rz(1.4999328677460624*pi) q[4];
rx(0.5*pi) q[3];
rx(0.5*pi) q[4];
rz(3.4773837309089743*pi) q[3];
rz(1.9920005833468288*pi) q[4];
rx(0.5*pi) q[3];
rz(3.5*pi) q[4];
ry(0.5*pi) q[3];
ry(1.0*pi) q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(0.25*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(3.75*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rz(1.0*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
ry(0.5*pi) q[3];
rz(1.0159870517046623*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
rz(1.0*pi) q[3];
rz(3.0*pi) q[4];
rx(0.5*pi) q[3];
rz(3.5*pi) q[4];
rz(1.5226162483639507*pi) q[3];
ry(1.0*pi) q[4];
rx(0.5*pi) q[3];
rz(2.5*pi) q[3];
rx(0.5*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(0.25*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(3.75*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rz(1.0*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
ry(0.5*pi) q[3];
rz(1.0000047608943*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
rz(1.0*pi) q[3];
rz(3.5*pi) q[4];
rx(0.5*pi) q[3];
rz(3.5*pi) q[4];
rz(1.5*pi) q[3];
ry(1.0*pi) q[4];
rx(0.5*pi) q[3];
rz(3.5*pi) q[3];
rx(0.5*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(0.25*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
rz(3.75*pi) q[3];
ry(0.5*pi) q[3];
rx(1.0*pi) q[3];
cz q[4],q[3];
ry(0.5*pi) q[3];
rz(3.992000583346815*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
ry(0.5*pi) q[3];
rz(1.4999328677460655*pi) q[4];
rx(1.0*pi) q[3];
rx(0.5*pi) q[4];
rz(3.9773932437261084*pi) q[3];
rz(1.999994947439313*pi) q[4];
measure q[4] -> c[0];
rx(0.5*pi) q[3];
rz(1.7495310895878293*pi) q[3];
rx(0.5*pi) q[3];
rz(3.9840213339900346*pi) q[3];
measure q[3] -> c[1];
