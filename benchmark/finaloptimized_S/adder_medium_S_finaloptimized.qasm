OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg ans[5];
u3(3.1415926536, -1.5707963268, 1.5707963268) q[6];
u3(3.1415926536, -1.5707963268, 1.5707963268) q[7];
u3(3.1415926536, -1.5707963268, 1.5707963268) q[8];
cx q[1],q[5];
u3(3.1415926536, -1.5707963268, 1.5707963268) q[1];
cx q[1],q[0];
u2(5.103507032341698e-12, -3.14159265358469) q[1];
cx q[5],q[1];
u1(-0.7853981634) q[1];
cx q[0],q[1];
u1(0.7853981634) q[1];
cx q[5],q[1];
u1(-0.7853981634) q[1];
cx q[0],q[1];
u1(0.7853981634) q[5];
u3(1.5707963268000003, 5.103528710748151e-12, -2.35619449018469) q[1];
cx q[0],q[5];
u1(0.7853981634) q[0];
u1(-0.7853981634) q[5];
cx q[0],q[5];
cx q[2],q[6];
cx q[2],q[1];
u2(5.103507032341698e-12, -3.14159265358469) q[2];
cx q[6],q[2];
u1(-0.7853981634) q[2];
cx q[1],q[2];
u1(0.7853981634) q[2];
cx q[6],q[2];
u1(-0.7853981634) q[2];
cx q[1],q[2];
u1(0.7853981634) q[6];
u3(1.5707963268000003, 5.103528710748151e-12, -2.35619449018469) q[2];
cx q[1],q[6];
u1(0.7853981634) q[1];
u1(-0.7853981634) q[6];
cx q[1],q[6];
cx q[3],q[7];
cx q[3],q[2];
u2(5.103507032341698e-12, -3.14159265358469) q[3];
cx q[7],q[3];
u1(-0.7853981634) q[3];
cx q[2],q[3];
u1(0.7853981634) q[3];
cx q[7],q[3];
u1(-0.7853981634) q[3];
cx q[2],q[3];
u1(0.7853981634) q[7];
u3(1.5707963268000003, 5.103528710748151e-12, -2.35619449018469) q[3];
cx q[2],q[7];
u1(0.7853981634) q[2];
u1(-0.7853981634) q[7];
cx q[2],q[7];
cx q[4],q[8];
cx q[4],q[3];
u2(5.103507032341698e-12, -3.14159265358469) q[4];
cx q[8],q[4];
u1(-0.7853981634) q[4];
cx q[3],q[4];
u1(0.7853981634) q[4];
cx q[8],q[4];
u1(-0.7853981634) q[4];
cx q[3],q[4];
u1(0.7853981634) q[8];
u2(5.103473199596919e-12, -2.35619449018469) q[4];
cx q[3],q[8];
u1(0.7853981634) q[3];
u1(-0.7853981634) q[8];
cx q[3],q[8];
cx q[4],q[9];
u2(5.103507032341698e-12, -3.14159265358469) q[4];
cx q[8],q[4];
u1(-0.7853981634) q[4];
cx q[3],q[4];
u1(0.7853981634) q[4];
cx q[8],q[4];
u1(-0.7853981634) q[4];
cx q[3],q[4];
u1(0.7853981634) q[8];
u2(5.103473199596919e-12, -2.35619449018469) q[4];
cx q[3],q[8];
u1(0.7853981634) q[3];
u1(-0.7853981634) q[8];
cx q[4],q[3];
cx q[4],q[8];
u2(5.103507032341698e-12, -3.14159265358469) q[3];
cx q[7],q[3];
u1(-0.7853981634) q[3];
cx q[2],q[3];
u1(0.7853981634) q[3];
cx q[7],q[3];
u1(-0.7853981634) q[3];
cx q[2],q[3];
u1(0.7853981634) q[7];
u2(5.103473199596919e-12, -2.35619449018469) q[3];
cx q[2],q[7];
u1(0.7853981634) q[2];
u1(-0.7853981634) q[7];
cx q[3],q[2];
cx q[3],q[7];
u2(5.103507032341698e-12, -3.14159265358469) q[2];
cx q[6],q[2];
u1(-0.7853981634) q[2];
cx q[1],q[2];
u1(0.7853981634) q[2];
cx q[6],q[2];
u1(-0.7853981634) q[2];
cx q[1],q[2];
u1(0.7853981634) q[6];
u2(5.103473199596919e-12, -2.35619449018469) q[2];
cx q[1],q[6];
u1(0.7853981634) q[1];
u1(-0.7853981634) q[6];
cx q[2],q[1];
cx q[2],q[6];
u2(5.103507032341698e-12, -3.14159265358469) q[1];
cx q[5],q[1];
u1(-0.7853981634) q[1];
cx q[0],q[1];
u1(0.7853981634) q[1];
cx q[5],q[1];
u1(-0.7853981634) q[1];
cx q[0],q[1];
u1(0.7853981634) q[5];
u2(5.103473199596919e-12, -2.35619449018469) q[1];
cx q[0],q[5];
u1(0.7853981634) q[0];
u1(-0.7853981634) q[5];
cx q[1],q[0];
cx q[1],q[5];
measure q[5] -> ans[0];
measure q[6] -> ans[1];
measure q[7] -> ans[2];
measure q[8] -> ans[3];
measure q[9] -> ans[4];
