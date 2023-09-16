OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[6];
u2(0,pi) q[15];
u1(-2.8758029) q[15];
u3(pi/2,pi,0) q[15];
u2(0,pi) q[18];
u1(-2.8758029) q[18];
u3(pi/2,pi,0) q[18];
u2(0,pi) q[21];
u1(-2.8758029) q[21];
u3(pi/2,0,0) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
cx q[21],q[18];
u3(pi/2,0,0) q[18];
u3(1.3050066,-pi/2,pi/2) q[21];
cx q[18],q[21];
u3(-pi/2,-pi/2,pi/2) q[18];
u1(pi/2) q[18];
cx q[21],q[18];
u3(pi/2,2.8758029,0) q[18];
u1(-2.8758029) q[18];
u3(pi/2,0,0) q[18];
u3(pi/2,-pi/2,pi/2) q[18];
u3(pi/2,2.8758029,pi) q[21];
u1(-2.8758029) q[21];
u3(pi/2,0,0) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u2(0,pi) q[23];
u1(-2.8758029) q[23];
u3(pi/2,pi,0) q[23];
cx q[21],q[23];
u3(1.3050066,-pi/2,pi/2) q[21];
u3(pi/2,0,0) q[23];
cx q[23],q[21];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[21],q[23];
u3(pi/2,2.8758029,pi) q[21];
u1(-2.8758029) q[21];
u3(pi/2,0,0) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,2.8758029,0) q[23];
u1(-2.8758029) q[23];
u3(pi/2,pi,0) q[23];
swap q[21],q[23];
cx q[18],q[21];
u3(1.3050066,-pi/2,pi/2) q[18];
u3(pi/2,0,0) q[21];
cx q[21],q[18];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[18],q[21];
u3(pi/2,2.8758029,pi) q[18];
u1(-2.8758029) q[18];
u3(pi/2,0,0) q[18];
u3(pi/2,-pi/2,pi/2) q[18];
cx q[18],q[15];
u3(pi/2,0,0) q[15];
u3(1.3050066,-pi/2,pi/2) q[18];
cx q[15],q[18];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[18],q[15];
u3(pi/2,2.8758029,0) q[15];
u1(-2.8758029) q[15];
u3(pi/2,pi,0) q[15];
u3(pi/2,2.8758029,pi) q[18];
u3(-1.985717,-pi/2,pi/2) q[18];
u1(0.4672733) q[18];
u3(pi/2,pi,5.6591587) q[18];
u3(pi/2,2.8758029,0) q[21];
u1(-2.8758029) q[21];
u3(pi/2,0,0) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u2(0,pi) q[24];
u1(-2.8758029) q[24];
u3(pi/2,pi,0) q[24];
cx q[23],q[24];
u3(1.3050066,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.8758029,pi) q[23];
u3(-1.985717,-pi/2,pi/2) q[23];
u1(0.4672733) q[23];
u3(pi/2,0,5.6591587) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
swap q[23],q[21];
cx q[21],q[18];
u3(pi/2,0,0) q[18];
u3(1.103523,-pi/2,pi/2) q[21];
cx q[18],q[21];
u3(-pi/2,-pi/2,pi/2) q[18];
u1(pi/2) q[18];
cx q[21],q[18];
u3(pi/2,3.2983459,0) q[18];
u1(0.4672733) q[18];
u3(pi/2,0,5.6591587) q[18];
u3(pi/2,-pi/2,pi/2) q[18];
u3(pi/2,3.2983459,pi) q[21];
u1(0.4672733) q[21];
u3(pi/2,0,5.6591587) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,2.8758029,0) q[24];
u1(-2.8758029) q[24];
u3(pi/2,pi,0) q[24];
u2(0,pi) q[25];
u1(-2.8758029) q[25];
u3(pi/2,pi,0) q[25];
swap q[24],q[25];
cx q[23],q[24];
u3(1.3050066,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.8758029,pi) q[23];
u3(-1.985717,-pi/2,pi/2) q[23];
u1(0.4672733) q[23];
u3(pi/2,pi,5.6591587) q[23];
cx q[21],q[23];
u3(1.103523,-pi/2,pi/2) q[21];
u3(pi/2,0,0) q[23];
cx q[23],q[21];
u3(-pi/2,-pi/2,pi/2) q[23];
u1(pi/2) q[23];
cx q[21],q[23];
u3(pi/2,3.2983459,pi) q[21];
u1(0.4672733) q[21];
u3(pi/2,0,5.6591587) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,3.2983459,0) q[23];
u1(0.4672733) q[23];
u3(pi/2,pi,5.6591587) q[23];
swap q[21],q[23];
cx q[18],q[21];
u3(1.103523,-pi/2,pi/2) q[18];
u3(pi/2,0,0) q[21];
cx q[21],q[18];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[18],q[21];
u3(pi/2,3.2983459,pi) q[18];
u1(0.4672733) q[18];
u3(pi/2,0,5.6591587) q[18];
u3(pi/2,-pi/2,pi/2) q[18];
swap q[15],q[18];
u3(pi/2,3.2983459,0) q[21];
u1(0.4672733) q[21];
u3(pi/2,0,5.6591587) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
swap q[18],q[21];
u3(pi/2,2.8758029,0) q[24];
u1(-2.8758029) q[24];
u3(pi/2,0,0) q[24];
u3(pi/2,-pi/2,pi/2) q[24];
swap q[23],q[24];
cx q[23],q[21];
u3(pi/2,0,0) q[21];
u3(1.3050066,-pi/2,pi/2) q[23];
cx q[21],q[23];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[23],q[21];
u3(pi/2,2.8758029,0) q[21];
u1(-2.8758029) q[21];
u3(pi/2,0,0) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,2.8758029,pi) q[23];
u1(-2.8758029) q[23];
u3(pi/2,0,0) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
swap q[24],q[25];
cx q[23],q[24];
u3(1.3050066,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.8758029,pi) q[23];
u3(-1.985717,-pi/2,pi/2) q[23];
u1(0.4672733) q[23];
u3(pi/2,pi,5.6591587) q[23];
swap q[21],q[23];
cx q[18],q[21];
u3(1.103523,-pi/2,pi/2) q[18];
u3(pi/2,0,0) q[21];
cx q[21],q[18];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[18],q[21];
u3(pi/2,3.2983459,pi) q[18];
u3(-2.108036,-pi/2,pi/2) q[18];
u3(pi/2,3.2983459,0) q[21];
u1(0.4672733) q[21];
u3(pi/2,0,5.6591587) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,2.8758029,0) q[24];
u1(-2.8758029) q[24];
u3(pi/2,pi,0) q[24];
cx q[23],q[24];
u3(1.3050066,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,2.8758029,pi) q[23];
u3(-1.985717,-pi/2,pi/2) q[23];
u1(0.4672733) q[23];
u3(pi/2,pi,5.6591587) q[23];
swap q[23],q[21];
u3(pi/2,2.8758029,0) q[24];
u3(-1.985717,-pi/2,pi/2) q[24];
u1(0.4672733) q[24];
u3(pi/2,pi,5.6591587) q[24];
cx q[25],q[24];
u3(pi/2,0,0) q[24];
u3(1.103523,-pi/2,pi/2) q[25];
cx q[24],q[25];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[25],q[24];
u3(pi/2,3.2983459,0) q[24];
u1(0.4672733) q[24];
u3(pi/2,pi,5.6591587) q[24];
u3(pi/2,3.2983459,pi) q[25];
u3(-2.108036,-pi/2,pi/2) q[25];
measure q[25] -> c[0];
measure q[18] -> c[2];
swap q[15],q[18];
cx q[18],q[21];
u3(1.103523,-pi/2,pi/2) q[18];
u3(pi/2,0,0) q[21];
cx q[21],q[18];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[18],q[21];
u3(pi/2,3.2983459,pi) q[18];
u3(-2.108036,-pi/2,pi/2) q[18];
measure q[18] -> c[1];
u3(pi/2,3.2983459,0) q[21];
u1(0.4672733) q[21];
u3(pi/2,pi,5.6591587) q[21];
cx q[23],q[21];
u3(pi/2,0,0) q[21];
u3(1.103523,-pi/2,pi/2) q[23];
cx q[21],q[23];
u3(-pi/2,-pi/2,pi/2) q[21];
u1(pi/2) q[21];
cx q[23],q[21];
u3(pi/2,3.2983459,0) q[21];
u1(0.4672733) q[21];
u3(pi/2,0,5.6591587) q[21];
u3(pi/2,-pi/2,pi/2) q[21];
u3(pi/2,3.2983459,pi) q[23];
u1(0.4672733) q[23];
u3(pi/2,0,5.6591587) q[23];
u3(pi/2,-pi/2,pi/2) q[23];
cx q[23],q[24];
u3(1.103523,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,3.2983459,pi) q[23];
u3(-2.108036,-pi/2,pi/2) q[23];
u3(pi/2,3.2983459,0) q[24];
u1(0.4672733) q[24];
u3(pi/2,pi,5.6591587) q[24];
measure q[23] -> c[4];
swap q[21],q[23];
cx q[23],q[24];
u3(1.103523,-pi/2,pi/2) q[23];
u3(pi/2,0,0) q[24];
cx q[24],q[23];
u3(-pi/2,-pi/2,pi/2) q[24];
u1(pi/2) q[24];
cx q[23],q[24];
u3(pi/2,3.2983459,pi) q[23];
u3(-2.108036,-pi/2,pi/2) q[23];
measure q[23] -> c[3];
u3(pi/2,3.2983459,0) q[24];
u3(-2.108036,-pi/2,pi/2) q[24];
measure q[24] -> c[5];
