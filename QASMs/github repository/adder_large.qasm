// quantum ripple-carry adder
// 8-bit adder made out of 2 4-bit adders from adder.qasm
// Cuccaro et al, quant-ph/0410184

OPENQASM 2.0;
include "qelib1.inc";

// add two 8-bit numbers by calling the 4-bit ripple-carry adder
// carry bit on output lives in carry[0]

// A Input = q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7]
// B Input = q[8], q[9], q[10], q[11], q[12], q[13], q[14], q[15]
// Carry In = q[16], q[17]
// Carry Out = ans[8]

qreg q[18];
creg ans[9];

// set input states
x q[0]; // a = 00000001
x q[8];
x q[9];
x q[10];
x q[11];
x q[12];
x q[13];
x q[15]; // b = 10111111

// output should be 11000000 0



// add4 q[0],q[1],q[2],q[3],q[8],q[9],q[10],q[11],q[16],q[17];

//  majority q[16],q[8],q[0];

cx q[0],q[8]; 
cx q[0],q[16]; 
ccx q[16],q[8],q[0];

//  majority q[0],q[9],q[1];

cx q[1],q[9]; 
cx q[1],q[0]; 
ccx q[0],q[9],q[1]; 

//  majority q[1],q[10],q[2];

cx q[2],q[10]; 
cx q[2],q[1]; 
ccx q[1],q[10],q[2];

//  majority q[2],q[11],q[3];

cx q[3],q[11]; 
cx q[3],q[2]; 
ccx q[2],q[11],q[3];

cx q[3],q[17];

//  unmaj q[2],q[11],q[3];

ccx q[2],q[11],q[3]; 
cx q[3],q[2]; 
cx q[2],q[11];

//  unmaj q[1],q[10],q[2];

ccx q[1],q[10],q[2]; 
cx q[2],q[1]; 
cx q[1],q[10];

//  unmaj q[0],q[9],q[1];

ccx q[0],q[9],q[1]; 
cx q[1],q[0]; 
cx q[0],q[9];

//  unmaj q[16],q[8],q[0];

ccx q[16],q[8],q[0]; 
cx q[0],q[16]; 
cx q[16],q[8];


// add4 q[4],q[5],q[6],q[7],q[12],q[13],q[14],q[15],q[17],q[16];

//  majority q[17],q[12],q[4];

cx q[4],q[12]; 
cx q[4],q[17]; 
ccx q[17],q[12],q[4];

//  majority q[4],q[13],q[5];

cx q[5],q[13]; 
cx q[5],q[4]; 
ccx q[4],q[13],q[5]; 

//  majority q[5],q[14],q[6];

cx q[6],q[14]; 
cx q[6],q[5]; 
ccx q[5],q[14],q[6]; 

//  majority q[6],q[15],q[7];

cx q[7],q[15]; 
cx q[7],q[6]; 
ccx q[6],q[15],q[7]; 

cx q[7],q[16];

//  unmaj q[6],q[15],q[7];

ccx q[6],q[15],q[7]; 
cx q[7],q[6]; 
cx q[6],q[15];

//  unmaj q[5],q[14],q[6];

ccx q[5],q[14],q[6]; 
cx q[6],q[5]; 
cx q[5],q[14];

//  unmaj q[4],q[13],q[5];

ccx q[4],q[13],q[5]; 
cx q[5],q[4]; 
cx q[4],q[13];

//  unmaj q[17],q[12],q[4];

ccx q[16],q[12],q[4]; 
cx q[4],q[16]; 
cx q[16],q[12];

measure q[8] -> ans[0];
measure q[9] -> ans[1];
measure q[10] -> ans[2];
measure q[11] -> ans[3];
measure q[12] -> ans[4];
measure q[13] -> ans[5];
measure q[14] -> ans[6];
measure q[15] -> ans[7];
measure q[16] -> ans[8];
