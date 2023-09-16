// quantum ripple-carry adder from Cuccaro et al, quant-ph/0410184
OPENQASM 2.0;
include "qelib1.inc";
gate majority a,b,c 
{ 
  cx c,b; 
  cx c,a; 
  ccx a,b,c; 
}
gate unmaj a,b,c 
{ 
  ccx a,b,c; 
  cx c,a; 
  cx a,b; 
}
qreg q[10];
creg c[5];
// set input states
x q[0]; // a = 0001
x q[4];    // b = 1111
x q[5];    // b = 1111
x q[6];    // b = 1111
x q[7];    // b = 1111
// add a to b, storing result in b
majority q[9],q[4],q[0];
majority q[0],q[4],q[1];
majority q[1],q[5],q[2];
majority q[2],q[6],q[3];
cx q[3],q[8];
unmaj q[2],q[7],q[3];
unmaj q[1],q[6],q[2];
unmaj q[0],q[5],q[1];
unmaj q[9],q[4],q[0];
measure q[4] -> c[0];
measure q[5] -> c[1];
measure q[6] -> c[2];
measure q[7] -> c[3];
measure q[8] -> c[4];
