OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u2(0,pi)  q[8];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u2(0,pi)  q[8];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[8];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
cx q[2], q[3];
u2(0,pi)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u2(0,pi)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u2(0,pi)  q[8];
cx q[2], q[3];
u2(0,pi)  q[8];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[2];
u2(0,pi)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u2(0,pi)  q[8];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
u3(pi,pi/2,pi/2)  q[8];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
cx q[2], q[3];
u2(0,pi)  q[8];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
u3(pi,pi/2,pi/2)  q[8];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[8];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[2];
u2(0,pi)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u2(0,pi)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(2.15174600000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
cx q[2], q[3];
u2(0,pi)  q[8];
u3(pi,pi/2,pi/2)  q[3];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
cx q[5], q[8];
u1(1.99548200000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[5];
cx q[5], q[8];
u1(1.99548200000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
u3(pi,pi/2,pi/2)  q[5];
u2(0,pi)  q[8];
cx q[3], q[5];
cx q[5], q[8];
u1(4.33258200000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(4.33258200000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u3(pi,pi/2,pi/2)  q[3];
u2(0,pi)  q[3];
cx q[3], q[5];
u1(0.461922000000000)  q[5];
cx q[3], q[5];
u2(0,pi)  q[5];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[5];
u3(pi,pi/2,pi/2)  q[3];
cx q[3], q[5];
u1(0.461922000000000)  q[5];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[5];
u3(pi,pi/2,pi/2)  q[3];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(1.08697600000000)  q[8];
cx q[5], q[8];
u2(0,pi)  q[8];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[8];
cx q[2], q[3];
u2(0,pi)  q[2];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
cx q[5], q[8];
u1(1.08697600000000)  q[8];
cx q[5], q[8];
u3(pi,pi/2,pi/2)  q[8];
cx q[3], q[5];
u2(0,pi)  q[5];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[2];
u2(0,pi)  q[2];
cx q[2], q[3];
cx q[3], q[5];
u1(2.25839400000000)  q[5];
cx q[3], q[5];
u2(0,pi)  q[5];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[5];
u2(0,pi)  q[2];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
cx q[3], q[5];
u1(2.25839400000000)  q[5];
cx q[3], q[5];
u3(pi,pi/2,pi/2)  q[5];
cx q[2], q[3];
u2(0,pi)  q[3];
u3(pi,pi/2,pi/2)  q[2];
u2(0,pi)  q[2];
cx q[2], q[3];
u1(1.22853100000000)  q[3];
cx q[2], q[3];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
cx q[2], q[3];
u1(1.22853100000000)  q[3];
cx q[2], q[3];
u3(pi,pi/2,pi/2)  q[3];
u3(pi,pi/2,pi/2)  q[2];
measure q[8] -> c[0];
measure q[5] -> c[1];
measure q[3] -> c[2];
measure q[2] -> c[3];