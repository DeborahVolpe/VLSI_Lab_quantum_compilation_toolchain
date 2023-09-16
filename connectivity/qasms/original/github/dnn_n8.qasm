// EIGHT QUBIT DEEP ( 16 dimensions ) 
// Generated from Cirq v0.8.0

OPENQASM 2.0;
include "qelib1.inc";

// Qubits: [(0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7)]
qreg q[8];
creg c[8];

rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];

// Gate: ZZ**1.1
rz(pi*1.1) q[0];
rz(pi*1.1) q[1];
u3(pi*0.5,0,pi*0.25) q[0];
u3(pi*0.5,pi*1.0,pi*0.75) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.65,pi*1.0) q[0];
u3(pi*0.5,pi*0.15,0) q[1];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[0];
u3(0,0,pi*0.5) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*1.0,0,pi*0.5) q[0];
u3(pi*1.0,0,pi*1.5) q[1];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[0];
u3(pi*0.5,pi*0.5,pi*1.5) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.5,pi*0.5) q[0];
u3(pi*0.5,pi*0.5,pi*1.5) q[1];

rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];

// Gate: ZZ**1.1
rz(pi*1.1) q[2];
rz(pi*1.1) q[3];
u3(pi*0.5,0,pi*0.25) q[2];
u3(pi*0.5,pi*1.0,pi*0.75) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.65,pi*1.0) q[2];
u3(pi*0.5,pi*0.15,0) q[3];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[2];
u3(0,0,pi*0.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*1.0,0,pi*0.5) q[2];
u3(pi*1.0,0,pi*1.5) q[3];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[2];
u3(pi*0.5,pi*0.5,pi*1.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.5,pi*0.5) q[2];
u3(pi*0.5,pi*0.5,pi*1.5) q[3];

rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];

// Gate: ZZ**1.1
rz(pi*1.1) q[4];
rz(pi*1.1) q[5];
u3(pi*0.5,0,pi*0.25) q[4];
u3(pi*0.5,pi*1.0,pi*0.75) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.65,pi*1.0) q[4];
u3(pi*0.5,pi*0.15,0) q[5];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[4];
u3(0,0,pi*0.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*1.0,0,pi*0.5) q[4];
u3(pi*1.0,0,pi*1.5) q[5];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[4];
u3(pi*0.5,pi*0.5,pi*1.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.5,pi*0.5) q[4];
u3(pi*0.5,pi*0.5,pi*1.5) q[5];

rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];

// Gate: ZZ**1.1
rz(pi*1.1) q[6];
rz(pi*1.1) q[7];
u3(pi*0.5,0,pi*0.25) q[6];
u3(pi*0.5,pi*1.0,pi*0.75) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.65,pi*1.0) q[6];
u3(pi*0.5,pi*0.15,0) q[7];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[6];
u3(0,0,pi*0.5) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*1.0,0,pi*0.5) q[6];
u3(pi*1.0,0,pi*1.5) q[7];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[6];
u3(pi*0.5,pi*0.5,pi*1.5) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.5,pi*0.5) q[6];
u3(pi*0.5,pi*0.5,pi*1.5) q[7];

rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];

// Gate: ZZ**1.1
rz(pi*1.1) q[1];
rz(pi*1.1) q[2];
u3(pi*0.5,0,pi*0.25) q[1];
u3(pi*0.5,pi*1.0,pi*0.75) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.65,pi*1.0) q[1];
u3(pi*0.5,pi*0.15,0) q[2];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[1];
u3(0,0,pi*0.5) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*1.0,0,pi*0.5) q[1];
u3(pi*1.0,0,pi*1.5) q[2];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[1];
u3(pi*0.5,pi*0.5,pi*1.5) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.5,pi*0.5) q[1];
u3(pi*0.5,pi*0.5,pi*1.5) q[2];

rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];

// Gate: ZZ**1.1
rz(pi*1.1) q[3];
rz(pi*1.1) q[4];
u3(pi*0.5,0,pi*0.25) q[3];
u3(pi*0.5,pi*1.0,pi*0.75) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.65,pi*1.0) q[3];
u3(pi*0.5,pi*0.15,0) q[4];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[3];
u3(0,0,pi*0.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*1.0,0,pi*0.5) q[3];
u3(pi*1.0,0,pi*1.5) q[4];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[3];
u3(pi*0.5,pi*0.5,pi*1.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.5,pi*0.5) q[3];
u3(pi*0.5,pi*0.5,pi*1.5) q[4];

rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];

