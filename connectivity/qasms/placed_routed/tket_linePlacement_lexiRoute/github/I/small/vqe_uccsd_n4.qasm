OPENQASM 2.0;
include "qelib1.inc";

qreg q[17];
creg c[4];
ry(0.5*pi) q[13];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[13];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(0.5*pi) q[13];
cx q[16],q[15];
rx(1.0*pi) q[13];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[16],q[15];
ry(0.5*pi) q[13];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[13];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(1.0*pi) q[13];
ry(1.0*pi) q[15];
ry(1.0*pi) q[16];
ry(1.0*pi) q[13];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
ry(1.0*pi) q[13];
cx q[16],q[15];
ry(0.5*pi) q[13];
ry(1.0*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[13];
ry(1.0*pi) q[15];
ry(0.5*pi) q[16];
ry(1.0*pi) q[13];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[16],q[15];
ry(1.0*pi) q[13];
ry(1.0*pi) q[15];
ry(0.5*pi) q[16];
ry(1.0*pi) q[13];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
ry(0.5*pi) q[13];
rx(1.0*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[13];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
ry(0.5*pi) q[13];
cx q[16],q[15];
rx(1.0*pi) q[13];
ry(0.5*pi) q[15];
ry(1.0*pi) q[16];
ry(0.5*pi) q[13];
rx(1.0*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[13];
ry(1.0*pi) q[15];
ry(0.5*pi) q[13];
cx q[16],q[15];
rx(1.0*pi) q[13];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[16],q[15];
ry(0.5*pi) q[13];
ry(1.0*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[13];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
ry(1.0*pi) q[13];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(1.0*pi) q[13];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
ry(1.0*pi) q[13];
cx q[16],q[15];
ry(0.5*pi) q[13];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[13];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(1.0*pi) q[13];
ry(0.5*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[15];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[16],q[15];
ry(1.0*pi) q[13];
ry(0.5*pi) q[15];
ry(1.0*pi) q[16];
ry(1.0*pi) q[13];
rx(1.0*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[13];
ry(1.0*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[13];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.6849220243564269*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(1.0*pi) q[15];
ry(0.5*pi) q[16];
ry(0.5*pi) q[13];
ry(0.5*pi) q[15];
rx(1.0*pi) q[16];
rx(1.0*pi) q[13];
rx(1.0*pi) q[15];
ry(0.5*pi) q[16];
cx q[14],q[13];
rx(1.0*pi) q[16];
rz(0.635181648301803*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(1.0*pi) q[13];
ry(1.0*pi) q[14];
cx q[14],q[13];
rz(0.635181648301803*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
ry(1.0*pi) q[14];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[14],q[13];
rz(1.3791036833019403*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
ry(0.5*pi) q[15];
ry(1.0*pi) q[13];
rx(1.0*pi) q[15];
ry(1.0*pi) q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(1.3791036833019403*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
ry(1.0*pi) q[15];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[15];
cx q[15],q[14];
rz(0.14703433924578896*pi) q[14];
cx q[15],q[14];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
ry(1.0*pi) q[14];
ry(1.0*pi) q[15];
cx q[15],q[14];
rz(0.14703433924578896*pi) q[14];
cx q[15],q[14];
ry(1.0*pi) q[14];
ry(1.0*pi) q[15];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.34599520684451207*pi) q[13];
cx q[14],q[13];
ry(0.5*pi) q[13];
cx q[15],q[14];
rx(1.0*pi) q[13];
cx q[16],q[15];
ry(1.0*pi) q[13];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
ry(1.0*pi) q[16];
cx q[16],q[15];
cx q[15],q[14];
cx q[14],q[13];
rz(0.34599520684451207*pi) q[13];
cx q[14],q[13];
ry(1.0*pi) q[13];
cx q[15],q[14];
measure q[13] -> c[0];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[14];
ry(1.0*pi) q[16];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
cx q[16],q[15];
cx q[15],q[14];
rz(0.7188691370981558*pi) q[14];
cx q[15],q[14];
ry(0.5*pi) q[14];
cx q[16],q[15];
rx(1.0*pi) q[14];
ry(0.5*pi) q[16];
ry(1.0*pi) q[14];
rx(1.0*pi) q[16];
ry(1.0*pi) q[16];
cx q[16],q[15];
cx q[15],q[14];
rz(0.7188691370981558*pi) q[14];
cx q[15],q[14];
ry(1.0*pi) q[14];
cx q[16],q[15];
measure q[14] -> c[1];
ry(0.5*pi) q[15];
ry(1.0*pi) q[16];
rx(1.0*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[16];
cx q[16],q[15];
rz(0.3910535627832586*pi) q[15];
cx q[16],q[15];
ry(0.5*pi) q[15];
ry(0.5*pi) q[16];
rx(1.0*pi) q[15];
rx(1.0*pi) q[16];
ry(1.0*pi) q[15];
ry(1.0*pi) q[16];
cx q[16],q[15];
rz(0.3910535627832586*pi) q[15];
cx q[16],q[15];
ry(1.0*pi) q[15];
ry(1.0*pi) q[16];
measure q[15] -> c[2];
measure q[16] -> c[3];
