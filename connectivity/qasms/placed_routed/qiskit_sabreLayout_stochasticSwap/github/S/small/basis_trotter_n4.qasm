OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[4];
u1(pi) q[12];
u1(pi/4) q[12];
u1(pi) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(pi) q[14];
u1(-pi/4) q[14];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(-0.1277154) q[13];
cx q[14],q[13];
u1(0.1277154) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u1(0.1774717) q[14];
u1(-pi/4) q[14];
u1(pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(0.1277154) q[15];
cx q[12],q[15];
u1(-0.1277154) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(0.35285658) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
u1(0.1774717) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(0.080156964) q[13];
cx q[14],q[13];
u1(-0.080156964) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u3(pi/2,pi,5*pi/4) q[14];
u1(-pi/4) q[15];
u1(0.35285658) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-0.080156964) q[15];
cx q[12],q[15];
u1(0.080156964) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u3(pi/2,pi,pi) q[12];
u1(pi/4) q[13];
u3(pi/2,0,7*pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5359923,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.8921868,pi) q[13];
u3(pi/2,5.4629831,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,3*pi/2) q[13];
u3(pi/2,pi,3*pi/2) q[14];
u1(-pi/4) q[15];
u3(pi/2,0,pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.4949589,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,6.2073479,0) q[12];
u3(pi/2,1.4949589,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5194208,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.0902171,pi) q[12];
u3(pi/2,4.6610135,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u3(pi/2,pi,3*pi/2) q[12];
u3(pi/2,0,0) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5194208,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.0902171,pi) q[13];
u3(pi/2,4.6610135,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,3*pi/2) q[13];
u1(-0.075837404) q[14];
u1(pi/4) q[14];
u3(pi/2,0,0) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5194208,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,4.6610135,0) q[12];
u3(pi/2,3.0902171,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5194208,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.0902171,pi) q[12];
u3(pi/2,4.6610135,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u1(-0.034803997) q[12];
u1(pi) q[12];
u1(-pi/4) q[12];
u1(-0.075837404) q[13];
u1(pi) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-1.4923556) q[14];
cx q[13],q[14];
u1(1.4923556) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u3(pi/2,0,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(-0.034803997) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(1.4923556) q[12];
cx q[15],q[12];
u1(-1.4923556) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u3(pi/2,0,4.7002165) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u1(-pi/4) q[13];
u3(pi/2,pi,pi) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5493484,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,6.2617374,0) q[13];
u3(pi/2,4.690941,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,pi,3.3993671) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,pi,3.3993671) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(pi/4) q[15];
u3(pi/2,pi,6.2710128) q[15];
cx q[12],q[15];
u3(1.5608563,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,4.7146214,pi) q[12];
u3(pi/2,3.1438251,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,4.9701634) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5561952,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.4692157,0) q[12];
u3(pi/2,6.040012,0) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u3(pi/2,pi,3.3993671) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,pi,4.9701634) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5561952,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,4.4692157,0) q[13];
u3(pi/2,6.040012,0) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,pi,3.3993671) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u1(-0.0099400623) q[14];
u1(pi) q[14];
u1(-pi/4) q[14];
u3(pi/2,pi,4.9701634) q[15];
cx q[12],q[15];
u3(1.5561952,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,6.040012,0) q[12];
u3(pi/2,4.4692157,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,4.9701634) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5561952,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.4692157,0) q[12];
u3(pi/2,6.040012,0) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u1(-0.021447943) q[12];
u1(pi/4) q[12];
u1(-0.0099400623) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(0.78815185) q[13];
cx q[14],q[13];
u1(-0.78815185) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u3(pi/2,0,6.2826742) q[14];
u1(-0.021447943) q[15];
u1(pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-0.78815185) q[15];
cx q[12],q[15];
u1(0.78815185) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u3(pi/2,pi,3.141993) q[12];
u1(pi/4) q[13];
u3(pi/2,pi,4.7118779) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5701477,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,4.7122514,0) q[13];
u3(pi/2,3.1414551,pi) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,0,4.7103336) q[13];
u3(pi/2,0,4.7103336) q[14];
u1(-pi/4) q[15];
u3(pi/2,0,4.7127893) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5700679,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,6.2820565,0) q[12];
u3(pi/2,4.7112602,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,6.2811299) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5701089,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.1443354,pi) q[12];
u3(pi/2,4.7151318,pi) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u3(pi/2,0,4.7103336) q[12];
u3(pi/2,0,6.2811299) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5701089,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.1443354,pi) q[13];
u3(pi/2,4.7151318,pi) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,0,4.7103336) q[13];
u1(-0.00072845837) q[14];
u1(pi) q[14];
u1(pi/4) q[14];
u3(pi/2,0,6.2811299) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5701089,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,4.7151318,pi) q[12];
u3(pi/2,3.1443354,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,6.2811299) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5701089,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.1443354,pi) q[12];
u3(pi/2,4.7151318,pi) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u1(-0.00064866129) q[12];
u1(-pi/4) q[12];
u1(-0.00072845837) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-0.65321283) q[14];
cx q[13],q[14];
u1(0.65321283) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u1(pi) q[14];
u1(pi/4) q[14];
u1(-0.00064866129) q[15];
u1(pi) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(0.65321283) q[12];
cx q[15],q[12];
u1(-0.65321283) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi) q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
u1(pi) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(0.1277154) q[14];
cx q[13],q[14];
u1(-0.1277154) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u1(0.35285658) q[14];
u1(pi/4) q[14];
u1(pi/4) q[15];
u1(pi) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(-0.1277154) q[12];
cx q[15],q[12];
u1(0.1277154) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(0.1774717) q[12];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
u1(0.35285658) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-0.080156964) q[14];
cx q[13],q[14];
u1(0.080156964) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u3(pi/2,0,pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(pi/4) q[15];
u1(0.1774717) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(0.080156964) q[12];
cx q[15],q[12];
u1(-0.080156964) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u3(pi/2,0,7*pi/4) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u1(-pi/4) q[13];
u3(pi/2,pi,pi) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.4949589,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,6.2073479,0) q[13];
u3(pi/2,1.4949589,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(pi/4) q[15];
u3(pi/2,pi,5*pi/4) q[15];
cx q[12],q[15];
u3(1.5359923,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,3.8921868,pi) q[12];
u3(pi/2,5.4629831,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,3*pi/2) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5194208,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.6610135,0) q[12];
u3(pi/2,3.0902171,pi) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,pi,3*pi/2) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5194208,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,4.6610135,0) q[13];
u3(pi/2,3.0902171,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u1(-0.034803997) q[14];
u1(-pi/4) q[14];
u3(pi/2,pi,3*pi/2) q[15];
cx q[12],q[15];
u3(1.5194208,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,3.0902171,pi) q[12];
u3(pi/2,4.6610135,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,3*pi/2) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5194208,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.6610135,0) q[12];
u3(pi/2,3.0902171,pi) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u1(-0.075837404) q[12];
u1(pi) q[12];
u1(pi/4) q[12];
u1(-0.034803997) q[13];
u1(pi) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(1.4923556) q[13];
cx q[14],q[13];
u1(-1.4923556) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u3(pi/2,pi,6.2710128) q[14];
u1(-0.075837404) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-1.4923556) q[15];
cx q[12],q[15];
u1(1.4923556) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u3(pi/2,pi,pi) q[12];
u1(pi/4) q[13];
u3(pi/2,0,4.7002165) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5608563,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,4.7146214,pi) q[13];
u3(pi/2,3.1438251,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,4.9701634) q[13];
u3(pi/2,pi,4.9701634) q[14];
u1(-pi/4) q[15];
u3(pi/2,0,3*pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5493484,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,6.2617374,0) q[12];
u3(pi/2,4.690941,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,pi,3.3993671) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5561952,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,6.040012,0) q[12];
u3(pi/2,4.4692157,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u3(pi/2,pi,4.9701634) q[12];
u3(pi/2,pi,3.3993671) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5561952,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,6.040012,0) q[13];
u3(pi/2,4.4692157,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,4.9701634) q[13];
u1(-0.021447943) q[14];
u1(pi) q[14];
u1(pi/4) q[14];
u3(pi/2,pi,3.3993671) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5561952,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,4.4692157,0) q[12];
u3(pi/2,6.040012,0) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,pi,3.3993671) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5561952,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,6.040012,0) q[12];
u3(pi/2,4.4692157,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u1(-0.0099400623) q[12];
u1(-pi/4) q[12];
u1(-0.021447943) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-0.78815185) q[14];
cx q[13],q[14];
u1(0.78815185) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u3(pi/2,0,4.7127893) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(-0.0099400623) q[15];
u1(pi) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(0.78815185) q[12];
cx q[15],q[12];
u1(-0.78815185) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u3(pi/2,pi,4.7118779) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u1(-pi/4) q[13];
u3(pi/2,pi,3.141993) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5700679,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,6.2820565,0) q[13];
u3(pi/2,4.7112602,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,0,6.2811299) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,0,6.2811299) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(pi/4) q[15];
u3(pi/2,0,6.2826742) q[15];
cx q[12],q[15];
u3(1.5701477,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,4.7122514,0) q[12];
u3(pi/2,3.1414551,pi) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,0,4.7103336) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5701089,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.7151318,pi) q[12];
u3(pi/2,3.1443354,pi) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u3(pi/2,0,6.2811299) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,0,4.7103336) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5701089,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,4.7151318,pi) q[13];
u3(pi/2,3.1443354,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,0,6.2811299) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u1(-0.00064866129) q[14];
u1(pi) q[14];
u1(-pi/4) q[14];
u3(pi/2,0,4.7103336) q[15];
cx q[12],q[15];
u3(1.5701089,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,3.1443354,pi) q[12];
u3(pi/2,4.7151318,pi) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,0,4.7103336) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5701089,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.7151318,pi) q[12];
u3(pi/2,3.1443354,pi) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u1(-0.00072845837) q[12];
u1(pi/4) q[12];
u1(-0.00064866129) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(0.65321283) q[13];
cx q[14],q[13];
u1(-0.65321283) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u1(pi) q[14];
u1(-pi/4) q[14];
u1(-0.00072845837) q[15];
u1(pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-0.65321283) q[15];
cx q[12],q[15];
u1(0.65321283) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(pi) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
u1(pi) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(-0.1277154) q[13];
cx q[14],q[13];
u1(0.1277154) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u1(0.1774717) q[14];
u1(-pi/4) q[14];
u1(-pi/4) q[15];
u1(pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(0.1277154) q[15];
cx q[12],q[15];
u1(-0.1277154) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(0.35285658) q[12];
u1(pi/4) q[12];
u1(pi/4) q[13];
u1(0.1774717) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(0.080156964) q[13];
cx q[14],q[13];
u1(-0.080156964) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u3(pi/2,pi,5*pi/4) q[14];
u1(-pi/4) q[15];
u1(0.35285658) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-0.080156964) q[15];
cx q[12],q[15];
u1(0.080156964) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u3(pi/2,pi,pi) q[12];
u1(pi/4) q[13];
u3(pi/2,0,7*pi/4) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5359923,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.8921868,pi) q[13];
u3(pi/2,5.4629831,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,3*pi/2) q[13];
u3(pi/2,pi,3*pi/2) q[14];
u1(-pi/4) q[15];
u3(pi/2,0,pi/2) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.4949589,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,6.2073479,0) q[12];
u3(pi/2,1.4949589,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5194208,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.0902171,pi) q[12];
u3(pi/2,4.6610135,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u3(pi/2,pi,3*pi/2) q[12];
u3(pi/2,0,0) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5194208,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.0902171,pi) q[13];
u3(pi/2,4.6610135,0) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,pi,3*pi/2) q[13];
u1(-0.075837404) q[14];
u1(pi/4) q[14];
u3(pi/2,0,0) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5194208,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,4.6610135,0) q[12];
u3(pi/2,3.0902171,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5194208,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.0902171,pi) q[12];
u3(pi/2,4.6610135,0) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u1(-0.034803997) q[12];
u1(pi) q[12];
u1(-pi/4) q[12];
u1(-0.075837404) q[13];
u1(pi) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-1.4923556) q[14];
cx q[13],q[14];
u1(1.4923556) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u3(pi/2,0,3*pi/2) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(-0.034803997) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(1.4923556) q[12];
cx q[15],q[12];
u1(-1.4923556) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u3(pi/2,0,4.7002165) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u1(-pi/4) q[13];
u3(pi/2,pi,pi) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5493484,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,6.2617374,0) q[13];
u3(pi/2,4.690941,pi) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,pi,3.3993671) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u3(pi/2,pi,3.3993671) q[14];
u3(pi/2,-pi/2,pi/2) q[14];
u1(pi/4) q[15];
u3(pi/2,pi,6.2710128) q[15];
cx q[12],q[15];
u3(1.5608563,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,4.7146214,pi) q[12];
u3(pi/2,3.1438251,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,4.9701634) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5561952,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.4692157,0) q[12];
u3(pi/2,6.040012,0) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u3(pi/2,pi,3.3993671) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
u3(pi/2,pi,4.9701634) q[13];
cx q[14],q[13];
u3(pi/2,0,0) q[13];
u3(1.5561952,-pi/2,pi/2) q[14];
cx q[13],q[14];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[14],q[13];
u3(pi/2,4.4692157,0) q[13];
u3(pi/2,6.040012,0) q[14];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u3(pi/2,pi,3.3993671) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
u1(-0.0099400623) q[14];
u1(pi) q[14];
u1(-pi/4) q[14];
u3(pi/2,pi,4.9701634) q[15];
cx q[12],q[15];
u3(1.5561952,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[15];
cx q[15],q[12];
u3(-pi/2,-pi/2,pi/2) q[15];
u1(pi/2) q[15];
cx q[12],q[15];
u3(pi/2,6.040012,0) q[12];
u3(pi/2,4.4692157,0) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
u3(pi/2,pi,4.9701634) q[12];
cx q[13],q[12];
u3(pi/2,0,0) q[12];
u3(1.5561952,-pi/2,pi/2) q[13];
cx q[12],q[13];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[13],q[12];
u3(pi/2,4.4692157,0) q[12];
u3(pi/2,6.040012,0) q[13];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
u1(-0.021447943) q[12];
u1(pi/4) q[12];
u1(-0.0099400623) q[13];
u1(-pi/4) q[13];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[13];
cx q[13],q[14];
u2(0,pi) q[13];
cx q[14],q[13];
u1(0.78815185) q[13];
cx q[14],q[13];
u1(-0.78815185) q[13];
u2(0,pi) q[13];
cx q[13],q[14];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
u1(pi/4) q[14];
u3(pi/2,0,6.2826742) q[14];
u1(-0.021447943) q[15];
u1(pi) q[15];
u1(pi/4) q[15];
cx q[15],q[12];
u2(0,pi) q[15];
cx q[12],q[15];
u1(-0.78815185) q[15];
cx q[12],q[15];
u1(0.78815185) q[15];
u2(0,pi) q[15];
cx q[15],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
cx q[12],q[13];
u2(0,pi) q[12];
cx q[13],q[12];
u1(-pi/2) q[12];
cx q[13],q[12];
u1(pi/2) q[12];
u2(0,pi) q[12];
cx q[12],q[13];
u1(-pi/4) q[12];
u3(pi/2,pi,3.141993) q[12];
u1(pi/4) q[13];
u3(pi/2,pi,4.7118779) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5701477,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,4.7122514,0) q[13];
u3(pi/2,3.1414551,pi) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,0,4.7103336) q[13];
u3(pi/2,0,4.7103336) q[14];
u1(-pi/4) q[15];
u3(pi/2,0,4.7127893) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5700679,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,6.2820565,0) q[12];
u3(pi/2,4.7112602,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,6.2811299) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5701089,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.1443354,pi) q[12];
u3(pi/2,4.7151318,pi) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u3(pi/2,0,4.7103336) q[12];
u3(pi/2,0,6.2811299) q[13];
u3(pi/2,-pi/2,pi/2) q[13];
cx q[13],q[14];
u3(1.5701089,-pi/2,pi/2) q[13];
u3(pi/2,0,0) q[14];
cx q[14],q[13];
u3(-pi/2,-pi/2,pi/2) q[14];
u1(pi/2) q[14];
cx q[13],q[14];
u3(pi/2,3.1443354,pi) q[13];
u3(pi/2,4.7151318,pi) q[14];
cx q[13],q[14];
cx q[14],q[13];
cx q[13],q[14];
u3(pi/2,0,4.7103336) q[13];
u1(-0.00072845837) q[14];
u1(pi) q[14];
u1(pi/4) q[14];
u3(pi/2,0,6.2811299) q[15];
u3(pi/2,-pi/2,pi/2) q[15];
cx q[15],q[12];
u3(pi/2,0,0) q[12];
u3(1.5701089,-pi/2,pi/2) q[15];
cx q[12],q[15];
u3(-pi/2,-pi/2,pi/2) q[12];
u1(pi/2) q[12];
cx q[15],q[12];
u3(pi/2,4.7151318,pi) q[12];
u3(pi/2,3.1443354,pi) q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[15],q[12];
u3(pi/2,0,6.2811299) q[12];
u3(pi/2,-pi/2,pi/2) q[12];
cx q[12],q[13];
u3(1.5701089,-pi/2,pi/2) q[12];
u3(pi/2,0,0) q[13];
cx q[13],q[12];
u3(-pi/2,-pi/2,pi/2) q[13];
u1(pi/2) q[13];
cx q[12],q[13];
u3(pi/2,3.1443354,pi) q[12];
u3(pi/2,4.7151318,pi) q[13];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[13];
u1(-0.00064866129) q[12];
u1(-pi/4) q[12];
u1(-0.00072845837) q[13];
u1(pi/4) q[13];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[13];
cx q[14],q[13];
u2(0,pi) q[14];
cx q[13],q[14];
u1(-0.65321283) q[14];
cx q[13],q[14];
u1(0.65321283) q[14];
u2(0,pi) q[14];
cx q[14],q[13];
u1(pi/4) q[13];
u1(pi/4) q[13];
u1(-pi/4) q[14];
u1(-0.00064866129) q[15];
u1(pi) q[15];
u1(-pi/4) q[15];
cx q[12],q[15];
u2(0,pi) q[12];
cx q[15],q[12];
u1(0.65321283) q[12];
cx q[15],q[12];
u1(-0.65321283) q[12];
u2(0,pi) q[12];
cx q[12],q[15];
u1(-pi/4) q[12];
u1(-pi/4) q[12];
cx q[13],q[12];
u2(0,pi) q[13];
cx q[12],q[13];
u1(-pi/2) q[13];
cx q[12],q[13];
u1(pi/2) q[13];
u2(0,pi) q[13];
cx q[13],q[12];
u1(pi/4) q[12];
u1(-pi/4) q[13];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
u1(pi/4) q[15];
cx q[12],q[15];
cx q[15],q[12];
cx q[12],q[15];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
cx q[12],q[15];
cx q[14],q[13];
cx q[13],q[14];
cx q[14],q[13];
cx q[15],q[12];
cx q[12],q[15];
cx q[13],q[12];
cx q[12],q[13];
cx q[13],q[12];
measure q[15] -> c[0];
measure q[12] -> c[1];
measure q[13] -> c[2];
measure q[14] -> c[3];