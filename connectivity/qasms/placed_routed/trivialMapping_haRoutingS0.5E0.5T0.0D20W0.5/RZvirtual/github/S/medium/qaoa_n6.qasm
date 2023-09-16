OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[6];
u2(0,pi)  q[0];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[5];
u1(-2.87580288904836)  q[0];
u1(-2.87580288904836)  q[1];
u1(-2.87580288904836)  q[2];
u1(-2.87580288904836)  q[3];
u1(-2.87580288904836)  q[4];
u1(-2.87580288904836)  q[5];
u3(pi/2,0,0)  q[0];
u3(pi/2,pi,0)  q[1];
u3(pi/2,pi,0)  q[2];
u3(pi/2,pi,0)  q[3];
u3(pi/2,pi,0)  q[4];
u3(pi/2,pi,0)  q[5];
u3(pi/2,-pi/2,pi/2)  q[0];
swap q[5], q[3];
cx q[0], q[1];
u3(1.30500656225346,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[1];
cx q[1], q[0];
u3(-pi/2,-pi/2,pi/2)  q[1];
u1(pi/2)  q[1];
cx q[0], q[1];
u3(pi/2,2.8758029,pi)  q[0];
u3(pi/2,2.8758029,0)  q[1];
u1(-2.87580288904836)  q[0];
u1(-2.87580288904836)  q[1];
u3(pi/2,0,0)  q[0];
u3(pi/2,0,0)  q[1];
u3(pi/2,-pi/2,pi/2)  q[0];
u3(pi/2,-pi/2,pi/2)  q[1];
swap q[2], q[1];
cx q[0], q[1];
u3(1.30500656225346,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[1];
cx q[1], q[0];
u3(-pi/2,-pi/2,pi/2)  q[1];
u1(pi/2)  q[1];
cx q[0], q[1];
u3(pi/2,2.8758029,pi)  q[0];
u3(pi/2,2.8758029,0)  q[1];
u1(-2.87580288904836)  q[0];
u1(-2.87580288904836)  q[1];
u3(pi/2,0,0)  q[0];
u3(pi/2,pi,0)  q[1];
u3(pi/2,-pi/2,pi/2)  q[0];
cx q[2], q[1];
u3(1.30500656225346,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[1];
swap q[3], q[2];
swap q[2], q[1];
cx q[0], q[1];
cx q[2], q[3];
u3(1.30500656225346,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[2];
cx q[1], q[0];
u1(pi/2)  q[2];
u3(-pi/2,-pi/2,pi/2)  q[1];
cx q[3], q[2];
u1(pi/2)  q[1];
u3(pi/2,2.8758029,pi)  q[3];
u3(pi/2,2.8758029,0)  q[2];
cx q[0], q[1];
u1(-2.87580288904836)  q[3];
u1(-2.87580288904836)  q[2];
u3(pi/2,2.8758029,pi)  q[0];
u3(pi/2,2.8758029,0)  q[1];
u3(pi/2,0,0)  q[3];
u3(pi/2,0,0)  q[2];
u3(-1.98571698566423,-pi/2,pi/2)  q[0];
u1(-2.87580288904836)  q[1];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[2];
u1(0.467273296105291)  q[0];
u3(pi/2,pi,0)  q[1];
cx q[3], q[5];
u3(pi/2,0,5.6591587)  q[0];
swap q[2], q[1];
u3(1.30500656225346,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[5];
cx q[1], q[4];
u3(pi/2,-pi/2,pi/2)  q[0];
cx q[5], q[3];
u3(1.30500656225346,-pi/2,pi/2)  q[1];
u3(pi/2,0,0)  q[4];
u3(-pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
u1(pi/2)  q[5];
u3(-pi/2,-pi/2,pi/2)  q[4];
cx q[3], q[5];
u1(pi/2)  q[4];
u3(pi/2,2.8758029,pi)  q[3];
u3(pi/2,2.8758029,0)  q[5];
cx q[1], q[4];
u3(-1.98571698566423,-pi/2,pi/2)  q[3];
u1(-2.87580288904836)  q[5];
u3(pi/2,2.8758029,pi)  q[1];
u3(pi/2,2.8758029,0)  q[4];
u1(0.467273296105291)  q[3];
u3(pi/2,pi,0)  q[5];
u3(-1.98571698566423,-pi/2,pi/2)  q[1];
u1(-2.87580288904836)  q[4];
u3(pi/2,pi,5.6591587)  q[3];
u1(0.467273296105291)  q[1];
u3(pi/2,0,0)  q[4];
u3(pi/2,pi,5.6591587)  q[1];
u3(pi/2,-pi/2,pi/2)  q[4];
swap q[0], q[1];
swap q[1], q[2];
cx q[2], q[3];
swap q[5], q[3];
swap q[3], q[2];
u3(pi/2,0,0)  q[5];
cx q[1], q[2];
u3(1.10352303068961,-pi/2,pi/2)  q[3];
cx q[4], q[1];
cx q[5], q[3];
cx q[1], q[2];
u3(-pi/2,-pi/2,pi/2)  q[5];
cx q[4], q[1];
u3(pi/2,0,0)  q[2];
u1(pi/2)  q[5];
u3(1.30500656225346,-pi/2,pi/2)  q[4];
cx q[3], q[5];
cx q[1], q[4];
u3(pi/2,3.2983459,pi)  q[3];
u3(pi/2,3.2983459,0)  q[5];
cx q[2], q[1];
u1(0.467273296105291)  q[3];
u1(0.467273296105291)  q[5];
cx q[1], q[4];
u3(pi/2,0,5.6591587)  q[3];
u3(pi/2,0,5.6591587)  q[5];
cx q[2], q[1];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[5];
u3(-pi/2,-pi/2,pi/2)  q[2];
u1(pi/2)  q[2];
cx q[1], q[2];
cx q[4], q[1];
cx q[1], q[2];
cx q[4], q[1];
u3(pi/2,2.8758029,0)  q[2];
u3(pi/2,2.8758029,pi)  q[4];
u1(-2.87580288904836)  q[2];
u1(-2.87580288904836)  q[4];
u3(pi/2,0,0)  q[2];
u3(pi/2,0,0)  q[4];
u3(pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,-pi/2,pi/2)  q[4];
cx q[4], q[1];
swap q[0], q[1];
u3(1.30500656225346,-pi/2,pi/2)  q[4];
swap q[1], q[2];
u3(pi/2,0,0)  q[0];
cx q[3], q[2];
swap q[0], q[1];
u3(1.10352303068961,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
cx q[1], q[4];
cx q[2], q[3];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(-pi/2,-pi/2,pi/2)  q[2];
u1(pi/2)  q[1];
u1(pi/2)  q[2];
cx q[4], q[1];
cx q[3], q[2];
u3(pi/2,2.8758029,pi)  q[4];
u3(pi/2,2.8758029,0)  q[1];
u3(pi/2,3.2983459,pi)  q[3];
u3(pi/2,3.2983459,0)  q[2];
u3(-1.98571698566423,-pi/2,pi/2)  q[4];
u1(-2.87580288904836)  q[1];
u1(0.467273296105291)  q[3];
u1(0.467273296105291)  q[2];
u1(0.467273296105291)  q[4];
u3(pi/2,pi,0)  q[1];
u3(pi/2,0,5.6591587)  q[3];
u3(pi/2,pi,5.6591587)  q[2];
u3(pi/2,pi,5.6591587)  q[4];
cx q[0], q[1];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(1.30500656225346,-pi/2,pi/2)  q[0];
u3(pi/2,0,0)  q[1];
swap q[5], q[3];
cx q[1], q[0];
cx q[3], q[2];
u3(-pi/2,-pi/2,pi/2)  q[1];
u3(1.10352303068961,-pi/2,pi/2)  q[3];
u3(pi/2,0,0)  q[2];
u1(pi/2)  q[1];
cx q[2], q[3];
cx q[0], q[1];
u3(-pi/2,-pi/2,pi/2)  q[2];
u3(pi/2,2.8758029,pi)  q[0];
u3(pi/2,2.8758029,0)  q[1];
u1(pi/2)  q[2];
u3(-1.98571698566423,-pi/2,pi/2)  q[0];
u3(-1.98571698566423,-pi/2,pi/2)  q[1];
cx q[3], q[2];
u1(0.467273296105291)  q[0];
u1(0.467273296105291)  q[1];
u3(pi/2,3.2983459,pi)  q[3];
u3(pi/2,3.2983459,0)  q[2];
u3(pi/2,pi,5.6591587)  q[0];
u3(pi/2,pi,5.6591587)  q[1];
u1(0.467273296105291)  q[3];
u1(0.467273296105291)  q[2];
u3(pi/2,0,5.6591587)  q[3];
u3(pi/2,0,5.6591587)  q[2];
u3(pi/2,-pi/2,pi/2)  q[3];
u3(pi/2,-pi/2,pi/2)  q[2];
swap q[2], q[1];
cx q[1], q[4];
swap q[3], q[2];
cx q[5], q[3];
swap q[0], q[1];
u3(pi/2,0,0)  q[4];
cx q[2], q[1];
u3(1.10352303068961,-pi/2,pi/2)  q[0];
u3(1.10352303068961,-pi/2,pi/2)  q[5];
u3(pi/2,0,0)  q[3];
u3(1.10352303068961,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[1];
cx q[3], q[5];
cx q[1], q[2];
u3(-pi/2,-pi/2,pi/2)  q[3];
swap q[4], q[1];
u1(pi/2)  q[3];
cx q[1], q[0];
u3(-pi/2,-pi/2,pi/2)  q[4];
cx q[5], q[3];
u3(-pi/2,-pi/2,pi/2)  q[1];
u1(pi/2)  q[4];
u3(pi/2,3.2983459,pi)  q[5];
u3(pi/2,3.2983459,0)  q[3];
u1(pi/2)  q[1];
u3(-2.10803596251661,-pi/2,pi/2)  q[5];
u1(0.467273296105291)  q[3];
cx q[0], q[1];
u3(pi/2,pi,5.6591587)  q[3];
swap q[2], q[1];
u3(pi/2,3.2983459,pi)  q[0];
cx q[1], q[4];
u3(pi/2,3.2983459,0)  q[2];
u3(-2.10803596251661,-pi/2,pi/2)  q[0];
u3(pi/2,3.2983459,pi)  q[1];
u3(pi/2,3.2983459,0)  q[4];
u1(0.467273296105291)  q[2];
u3(-2.10803596251661,-pi/2,pi/2)  q[1];
u1(0.467273296105291)  q[4];
u3(pi/2,0,5.6591587)  q[2];
u3(pi/2,pi,5.6591587)  q[4];
u3(pi/2,-pi/2,pi/2)  q[2];
swap q[4], q[1];
cx q[2], q[1];
u3(pi/2,0,0)  q[1];
u3(1.10352303068961,-pi/2,pi/2)  q[2];
cx q[1], q[2];
u3(-pi/2,-pi/2,pi/2)  q[1];
u1(pi/2)  q[1];
cx q[2], q[1];
u3(pi/2,3.2983459,0)  q[1];
u3(pi/2,3.2983459,pi)  q[2];
u1(0.467273296105291)  q[1];
u1(0.467273296105291)  q[2];
u3(pi/2,0,5.6591587)  q[1];
u3(pi/2,0,5.6591587)  q[2];
u3(pi/2,-pi/2,pi/2)  q[1];
u3(pi/2,-pi/2,pi/2)  q[2];
cx q[2], q[3];
u3(1.10352303068961,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[3];
cx q[3], q[2];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[3];
cx q[2], q[3];
u3(pi/2,3.2983459,pi)  q[2];
u3(pi/2,3.2983459,0)  q[3];
u3(-2.10803596251661,-pi/2,pi/2)  q[2];
u1(0.467273296105291)  q[3];
u3(pi/2,pi,5.6591587)  q[3];
swap q[1], q[2];
cx q[2], q[3];
u3(1.10352303068961,-pi/2,pi/2)  q[2];
u3(pi/2,0,0)  q[3];
cx q[3], q[2];
u3(-pi/2,-pi/2,pi/2)  q[3];
u1(pi/2)  q[3];
cx q[2], q[3];
u3(pi/2,3.2983459,pi)  q[2];
u3(pi/2,3.2983459,0)  q[3];
u3(-2.10803596251661,-pi/2,pi/2)  q[2];
u3(-2.10803596251661,-pi/2,pi/2)  q[3];
measure q[5] -> c[0];
measure q[4] -> c[1];
measure q[0] -> c[2];
measure q[2] -> c[3];
measure q[1] -> c[4];
measure q[3] -> c[5];
