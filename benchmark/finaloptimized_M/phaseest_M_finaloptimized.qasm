OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
rx(1.5707963268) q[4];
rx(1.5707963268)q[0];
rx(1.5707963268)q[1];
rx(1.5707963268)q[2];
rx(1.5707963268)q[3];
rzz(1.5707963268) q[3],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rz(-0.3926990817) q[3];
rzz(1.5707963268) q[3],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[2],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rz(-3.926990817) q[2];
rzz(1.5707963268) q[2],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[2],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[2],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[1],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rz(-10.9955742876) q[1];
rzz(1.5707963268) q[1],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[1],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[1],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[1],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[1],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[1],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[1],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rz(-26.703537555585) q[0];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451) q[4];
rz(1.5707963267764962) q[4];
rzz(1.5707963268) q[0],q[4];
rz(3.410038117437406e-12) q[4];
ry(1.1780972450999998) q[4];
rz(3.410038117437406e-12) q[4];
rzz(1.5707963268) q[0],q[4];
rz(1.5707963267968965) q[4];
ry(1.1780972451000002) q[4];
rz(-1.5707963268037792) q[4];
rzz(1.5707963268) q[0],q[4];
ry(1.5707963268)q[0];
rz(-7.853981633995) q[0];
rx(1.5707963268) q[1];
rzz(1.5707963268) q[0],q[1];
rz(1.5707963268) q[1];
ry(1.5707963267948966) q[1];
rz(-1.5707963267948968) q[1];
rzz(1.5707963268) q[0],q[1];
rx(0.0) q[1];
rx(1.5707963268) q[2];
rzz(1.5707963268) q[0],q[2];
rz(1.5707963267978966) q[2];
ry(0.7853981634000001) q[2];
rz(3.141592653576965) q[2];
rzz(1.5707963268) q[0],q[2];
ry(1.5707963268) q[2];
rx(-1.5707963268) q[2];
rzz(1.5707963268) q[1],q[2];
rz(1.5707963268) q[2];
ry(1.5707963267948968) q[2];
rz(1.5707963267951033) q[2];
rzz(1.5707963268) q[1],q[2];
rx(0.0) q[2];
rx(1.5707963268) q[3];
rzz(1.5707963268) q[0],q[3];
rz(1.5707963267978966) q[3];
ry(0.3926990817000004) q[3];
rz(1.570796326779218) q[3];
rzz(1.5707963268) q[0],q[3];
rz(2.1139347820446506e-12) q[3];
ry(0.7853981633999999) q[3];
rz(2.1139347820446506e-12) q[3];
rzz(1.5707963268) q[1],q[3];
rz(1.5707963267978966) q[3];
ry(0.7853981634000001) q[3];
rz(3.141592653576965) q[3];
rzz(1.5707963268) q[1],q[3];
ry(1.5707963268) q[3];
rx(-1.5707963268) q[3];
rzz(1.5707963268) q[2],q[3];
ry(1.5707963268) q[3];
rx(1.5707963268) q[3];
rzz(1.5707963268) q[2],q[3];
rx(1.5707963268) q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];