// Gate: ZZ**1.1
rz(pi*1.1) q[5];
rz(pi*1.1) q[6];
u3(pi*0.5,0,pi*0.25) q[5];
u3(pi*0.5,pi*1.0,pi*0.75) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.65,pi*1.0) q[5];
u3(pi*0.5,pi*0.15,0) q[6];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[5];
u3(0,0,pi*0.5) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*1.0,0,pi*0.5) q[5];
u3(pi*1.0,0,pi*1.5) q[6];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[5];
u3(pi*0.5,pi*0.5,pi*1.5) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.5,pi*0.5) q[5];
u3(pi*0.5,pi*0.5,pi*1.5) q[6];

rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];

// Gate: ZZ**1.1
rz(pi*1.1) q[7];
rz(pi*1.1) q[0];
u3(pi*0.5,0,pi*0.25) q[7];
u3(pi*0.5,pi*1.0,pi*0.75) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.65,pi*1.0) q[7];
u3(pi*0.5,pi*0.15,0) q[0];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[7];
u3(0,0,pi*0.5) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*1.0,0,pi*0.5) q[7];
u3(pi*1.0,0,pi*1.5) q[0];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[7];
u3(pi*0.5,pi*0.5,pi*1.5) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.5,pi*0.5) q[7];
u3(pi*0.5,pi*0.5,pi*1.5) q[0];

rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];

// Gate: CNOT**1.1
ry(pi*-0.5) q[1];
u3(pi*0.5,0,pi*0.25) q[0];
u3(pi*0.5,pi*1.0,pi*0.75) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.05) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.3,pi*1.0) q[0];
u3(pi*0.5,pi*1.8,0) q[1];
ry(pi*0.5) q[1];

// Gate: CNOT**1.1
ry(pi*-0.5) q[3];
u3(pi*0.5,0,pi*0.25) q[2];
u3(pi*0.5,pi*1.0,pi*0.75) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.05) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.3,pi*1.0) q[2];
u3(pi*0.5,pi*1.8,0) q[3];
ry(pi*0.5) q[3];

// Gate: CNOT**1.1
ry(pi*-0.5) q[5];
u3(pi*0.5,0,pi*0.25) q[4];
u3(pi*0.5,pi*1.0,pi*0.75) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.05) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.3,pi*1.0) q[4];
u3(pi*0.5,pi*1.8,0) q[5];
ry(pi*0.5) q[5];

// Gate: CNOT**1.1
ry(pi*-0.5) q[7];
u3(pi*0.5,0,pi*0.25) q[6];
u3(pi*0.5,pi*1.0,pi*0.75) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.05) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.3,pi*1.0) q[6];
u3(pi*0.5,pi*1.8,0) q[7];
ry(pi*0.5) q[7];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[0];
u3(pi*0.5,pi*1.0,pi*0.75) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.05) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.3,pi*1.0) q[0];
u3(pi*0.5,pi*1.8,0) q[1];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[2];
u3(pi*0.5,pi*1.0,pi*0.75) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.05) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.3,pi*1.0) q[2];
u3(pi*0.5,pi*1.8,0) q[3];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[4];
u3(pi*0.5,pi*1.0,pi*0.75) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.05) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.3,pi*1.0) q[4];
u3(pi*0.5,pi*1.8,0) q[5];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[6];
u3(pi*0.5,pi*1.0,pi*0.75) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.05) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.3,pi*1.0) q[6];
u3(pi*0.5,pi*1.8,0) q[7];

// Gate: CNOT**1.1
ry(pi*-0.5) q[2];
u3(pi*0.5,0,pi*0.25) q[1];
u3(pi*0.5,pi*1.0,pi*0.75) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.05) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.3,pi*1.0) q[1];
u3(pi*0.5,pi*1.8,0) q[2];
ry(pi*0.5) q[2];

// Gate: CNOT**1.1
ry(pi*-0.5) q[4];
u3(pi*0.5,0,pi*0.25) q[3];
u3(pi*0.5,pi*1.0,pi*0.75) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.05) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.3,pi*1.0) q[3];
u3(pi*0.5,pi*1.8,0) q[4];
ry(pi*0.5) q[4];

// Gate: CNOT**1.1
ry(pi*-0.5) q[6];
u3(pi*0.5,0,pi*0.25) q[5];
u3(pi*0.5,pi*1.0,pi*0.75) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.05) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.3,pi*1.0) q[5];
u3(pi*0.5,pi*1.8,0) q[6];
ry(pi*0.5) q[6];

