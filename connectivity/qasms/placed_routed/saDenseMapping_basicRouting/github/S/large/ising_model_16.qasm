OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u2(0,pi)  q[0];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[5];
u2(0,pi)  q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u2(0,pi)  q[10];
u2(0,pi)  q[11];
u2(0,pi)  q[12];
u2(0,pi)  q[13];
u2(0,pi)  q[14];
u2(0,pi)  q[15];
u1(-0.300000000000000)  q[0];
u1(0.300000000000000)  q[1];
u1(-0.360000000000000)  q[2];
u1(0.360000000000000)  q[3];
u1(-0.120000000000000)  q[4];
u1(0.120000000000000)  q[5];
u1(0.220000000000000)  q[6];
u1(-0.220000000000000)  q[7];
u1(0.0800000000000000)  q[8];
u1(-0.0800000000000000)  q[9];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[11];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[15];
u1(-1.20000000000000)  q[1];
u1(-1.44000000000000)  q[3];
u1(-0.480000000000000)  q[5];
u1(0.880000000000000)  q[7];
u1(0.320000000000000)  q[9];
u1(-1.00000000000000)  q[11];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[15];
cx q[0], q[1];
cx q[2], q[3];
cx q[6], q[7];
cx q[8], q[9];
cx q[12], q[13];
swap q[4], q[1];
swap q[10], q[12];
u1(-0.440000000000000)  q[7];
u1(-0.160000000000000)  q[9];
swap q[1], q[2];
swap q[12], q[13];
u1(0.600000000000000)  q[4];
cx q[6], q[7];
cx q[8], q[9];
swap q[2], q[3];
swap q[13], q[14];
u1(-0.380000000000000)  q[6];
u1(-0.260000000000000)  q[7];
u1(0.260000000000000)  q[8];
u1(-1.00000000000000)  q[9];
cx q[3], q[5];
cx q[14], q[11];
swap q[13], q[12];
u1(0.720000000000000)  q[2];
u1(1.52000000000000)  q[6];
u1(-1.04000000000000)  q[8];
cx q[12], q[15];
u1(0.240000000000000)  q[5];
u1(-1.00000000000000)  q[11];
u1(-1.00000000000000)  q[13];
cx q[1], q[2];
u1(-1.00000000000000)  q[15];
cx q[3], q[5];
cx q[14], q[11];
swap q[0], q[1];
u1(-0.260000000000000)  q[2];
cx q[12], q[15];
cx q[1], q[4];
u1(-0.260000000000000)  q[0];
u1(0.260000000000000)  q[3];
u1(0.380000000000000)  q[5];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[11];
swap q[10], q[12];
u2(0,pi)  q[1];
u1(0.260000000000000)  q[4];
u2(0,pi)  q[15];
u1(1.04000000000000)  q[0];
u1(-1.04000000000000)  q[3];
u1(-1.00000000000000)  q[14];
cx q[12], q[13];
u1(-1.00000000000000)  q[10];
u1(-1.92000000000000)  q[1];
u1(-1.92000000000000)  q[15];
cx q[2], q[3];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[10];
u2(0,pi)  q[1];
u2(0,pi)  q[15];
swap q[5], q[3];
u1(-1.00000000000000)  q[12];
swap q[4], q[1];
swap q[3], q[2];
u1(-1.00000000000000)  q[15];
cx q[1], q[0];
u1(-1.00000000000000)  q[15];
swap q[2], q[1];
u1(-0.520000000000000)  q[0];
u1(-1.00000000000000)  q[15];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
swap q[4], q[1];
swap q[1], q[2];
u1(-0.288000000000000)  q[4];
u1(-0.760000000000000)  q[6];
swap q[2], q[3];
u1(-0.900000000000000)  q[4];
cx q[1], q[0];
cx q[7], q[6];
swap q[3], q[5];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
cx q[5], q[8];
u1(0.520000000000000)  q[3];
u1(-1.92000000000000)  q[1];
u1(-1.92000000000000)  q[0];
u1(-1.92000000000000)  q[7];
u1(-1.92000000000000)  q[6];
swap q[9], q[8];
cx q[2], q[3];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[8], q[11];
u1(0.520000000000000)  q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u1(0.864000000000000)  q[1];
u1(1.15200000000000)  q[0];
u1(-0.576000000000000)  q[7];
u1(1.53600000000000)  q[6];
cx q[11], q[14];
u1(-1.92000000000000)  q[2];
u1(-1.92000000000000)  q[3];
u1(0.900000000000000)  q[1];
u1(-1.08000000000000)  q[0];
u1(0.360000000000000)  q[7];
u1(0.660000000000000)  q[6];
swap q[8], q[11];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u1(-3.60000000000000)  q[1];
u1(-1.44000000000000)  q[7];
swap q[11], q[14];
u1(-1.05600000000000)  q[2];
u1(-1.44000000000000)  q[3];
cx q[4], q[1];
swap q[14], q[13];
u1(-1.00000000000000)  q[11];
u1(1.08000000000000)  q[2];
u1(-0.360000000000000)  q[3];
swap q[0], q[1];
cx q[13], q[12];
cx q[8], q[11];
u1(-4.32000000000000)  q[2];
u1(1.80000000000000)  q[0];
swap q[14], q[13];
swap q[5], q[8];
u2(0,pi)  q[11];
cx q[1], q[2];
swap q[13], q[12];
cx q[8], q[9];
u2(0,pi)  q[5];
u1(-1.92000000000000)  q[11];
swap q[3], q[2];
cx q[12], q[10];
u1(-1.00000000000000)  q[13];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u1(-1.92000000000000)  q[5];
u2(0,pi)  q[11];
swap q[2], q[1];
u1(-1.00000000000000)  q[10];
cx q[14], q[13];
u1(-1.92000000000000)  q[8];
u1(-1.92000000000000)  q[9];
u2(0,pi)  q[5];
u1(-1.00000000000000)  q[11];
swap q[1], q[4];
cx q[12], q[10];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u1(-1.82400000000000)  q[5];
u1(-1.00000000000000)  q[11];
cx q[4], q[7];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
u1(-1.92000000000000)  q[14];
u1(-1.92000000000000)  q[13];
u1(-0.288000000000000)  q[8];
u1(1.24800000000000)  q[9];
u1(-0.240000000000000)  q[5];
swap q[6], q[7];
u1(-1.92000000000000)  q[12];
u1(-1.92000000000000)  q[10];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
u1(-0.660000000000000)  q[8];
u1(0.240000000000000)  q[9];
u1(0.960000000000000)  q[5];
swap q[7], q[4];
u1(0.720000000000000)  q[6];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[13];
u1(2.64000000000000)  q[8];
swap q[4], q[1];
cx q[7], q[6];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[13];
swap q[1], q[2];
u1(0.780000000000000)  q[7];
u1(1.14000000000000)  q[6];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[14];
swap q[2], q[3];
u1(-3.12000000000000)  q[7];
u1(-1.00000000000000)  q[12];
cx q[11], q[14];
swap q[3], q[5];
u1(2.16000000000000)  q[2];
swap q[10], q[12];
cx q[5], q[8];
u1(-1.00000000000000)  q[14];
cx q[1], q[2];
cx q[12], q[15];
swap q[9], q[8];
cx q[11], q[14];
swap q[4], q[1];
u1(-0.780000000000000)  q[2];
u1(-1.00000000000000)  q[15];
swap q[8], q[5];
swap q[13], q[12];
u1(-1.32000000000000)  q[9];
cx q[1], q[0];
u1(-0.780000000000000)  q[4];
u1(-1.00000000000000)  q[11];
u1(-1.00000000000000)  q[14];
cx q[5], q[3];
cx q[12], q[10];
cx q[8], q[9];
u2(0,pi)  q[1];
u1(0.780000000000000)  q[0];
u1(3.12000000000000)  q[4];
u1(-1.00000000000000)  q[11];
u1(-0.480000000000000)  q[3];
u1(-1.00000000000000)  q[10];
swap q[13], q[12];
u1(-1.14000000000000)  q[8];
u1(-0.780000000000000)  q[9];
u1(-0.960000000000000)  q[1];
cx q[12], q[15];
cx q[5], q[3];
u1(4.56000000000000)  q[8];
u2(0,pi)  q[1];
u1(-1.00000000000000)  q[12];
u2(0,pi)  q[15];
u1(0.780000000000000)  q[5];
u1(-1.00000000000000)  q[3];
swap q[0], q[1];
swap q[13], q[12];
u1(-0.960000000000000)  q[15];
u1(-3.12000000000000)  q[5];
cx q[1], q[4];
u1(-0.144000000000000)  q[0];
cx q[12], q[10];
u1(-1.00000000000000)  q[13];
u2(0,pi)  q[15];
swap q[2], q[1];
u1(-1.50000000000000)  q[0];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[15];
swap q[1], q[4];
u1(-1.00000000000000)  q[12];
cx q[4], q[7];
u1(-1.00000000000000)  q[15];
swap q[10], q[12];
swap q[6], q[7];
u1(-1.00000000000000)  q[15];
cx q[12], q[13];
swap q[7], q[4];
u1(1.56000000000000)  q[6];
u1(-1.00000000000000)  q[13];
swap q[4], q[1];
cx q[7], q[6];
swap q[1], q[2];
swap q[14], q[13];
u1(-1.56000000000000)  q[4];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[2], q[3];
swap q[13], q[12];
cx q[1], q[4];
u1(-0.960000000000000)  q[7];
u1(-0.960000000000000)  q[6];
swap q[3], q[5];
cx q[12], q[10];
cx q[13], q[14];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
cx q[5], q[8];
u1(-1.00000000000000)  q[10];
u2(0,pi)  q[13];
u2(0,pi)  q[14];
u1(-0.960000000000000)  q[1];
u1(-0.960000000000000)  q[4];
u1(-0.528000000000000)  q[7];
u1(-0.720000000000000)  q[6];
swap q[9], q[8];
cx q[12], q[10];
u1(-0.960000000000000)  q[13];
u1(-0.960000000000000)  q[14];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
u1(1.80000000000000)  q[7];
u1(-0.600000000000000)  q[6];
swap q[8], q[5];
u1(-2.28000000000000)  q[9];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
u2(0,pi)  q[13];
u2(0,pi)  q[14];
u1(0.432000000000000)  q[1];
u1(0.576000000000000)  q[4];
u1(-7.20000000000000)  q[7];
cx q[5], q[3];
u1(-0.960000000000000)  q[12];
u1(-0.960000000000000)  q[10];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[14];
u1(1.50000000000000)  q[1];
u1(-1.80000000000000)  q[4];
swap q[2], q[3];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[14];
u1(-6.00000000000000)  q[1];
cx q[4], q[7];
swap q[3], q[5];
u1(1.56000000000000)  q[2];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[13];
cx q[0], q[1];
swap q[6], q[7];
swap q[5], q[8];
cx q[3], q[2];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
swap q[14], q[13];
swap q[7], q[4];
u1(3.60000000000000)  q[6];
cx q[8], q[11];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
swap q[13], q[12];
swap q[4], q[1];
cx q[7], q[6];
u1(-1.00000000000000)  q[11];
u1(-0.960000000000000)  q[3];
u1(-0.960000000000000)  q[2];
cx q[12], q[15];
u1(-1.00000000000000)  q[13];
u1(3.00000000000000)  q[4];
u1(-1.30000000000000)  q[7];
u1(-1.30000000000000)  q[6];
cx q[8], q[11];
u2(0,pi)  q[3];
u2(0,pi)  q[2];
u1(-1.00000000000000)  q[15];
swap q[10], q[12];
u1(5.20000000000000)  q[7];
swap q[5], q[8];
u2(0,pi)  q[11];
u1(-0.144000000000000)  q[3];
u1(0.624000000000000)  q[2];
swap q[12], q[13];
cx q[8], q[9];
u2(0,pi)  q[5];
u1(-0.960000000000000)  q[11];
u1(-1.10000000000000)  q[3];
u1(0.400000000000000)  q[2];
cx q[13], q[14];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u1(-0.960000000000000)  q[5];
u2(0,pi)  q[11];
u1(4.40000000000000)  q[3];
u1(-1.00000000000000)  q[14];
swap q[1], q[2];
u1(-0.960000000000000)  q[8];
u1(-0.960000000000000)  q[9];
u2(0,pi)  q[5];
u1(-1.00000000000000)  q[11];
swap q[2], q[3];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u1(-0.912000000000000)  q[5];
u1(-1.00000000000000)  q[11];
u1(-0.288000000000000)  q[8];
u1(0.768000000000000)  q[9];
u1(-0.400000000000000)  q[5];
swap q[11], q[14];
u1(0.600000000000000)  q[8];
u1(1.10000000000000)  q[9];
u1(1.60000000000000)  q[5];
swap q[14], q[13];
u1(-2.40000000000000)  q[8];
swap q[3], q[5];
cx q[13], q[12];
cx q[14], q[11];
cx q[5], q[8];
swap q[10], q[12];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[11];
swap q[9], q[8];
cx q[12], q[15];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[14];
swap q[8], q[5];
u1(1.20000000000000)  q[9];
u1(-1.00000000000000)  q[12];
u2(0,pi)  q[15];
swap q[11], q[14];
swap q[5], q[3];
u1(-1.00000000000000)  q[12];
u1(0.0)  q[15];
cx q[8], q[9];
cx q[3], q[2];
swap q[13], q[12];
u1(1.30000000000000)  q[8];
u1(1.90000000000000)  q[9];
u2(0,pi)  q[15];
swap q[1], q[2];
cx q[12], q[10];
cx q[14], q[13];
u1(-5.20000000000000)  q[8];
u1(-1.00000000000000)  q[15];
swap q[2], q[3];
u1(-2.20000000000000)  q[1];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[15];
cx q[3], q[5];
cx q[2], q[1];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[15];
u1(-0.800000000000000)  q[5];
swap q[0], q[1];
u1(-1.90000000000000)  q[2];
swap q[10], q[12];
cx q[3], q[5];
cx q[1], q[4];
u1(-1.30000000000000)  q[0];
u1(7.60000000000000)  q[2];
swap q[12], q[13];
u2(0,pi)  q[1];
u1(1.30000000000000)  q[4];
u1(1.30000000000000)  q[3];
u1(-1.00000000000000)  q[5];
swap q[13], q[14];
u1(0.0)  q[1];
u1(-5.20000000000000)  q[3];
cx q[14], q[11];
cx q[4], q[7];
cx q[13], q[12];
u2(0,pi)  q[1];
u1(-1.00000000000000)  q[11];
swap q[6], q[7];
swap q[7], q[4];
u1(-2.60000000000000)  q[6];
swap q[4], q[1];
cx q[7], q[6];
swap q[1], q[2];
u1(0.0)  q[4];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[2], q[3];
u1(-2.10000000000000)  q[4];
u1(0.0)  q[7];
u1(0.0)  q[6];
swap q[3], q[5];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
cx q[5], q[8];
u1(0.0)  q[7];
u1(0.0)  q[6];
swap q[9], q[8];
u1(2.10000000000000)  q[7];
u1(-2.52000000000000)  q[6];
swap q[8], q[5];
u1(2.60000000000000)  q[9];
u1(-8.40000000000000)  q[7];
swap q[5], q[3];
cx q[4], q[7];
swap q[3], q[2];
swap q[5], q[8];
swap q[6], q[7];
cx q[2], q[1];
swap q[8], q[11];
swap q[7], q[4];
u1(4.20000000000000)  q[6];
swap q[0], q[1];
swap q[11], q[14];
cx q[7], q[6];
swap q[1], q[2];
swap q[14], q[13];
u1(-3.80000000000000)  q[0];
cx q[11], q[8];
u2(0,pi)  q[7];
u1(1.82000000000000)  q[6];
cx q[2], q[3];
swap q[13], q[12];
u2(0,pi)  q[14];
u2(0,pi)  q[11];
u2(0,pi)  q[8];
cx q[1], q[0];
u1(0.960000000000000)  q[7];
cx q[12], q[10];
u1(2.60000000000000)  q[3];
u2(0,pi)  q[13];
u1(0.0)  q[14];
swap q[5], q[8];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u1(0.0)  q[11];
u2(0,pi)  q[7];
u1(-1.00000000000000)  q[10];
u1(0.0)  q[13];
cx q[2], q[3];
cx q[8], q[9];
u1(0.0)  q[5];
u2(0,pi)  q[14];
u1(0.0)  q[1];
u1(0.0)  q[0];
u2(0,pi)  q[11];
swap q[6], q[7];
cx q[12], q[10];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[13];
u2(0,pi)  q[5];
u1(-1.00000000000000)  q[14];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u1(-1.00000000000000)  q[11];
u1(0.144000000000000)  q[6];
u2(0,pi)  q[10];
u2(0,pi)  q[12];
u1(0.0)  q[8];
u1(0.0)  q[9];
u1(0.0)  q[2];
u1(0.0)  q[3];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[5];
u1(-1.00000000000000)  q[14];
u1(0.0)  q[1];
u1(0.0)  q[0];
u1(-1.00000000000000)  q[11];
u1(-2.70000000000000)  q[6];
u1(0.0)  q[10];
u1(0.0)  q[12];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u1(-1.00000000000000)  q[13];
u1(-1.00000000000000)  q[5];
u1(-1.00000000000000)  q[14];
u1(0.840000000000000)  q[1];
u1(1.54000000000000)  q[0];
u1(-1.00000000000000)  q[11];
u2(0,pi)  q[10];
u2(0,pi)  q[12];
u1(0.0)  q[8];
u1(0.0)  q[9];
u1(0.0)  q[2];
u1(0.0)  q[3];
u1(-3.36000000000000)  q[1];
u1(-1.00000000000000)  q[10];
u1(0.0)  q[12];
u1(2.52000000000000)  q[8];
u1(-0.840000000000000)  q[9];
u1(-1.54000000000000)  q[2];
u1(0.560000000000000)  q[3];
swap q[4], q[1];
swap q[13], q[12];
u1(-1.00000000000000)  q[10];
swap q[5], q[8];
u1(6.16000000000000)  q[2];
cx q[12], q[15];
u1(-0.560000000000000)  q[13];
swap q[8], q[11];
u1(-10.0800000000000)  q[5];
swap q[1], q[2];
u1(-1.00000000000000)  q[15];
cx q[11], q[14];
u1(2.24000000000000)  q[13];
swap q[2], q[3];
u1(-1.00000000000000)  q[14];
cx q[12], q[15];
cx q[3], q[5];
swap q[10], q[12];
u2(0,pi)  q[15];
swap q[12], q[13];
u1(-1.00000000000000)  q[10];
u1(0.960000000000000)  q[15];
swap q[13], q[14];
u1(-1.00000000000000)  q[10];
u2(0,pi)  q[15];
swap q[14], q[11];
u1(-1.00000000000000)  q[15];
cx q[11], q[8];
cx q[14], q[13];
u1(-1.00000000000000)  q[15];
u1(-1.00000000000000)  q[8];
u1(-1.00000000000000)  q[15];
swap q[9], q[8];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
swap q[3], q[5];
cx q[1], q[4];
swap q[5], q[8];
swap q[0], q[1];
swap q[8], q[11];
u1(5.04000000000000)  q[5];
u1(1.68000000000000)  q[4];
cx q[1], q[2];
swap q[11], q[14];
cx q[8], q[9];
cx q[3], q[5];
swap q[14], q[13];
u1(-3.08000000000000)  q[2];
u1(-1.00000000000000)  q[11];
u1(-1.00000000000000)  q[8];
u1(-1.00000000000000)  q[9];
u1(-1.82000000000000)  q[3];
u1(-1.82000000000000)  q[5];
cx q[13], q[12];
u1(-1.00000000000000)  q[14];
u1(-1.00000000000000)  q[11];
cx q[1], q[2];
u1(-1.00000000000000)  q[8];
u1(7.28000000000000)  q[3];
u1(-1.12000000000000)  q[12];
swap q[0], q[1];
u1(-1.82000000000000)  q[2];
swap q[9], q[8];
cx q[13], q[12];
cx q[1], q[4];
u1(-2.66000000000000)  q[0];
cx q[8], q[11];
swap q[14], q[13];
u1(1.82000000000000)  q[1];
u1(2.66000000000000)  q[4];
u1(10.6400000000000)  q[0];
u1(-1.00000000000000)  q[11];
swap q[13], q[12];
u1(1.82000000000000)  q[14];
u1(-7.28000000000000)  q[1];
swap q[7], q[4];
cx q[12], q[10];
u1(-1.00000000000000)  q[13];
u1(-7.28000000000000)  q[14];
swap q[4], q[1];
u1(-1.00000000000000)  q[10];
swap q[13], q[14];
swap q[1], q[2];
cx q[12], q[10];
swap q[14], q[11];
cx q[2], q[3];
swap q[11], q[8];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
swap q[5], q[3];
cx q[8], q[9];
cx q[11], q[14];
swap q[3], q[2];
u1(0.960000000000000)  q[12];
u1(0.960000000000000)  q[10];
u1(-1.00000000000000)  q[9];
swap q[2], q[1];
u2(0,pi)  q[12];
u2(0,pi)  q[10];
cx q[1], q[4];
swap q[2], q[3];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
swap q[7], q[4];
swap q[3], q[5];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
swap q[4], q[1];
swap q[5], q[8];
u1(-3.64000000000000)  q[3];
u1(3.64000000000000)  q[7];
u1(-1.00000000000000)  q[12];
cx q[1], q[0];
swap q[8], q[11];
cx q[2], q[3];
cx q[4], q[7];
swap q[10], q[12];
swap q[11], q[14];
u1(-5.32000000000000)  q[0];
u2(0,pi)  q[8];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
cx q[12], q[15];
cx q[14], q[13];
u2(0,pi)  q[11];
swap q[5], q[8];
cx q[1], q[0];
u1(0.960000000000000)  q[2];
u1(0.960000000000000)  q[3];
u1(0.960000000000000)  q[4];
u1(0.960000000000000)  q[7];
u1(-1.00000000000000)  q[15];
u1(3.64000000000000)  q[13];
cx q[8], q[9];
u1(0.960000000000000)  q[5];
u1(0.960000000000000)  q[11];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[7];
u2(0,pi)  q[9];
u2(0,pi)  q[8];
cx q[14], q[13];
u2(0,pi)  q[5];
u2(0,pi)  q[11];
u1(0.960000000000000)  q[1];
u1(0.960000000000000)  q[0];
u1(-0.432000000000000)  q[2];
u1(-0.576000000000000)  q[3];
u1(0.528000000000000)  q[4];
u1(0.720000000000000)  q[7];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
u1(0.960000000000000)  q[9];
u1(0.960000000000000)  q[8];
u1(-1.00000000000000)  q[5];
u1(-1.00000000000000)  q[11];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u1(2.70000000000000)  q[2];
u1(-3.24000000000000)  q[3];
u1(3.24000000000000)  q[4];
u1(-1.08000000000000)  q[7];
u1(0.960000000000000)  q[14];
u1(0.960000000000000)  q[13];
u2(0,pi)  q[9];
u2(0,pi)  q[8];
u1(-1.00000000000000)  q[5];
u1(-1.00000000000000)  q[11];
u1(0.288000000000000)  q[1];
u1(-0.768000000000000)  q[0];
u1(-10.8000000000000)  q[2];
u1(-12.9600000000000)  q[4];
swap q[6], q[7];
u2(0,pi)  q[14];
u2(0,pi)  q[13];
u1(-1.00000000000000)  q[9];
u1(0.912000000000000)  q[8];
u1(-1.00000000000000)  q[5];
u1(1.08000000000000)  q[1];
u1(1.98000000000000)  q[0];
swap q[7], q[4];
u1(0.144000000000000)  q[14];
u1(-0.624000000000000)  q[13];
u1(-1.00000000000000)  q[9];
u1(-0.720000000000000)  q[8];
u1(-4.32000000000000)  q[1];
swap q[11], q[14];
u1(2.88000000000000)  q[8];
swap q[4], q[1];
swap q[14], q[13];
u1(-1.98000000000000)  q[11];
swap q[9], q[8];
cx q[1], q[2];
swap q[13], q[12];
u1(0.720000000000000)  q[14];
cx q[8], q[5];
u1(7.92000000000000)  q[11];
swap q[3], q[2];
cx q[12], q[10];
u1(-1.00000000000000)  q[5];
swap q[14], q[11];
swap q[2], q[1];
u1(5.40000000000000)  q[3];
u1(-1.00000000000000)  q[10];
swap q[13], q[12];
swap q[11], q[8];
swap q[1], q[4];
cx q[2], q[3];
cx q[12], q[15];
cx q[8], q[9];
cx q[4], q[7];
u1(-1.00000000000000)  q[12];
u2(0,pi)  q[15];
u1(-1.44000000000000)  q[9];
swap q[6], q[7];
swap q[11], q[8];
swap q[13], q[12];
u1(1.92000000000000)  q[15];
swap q[7], q[4];
cx q[8], q[5];
u1(6.48000000000000)  q[6];
cx q[12], q[10];
u1(-1.00000000000000)  q[13];
cx q[4], q[1];
u2(0,pi)  q[15];
u1(-1.00000000000000)  q[8];
u1(-1.00000000000000)  q[5];
u1(-1.00000000000000)  q[12];
u1(-1.00000000000000)  q[10];
swap q[0], q[1];
swap q[11], q[8];
u1(-1.00000000000000)  q[15];
swap q[5], q[3];
swap q[1], q[4];
u1(2.16000000000000)  q[0];
cx q[8], q[9];
u1(-1.00000000000000)  q[11];
swap q[3], q[2];
u1(2.34000000000000)  q[5];
swap q[4], q[7];
u1(2.34000000000000)  q[8];
u1(-1.00000000000000)  q[9];
cx q[1], q[0];
u2(0,pi)  q[3];
swap q[7], q[10];
swap q[2], q[1];
u1(3.42000000000000)  q[0];
u1(-9.36000000000000)  q[8];
u1(1.92000000000000)  q[3];
swap q[10], q[12];
u1(2.34000000000000)  q[2];
swap q[9], q[8];
u2(0,pi)  q[3];
swap q[12], q[13];
u1(-1.00000000000000)  q[10];
cx q[8], q[11];
u1(-9.36000000000000)  q[2];
swap q[5], q[3];
cx q[13], q[14];
swap q[7], q[10];
u1(-1.00000000000000)  q[11];
swap q[3], q[2];
u1(0.288000000000000)  q[5];
u1(-3.96000000000000)  q[14];
cx q[10], q[12];
swap q[4], q[7];
u1(-1.00000000000000)  q[12];
cx q[13], q[14];
cx q[7], q[6];
cx q[1], q[4];
u1(-2.34000000000000)  q[7];
u1(-2.34000000000000)  q[6];
u1(-3.42000000000000)  q[13];
u1(-2.34000000000000)  q[14];
u1(-1.00000000000000)  q[4];
cx q[10], q[12];
u1(9.36000000000000)  q[7];
u2(0,pi)  q[10];
u2(0,pi)  q[12];
u1(13.6800000000000)  q[13];
cx q[1], q[4];
swap q[14], q[11];
swap q[11], q[8];
u1(1.92000000000000)  q[10];
u1(1.92000000000000)  q[12];
u2(0,pi)  q[1];
u2(0,pi)  q[4];
cx q[8], q[9];
cx q[11], q[14];
swap q[2], q[1];
u1(4.68000000000000)  q[9];
swap q[1], q[4];
u2(0,pi)  q[14];
u2(0,pi)  q[11];
cx q[4], q[7];
cx q[8], q[9];
u1(1.92000000000000)  q[14];
u1(1.92000000000000)  q[11];
swap q[6], q[7];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
u2(0,pi)  q[14];
u2(0,pi)  q[11];
swap q[7], q[4];
u1(-4.68000000000000)  q[6];
u1(1.92000000000000)  q[8];
u1(1.92000000000000)  q[9];
u1(-1.00000000000000)  q[14];
u1(1.82400000000000)  q[11];
swap q[4], q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[9];
swap q[1], q[2];
u1(0.288000000000000)  q[8];
u1(-1.24800000000000)  q[9];
cx q[2], q[3];
swap q[0], q[1];
swap q[1], q[4];
u1(4.68000000000000)  q[3];
u1(1.92000000000000)  q[0];
swap q[4], q[7];
u1(1.92000000000000)  q[1];
u2(0,pi)  q[0];
cx q[2], q[3];
swap q[7], q[10];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u1(-1.00000000000000)  q[0];
swap q[10], q[12];
u2(0,pi)  q[7];
u1(-1.00000000000000)  q[1];
u1(1.92000000000000)  q[2];
u1(1.92000000000000)  q[3];
cx q[12], q[13];
u2(0,pi)  q[10];
u1(-1.00000000000000)  q[7];
u2(0,pi)  q[2];
u2(0,pi)  q[3];
u1(-6.84000000000000)  q[13];
u1(-1.00000000000000)  q[10];
swap q[4], q[7];
u1(1.05600000000000)  q[2];
u1(1.44000000000000)  q[3];
cx q[12], q[13];
cx q[7], q[6];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u2(0,pi)  q[12];
u2(0,pi)  q[13];
u1(1.92000000000000)  q[7];
u1(1.92000000000000)  q[6];
u1(1.92000000000000)  q[12];
u1(1.92000000000000)  q[13];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u2(0,pi)  q[12];
u2(0,pi)  q[13];
u1(-0.864000000000000)  q[7];
u1(-1.15200000000000)  q[6];
u1(0.576000000000000)  q[12];
u1(-1.53600000000000)  q[13];
measure q[5] -> c[0];
measure q[7] -> c[1];
measure q[6] -> c[2];
measure q[2] -> c[3];
measure q[3] -> c[4];
measure q[12] -> c[5];
measure q[13] -> c[6];
measure q[8] -> c[7];
measure q[9] -> c[8];
measure q[11] -> c[9];
measure q[14] -> c[10];
measure q[0] -> c[11];
measure q[1] -> c[12];
measure q[4] -> c[13];
measure q[10] -> c[14];
measure q[15] -> c[15];
