OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u2(0.0*pi,1.0*pi) q[0];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[0];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[0];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.6849220243564269*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u1(0.635181648301803*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
cx q[1],q[0];
u1(0.635181648301803*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
cx q[1],q[0];
u1(1.3791036833019403*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(1.3791036833019403*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.14703433924578896*pi) q[1];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
cx q[2],q[1];
u1(0.14703433924578896*pi) q[1];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.34599520684451207*pi) q[0];
cx q[1],q[0];
u2(0.0*pi,1.0*pi) q[0];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u1(0.34599520684451207*pi) q[0];
cx q[1],q[0];
u3(1.0*pi,0.5*pi,0.5*pi) q[0];
cx q[2],q[1];
measure q[0] -> c[0];
u2(0.0*pi,1.0*pi) q[1];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
u1(0.7188691370981558*pi) q[1];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
u1(0.7188691370981558*pi) q[1];
cx q[2],q[1];
u3(1.0*pi,0.5*pi,0.5*pi) q[1];
cx q[3],q[2];
measure q[1] -> c[1];
u2(0.0*pi,1.0*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[3];
cx q[3],q[2];
u1(0.3910535627832586*pi) q[2];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[2];
u2(0.0*pi,1.0*pi) q[3];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
cx q[3],q[2];
u1(0.3910535627832586*pi) q[2];
cx q[3],q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[2];
u3(1.0*pi,0.5*pi,0.5*pi) q[3];
measure q[2] -> c[2];
measure q[3] -> c[3];