// Gate: CNOT**1.1
ry(pi*-0.5) q[0];
u3(pi*0.5,0,pi*0.25) q[7];
u3(pi*0.5,pi*1.0,pi*0.75) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.05) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.3,pi*1.0) q[7];
u3(pi*0.5,pi*1.8,0) q[0];
ry(pi*0.5) q[0];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[1];
u3(pi*0.5,pi*1.0,pi*0.75) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.05) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.3,pi*1.0) q[1];
u3(pi*0.5,pi*1.8,0) q[2];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[3];
u3(pi*0.5,pi*1.0,pi*0.75) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.05) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.3,pi*1.0) q[3];
u3(pi*0.5,pi*1.8,0) q[4];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[5];
u3(pi*0.5,pi*1.0,pi*0.75) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.05) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.3,pi*1.0) q[5];
u3(pi*0.5,pi*1.8,0) q[6];

// Gate: CZ**1.1
u3(pi*0.5,0,pi*0.25) q[7];
u3(pi*0.5,pi*1.0,pi*0.75) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.05) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.3,pi*1.0) q[7];
u3(pi*0.5,pi*1.8,0) q[0];

rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];

// Gate: ZZ**1.1
rz(pi*1.1) q[0];
rz(pi*1.1) q[1];
u3(pi*0.5,0,pi*0.25) q[0];
u3(pi*0.5,pi*1.0,pi*0.75) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.65,pi*1.0) q[0];
u3(pi*0.5,pi*0.15,0) q[1];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[0];
u3(0,0,pi*0.5) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*1.0,0,pi*0.5) q[0];
u3(pi*1.0,0,pi*1.5) q[1];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[0];
u3(pi*0.5,pi*0.5,pi*1.5) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.4) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*0.5,pi*0.5) q[0];
u3(pi*0.5,pi*0.5,pi*1.5) q[1];

rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];

// Gate: ZZ**1.1
rz(pi*1.1) q[2];
rz(pi*1.1) q[3];
u3(pi*0.5,0,pi*0.25) q[2];
u3(pi*0.5,pi*1.0,pi*0.75) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.65,pi*1.0) q[2];
u3(pi*0.5,pi*0.15,0) q[3];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[2];
u3(0,0,pi*0.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*1.0,0,pi*0.5) q[2];
u3(pi*1.0,0,pi*1.5) q[3];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[2];
u3(pi*0.5,pi*0.5,pi*1.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.5,pi*0.5) q[2];
u3(pi*0.5,pi*0.5,pi*1.5) q[3];

rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];

// Gate: ZZ**1.1
rz(pi*1.1) q[4];
rz(pi*1.1) q[5];
u3(pi*0.5,0,pi*0.25) q[4];
u3(pi*0.5,pi*1.0,pi*0.75) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.65,pi*1.0) q[4];
u3(pi*0.5,pi*0.15,0) q[5];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[4];
u3(0,0,pi*0.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*1.0,0,pi*0.5) q[4];
u3(pi*1.0,0,pi*1.5) q[5];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[4];
u3(pi*0.5,pi*0.5,pi*1.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.5,pi*0.5) q[4];
u3(pi*0.5,pi*0.5,pi*1.5) q[5];

rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];

// Gate: ZZ**1.1
rz(pi*1.1) q[6];
rz(pi*1.1) q[7];
u3(pi*0.5,0,pi*0.25) q[6];
u3(pi*0.5,pi*1.0,pi*0.75) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.65,pi*1.0) q[6];
u3(pi*0.5,pi*0.15,0) q[7];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[6];
u3(0,0,pi*0.5) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*1.0,0,pi*0.5) q[6];
u3(pi*1.0,0,pi*1.5) q[7];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[6];
u3(pi*0.5,pi*0.5,pi*1.5) q[7];
rx(pi*0.5) q[6];
cx q[6],q[7];
rx(pi*0.4) q[6];
ry(pi*0.5) q[7];
cx q[7],q[6];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[6],q[7];
u3(pi*0.5,pi*0.5,pi*0.5) q[6];
u3(pi*0.5,pi*0.5,pi*1.5) q[7];

rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];

