OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
ry(3.141592653589793) q[0];
ry(3.141592653589793) q[1];
ry(3.141592653589793) q[2];
ry(3.141592653589793) q[3];
rxx(1.5707963268) q[3],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rx(-3.1415926536) q[3];
rxx(1.5707963268) q[3],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[2],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rx(-6.2831853072) q[2];
rxx(1.5707963268) q[2],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[2],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[2],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rx(-12.5663706144) q[1];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[1],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rx(-25.1327412288) q[0];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(1.1780972451) q[4];
rxx(1.5707963268) q[0],q[4];
rx(-1.5707963268) q[4];
rz(-3.1415926535593797) q[0];
ry(1.5707963268) q[0];
ry(-1.5707963268) q[1];
rz(-1.5707963268) q[1];
rz(-3.1415926535842065) q[0];
rxx(1.5707963268) q[0],q[1];
rx(-1.5707963268) q[1];
rz(1.5707963268) q[1];
rxx(1.5707963268) q[0],q[1];
rz(1.5707963267948966) q[1];
ry(1.5707963267695861) q[1];
ry(-1.5707963268) q[2];
rz(-0.7853981634) q[2];
rxx(1.5707963268) q[0],q[2];
rx(-1.5707963268) q[2];
rz(0.7853981634) q[2];
rxx(1.5707963268) q[0],q[2];
rx(-1.5707963268) q[2];
rz(-1.5707963268) q[2];
rz(-1.5707963267948966) q[1];
rxx(1.5707963268) q[1],q[2];
rx(-1.5707963268) q[2];
rz(1.5707963268) q[2];
rxx(1.5707963268) q[1],q[2];
rz(-1.5707963267948966) q[2];
ry(1.57079632681) q[2];
ry(-1.5707963268) q[3];
rz(-0.3926990817) q[3];
rxx(1.5707963268) q[0],q[3];
rx(-1.5707963268) q[3];
rz(0.3926990817) q[3];
rxx(1.5707963268) q[0],q[3];
rx(-1.5707963268) q[3];
rz(-0.7853981634) q[3];
rxx(1.5707963268) q[1],q[3];
rx(-1.5707963268) q[3];
rz(0.7853981634) q[3];
rxx(1.5707963268) q[1],q[3];
rx(-1.5707963268) q[3];
rz(-1.5707963268) q[3];
rz(1.5707963267948966) q[2];
rxx(1.5707963268) q[2],q[3];
rx(-1.5707963268) q[3];
rz(1.5707963268) q[3];
rxx(1.5707963268) q[2],q[3];
rz(3.14159265358469) q[3];
ry(1.5707963268) q[3];
ry(-1.5707963268) q[0];
ry(-1.5707963268) q[1];
ry(-1.5707963268) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];