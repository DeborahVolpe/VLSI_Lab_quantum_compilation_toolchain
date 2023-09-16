OPENQASM 2.0;
include "qelib1.inc";

qreg q[26];
creg c[2];
u3(0.250334883200516*pi,0.47738372391668643*pi,0.015985383701039593*pi) q[24];
u3(0.49993285991592334*pi,0.9920005713084761*pi,1.9999949474391654*pi) q[25];
cx q[25],q[24];
u3(0.5226162590251527*pi,1.5*pi,1.0*pi) q[24];
u3(0.015987051644843195*pi,0.0*pi,1.0*pi) q[25];
cx q[25],q[24];
u3(0.5*pi,0.5*pi,1.0*pi) q[24];
u3(4.760894440884744e-06*pi,0.5*pi,1.0*pi) q[25];
cx q[25],q[24];
u3(0.7495311008285362*pi,0.9840213359512306*pi,1.977393243863476*pi) q[24];
u3(0.49993285991592334*pi,0.9999949559309707*pi,1.9920005832165149*pi) q[25];
measure q[25] -> c[0];
measure q[24] -> c[1];
