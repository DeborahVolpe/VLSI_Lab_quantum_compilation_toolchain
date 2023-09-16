OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[4];
rx(1.0*pi) q[0];
rz(3.75*pi) q[1];
rx(1.0*pi) q[15];
rz(3.75*pi) q[16];
rz(0.25*pi) q[0];
rz(0.25*pi) q[15];
cx q[15],q[16];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(0.4975887304211001*pi) q[15];
cx q[16],q[15];
rz(3.5024112695789*pi) q[15];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
rz(3.75*pi) q[15];
rz(0.0*pi) q[16];
cx q[0],q[15];
rz(0.25*pi) q[16];
ry(0.5*pi) q[0];
cx q[16],q[1];
rx(1.0*pi) q[0];
ry(0.5*pi) q[16];
cx q[15],q[0];
rx(1.0*pi) q[16];
rz(3.7487851618515244*pi) q[0];
cx q[1],q[16];
cx q[15],q[0];
rz(3.7511965693238913*pi) q[16];
rz(0.25121483814847567*pi) q[0];
cx q[1],q[16];
ry(0.5*pi) q[0];
rz(0.24880343067610855*pi) q[16];
rx(1.0*pi) q[0];
ry(0.5*pi) q[16];
cx q[0],q[15];
rx(1.0*pi) q[16];
rz(3.75*pi) q[0];
cx q[16],q[1];
rz(0.25*pi) q[15];
measure q[0] -> c[0];
rz(0.25*pi) q[1];
rz(0.0*pi) q[15];
rz(3.75*pi) q[16];
rz(0.0*pi) q[1];
rz(0.25*pi) q[15];
rz(3.75*pi) q[16];
measure q[1] -> c[3];
cx q[15],q[16];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[16],q[15];
rz(0.0024113390994035437*pi) q[15];
cx q[16],q[15];
rz(3.9975886609005964*pi) q[15];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[15],q[16];
rz(3.75*pi) q[15];
rz(0.25*pi) q[16];
measure q[15] -> c[1];
rz(0.0*pi) q[16];
measure q[16] -> c[2];