// Gate: ZZ**1.1
rz(pi*1.1) q[1];
rz(pi*1.1) q[2];
u3(pi*0.5,0,pi*0.25) q[1];
u3(pi*0.5,pi*1.0,pi*0.75) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.65,pi*1.0) q[1];
u3(pi*0.5,pi*0.15,0) q[2];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[1];
u3(0,0,pi*0.5) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*1.0,0,pi*0.5) q[1];
u3(pi*1.0,0,pi*1.5) q[2];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[1];
u3(pi*0.5,pi*0.5,pi*1.5) q[2];
rx(pi*0.5) q[1];
cx q[1],q[2];
rx(pi*0.4) q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
rx(pi*-0.5) q[2];
rz(pi*0.5) q[2];
cx q[1],q[2];
u3(pi*0.5,pi*0.5,pi*0.5) q[1];
u3(pi*0.5,pi*0.5,pi*1.5) q[2];

rx(pi*0.3501408748) q[1];
ry(pi*0.3501408748) q[1];
rz(pi*0.3501408748) q[1];
rx(pi*0.3501408748) q[2];
ry(pi*0.3501408748) q[2];
rz(pi*0.3501408748) q[2];
rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];

// Gate: ZZ**1.1
rz(pi*1.1) q[3];
rz(pi*1.1) q[4];
u3(pi*0.5,0,pi*0.25) q[3];
u3(pi*0.5,pi*1.0,pi*0.75) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.65,pi*1.0) q[3];
u3(pi*0.5,pi*0.15,0) q[4];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[3];
u3(0,0,pi*0.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*1.0,0,pi*0.5) q[3];
u3(pi*1.0,0,pi*1.5) q[4];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[3];
u3(pi*0.5,pi*0.5,pi*1.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*0.5,pi*0.5) q[3];
u3(pi*0.5,pi*0.5,pi*1.5) q[4];

rx(pi*0.3501408748) q[3];
ry(pi*0.3501408748) q[3];
rz(pi*0.3501408748) q[3];
rx(pi*0.3501408748) q[4];
ry(pi*0.3501408748) q[4];
rz(pi*0.3501408748) q[4];
rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];

// Gate: ZZ**1.1
rz(pi*1.1) q[5];
rz(pi*1.1) q[6];
u3(pi*0.5,0,pi*0.25) q[5];
u3(pi*0.5,pi*1.0,pi*0.75) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.65,pi*1.0) q[5];
u3(pi*0.5,pi*0.15,0) q[6];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[5];
u3(0,0,pi*0.5) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*1.0,0,pi*0.5) q[5];
u3(pi*1.0,0,pi*1.5) q[6];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[5];
u3(pi*0.5,pi*0.5,pi*1.5) q[6];
rx(pi*0.5) q[5];
cx q[5],q[6];
rx(pi*0.4) q[5];
ry(pi*0.5) q[6];
cx q[6],q[5];
rx(pi*-0.5) q[6];
rz(pi*0.5) q[6];
cx q[5],q[6];
u3(pi*0.5,pi*0.5,pi*0.5) q[5];
u3(pi*0.5,pi*0.5,pi*1.5) q[6];

rx(pi*0.3501408748) q[5];
ry(pi*0.3501408748) q[5];
rz(pi*0.3501408748) q[5];
rx(pi*0.3501408748) q[6];
ry(pi*0.3501408748) q[6];
rz(pi*0.3501408748) q[6];
rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];

// Gate: ZZ**1.1
rz(pi*1.1) q[7];
rz(pi*1.1) q[0];
u3(pi*0.5,0,pi*0.25) q[7];
u3(pi*0.5,pi*1.0,pi*0.75) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.65,pi*1.0) q[7];
u3(pi*0.5,pi*0.15,0) q[0];

// Gate: YY**1.1
u3(0,pi*1.0,pi*0.5) q[7];
u3(0,0,pi*0.5) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*1.0,0,pi*0.5) q[7];
u3(pi*1.0,0,pi*1.5) q[0];

// Gate: XX**1.1
u3(pi*0.5,pi*1.5,pi*1.5) q[7];
u3(pi*0.5,pi*0.5,pi*1.5) q[0];
rx(pi*0.5) q[7];
cx q[7],q[0];
rx(pi*0.4) q[7];
ry(pi*0.5) q[0];
cx q[0],q[7];
rx(pi*-0.5) q[0];
rz(pi*0.5) q[0];
cx q[7],q[0];
u3(pi*0.5,pi*0.5,pi*0.5) q[7];
u3(pi*0.5,pi*0.5,pi*1.5) q[0];

rx(pi*0.3501408748) q[7];
ry(pi*0.3501408748) q[7];
rz(pi*0.3501408748) q[7];
rx(pi*0.3501408748) q[0];
ry(pi*0.3501408748) q[0];
rz(pi*0.3501408748) q[0];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

