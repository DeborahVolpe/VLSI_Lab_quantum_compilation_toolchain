OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
rx(1.0*pi) q[0];
rz(3.75*pi) q[1];
rx(1.0*pi) q[2];
rz(3.75*pi) q[3];
rz(0.25*pi) q[0];
ry(0.5*pi) q[1];
rz(0.25*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[1];
rx(1.0*pi) q[3];
cz q[2],q[3];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.4975887304211001*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rz(3.5024112695789*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[2],q[3];
rz(3.75*pi) q[2];
ry(0.5*pi) q[3];
rz(3.75*pi) q[2];
rx(1.0*pi) q[3];
ry(0.5*pi) q[2];
rz(0.25*pi) q[3];
rx(1.0*pi) q[2];
rz(0.0*pi) q[3];
cz q[0],q[2];
rz(0.25*pi) q[3];
ry(0.5*pi) q[0];
cz q[3],q[1];
ry(0.5*pi) q[2];
rx(1.0*pi) q[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[3];
rx(1.0*pi) q[0];
ry(0.5*pi) q[3];
cz q[2],q[0];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
cz q[1],q[3];
rx(1.0*pi) q[0];
ry(0.5*pi) q[3];
rz(3.7487851618515244*pi) q[0];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
rz(3.7511965693238913*pi) q[3];
rx(1.0*pi) q[0];
ry(0.5*pi) q[3];
cz q[2],q[0];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
cz q[1],q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[2];
ry(0.5*pi) q[3];
rz(0.25121483814847567*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[3];
ry(0.5*pi) q[0];
rz(0.24880343067610855*pi) q[3];
rx(1.0*pi) q[0];
ry(0.5*pi) q[3];
cz q[0],q[2];
rx(1.0*pi) q[3];
rz(3.75*pi) q[0];
cz q[3],q[1];
ry(0.5*pi) q[2];
measure q[0] -> c[0];
ry(0.5*pi) q[1];
rx(1.0*pi) q[2];
rz(3.75*pi) q[3];
rx(1.0*pi) q[1];
rz(0.25*pi) q[2];
rz(3.75*pi) q[3];
rz(0.25*pi) q[1];
rz(0.0*pi) q[2];
ry(0.5*pi) q[3];
rz(0.0*pi) q[1];
rz(0.25*pi) q[2];
rx(1.0*pi) q[3];
measure q[1] -> c[3];
cz q[2],q[3];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
rz(0.0024113390994035437*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[3],q[2];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rz(3.9975886609005964*pi) q[2];
ry(0.5*pi) q[2];
rx(1.0*pi) q[2];
cz q[2],q[3];
rz(3.75*pi) q[2];
ry(0.5*pi) q[3];
measure q[2] -> c[1];
rx(1.0*pi) q[3];
rz(0.25*pi) q[3];
rz(0.0*pi) q[3];
measure q[3] -> c[2];
