OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[10];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[3];
u2(0,pi)  q[4];
u2(0,pi)  q[6];
u2(0,pi)  q[2];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[1];
u2(0,pi)  q[9];
u1(-0.300000000000000)  q[8];
u1(0.300000000000000)  q[5];
u1(-0.360000000000000)  q[3];
u1(0.360000000000000)  q[4];
u1(-0.120000000000000)  q[6];
u1(0.120000000000000)  q[2];
u1(0.220000000000000)  q[0];
u1(-0.220000000000000)  q[7];
u1(0.0800000000000000)  q[1];
u1(-0.0800000000000000)  q[9];
u1(0.300000000000000)  q[5];
u1(0.360000000000000)  q[4];
u1(0.120000000000000)  q[2];
u1(-0.220000000000000)  q[7];
u1(-0.0800000000000000)  q[9];
cx q[8], q[5];
swap q[2], q[1];
swap q[4], q[1];
swap q[9], q[8];
swap q[4], q[7];
cx q[2], q[1];
swap q[8], q[5];
cx q[6], q[7];
cx q[3], q[2];
u1(-0.300000000000000)  q[8];
cx q[2], q[1];
u1(-0.120000000000000)  q[7];
cx q[9], q[8];
cx q[3], q[2];
swap q[4], q[1];
cx q[6], q[7];
u2(0,pi)  q[9];
u1(0.260000000000000)  q[8];
cx q[0], q[1];
swap q[5], q[3];
u1(-0.360000000000000)  q[4];
u1(0.260000000000000)  q[6];
u1(0.380000000000000)  q[7];
u1(-1.92000000000000)  q[9];
cx q[2], q[3];
u1(0.220000000000000)  q[1];
u1(0.260000000000000)  q[6];
u2(0,pi)  q[9];
u1(0.0800000000000000)  q[3];
cx q[0], q[1];
u1(-0.288000000000000)  q[9];
cx q[2], q[3];
u1(-0.380000000000000)  q[0];
u1(-0.900000000000000)  q[9];
swap q[5], q[3];
u1(-0.380000000000000)  q[0];
swap q[3], q[2];
u2(0,pi)  q[5];
swap q[2], q[1];
u1(0.260000000000000)  q[3];
u1(-1.92000000000000)  q[5];
cx q[1], q[4];
u1(-0.260000000000000)  q[2];
u1(0.260000000000000)  q[3];
u2(0,pi)  q[5];
u1(-0.260000000000000)  q[1];
u1(-0.260000000000000)  q[4];
cx q[2], q[3];
u1(-0.260000000000000)  q[1];
swap q[4], q[7];
cx q[7], q[6];
swap q[1], q[2];
swap q[2], q[3];
cx q[1], q[0];
u1(-0.260000000000000)  q[6];
swap q[3], q[5];
cx q[4], q[1];
u1(-0.260000000000000)  q[2];
cx q[7], q[6];
cx q[8], q[5];
cx q[1], q[0];
u1(-1.82400000000000)  q[3];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
cx q[4], q[1];
u1(0.260000000000000)  q[5];
u1(0.380000000000000)  q[0];
u1(-0.240000000000000)  q[3];
u1(-1.92000000000000)  q[7];
u1(-1.92000000000000)  q[6];
cx q[8], q[5];
cx q[1], q[2];
u1(-0.240000000000000)  q[3];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[0], q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[2];
u1(-1.05600000000000)  q[7];
u1(-1.44000000000000)  q[6];
cx q[4], q[1];
u2(0,pi)  q[0];
u1(-1.92000000000000)  q[8];
u1(-1.92000000000000)  q[5];
u1(-1.92000000000000)  q[2];
u1(1.08000000000000)  q[7];
u1(-0.360000000000000)  q[6];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-1.92000000000000)  q[0];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[2];
u1(1.08000000000000)  q[7];
u1(-1.92000000000000)  q[4];
u1(-1.92000000000000)  q[1];
u2(0,pi)  q[0];
u1(0.864000000000000)  q[8];
u1(1.15200000000000)  q[5];
u1(1.24800000000000)  q[2];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-0.288000000000000)  q[0];
u1(0.900000000000000)  q[8];
u1(-1.08000000000000)  q[5];
u1(0.240000000000000)  q[2];
u1(-0.576000000000000)  q[4];
u1(1.53600000000000)  q[1];
u1(-0.660000000000000)  q[0];
u1(0.900000000000000)  q[8];
cx q[2], q[3];
u1(0.360000000000000)  q[4];
u1(0.660000000000000)  q[1];
u1(-0.660000000000000)  q[0];
u1(0.240000000000000)  q[3];
cx q[9], q[8];
u1(0.360000000000000)  q[4];
cx q[1], q[0];
u1(-0.900000000000000)  q[8];
cx q[7], q[4];
u1(0.660000000000000)  q[0];
cx q[9], q[8];
cx q[6], q[7];
u2(0,pi)  q[9];
u1(0.780000000000000)  q[8];
cx q[7], q[4];
u1(-0.960000000000000)  q[9];
cx q[6], q[7];
u2(0,pi)  q[9];
swap q[7], q[4];
u1(-0.144000000000000)  q[9];
swap q[4], q[1];
u1(-0.360000000000000)  q[7];
u1(-1.50000000000000)  q[9];
swap q[1], q[2];
cx q[6], q[7];
swap q[2], q[3];
u1(0.780000000000000)  q[6];
u1(1.14000000000000)  q[7];
cx q[5], q[3];
cx q[1], q[2];
u1(0.780000000000000)  q[6];
u1(-1.08000000000000)  q[3];
u1(0.780000000000000)  q[1];
u2(0,pi)  q[2];
cx q[5], q[3];
swap q[0], q[1];
u1(-0.960000000000000)  q[2];
cx q[4], q[1];
u1(-0.780000000000000)  q[5];
u1(-0.780000000000000)  q[3];
u1(0.780000000000000)  q[0];
u2(0,pi)  q[2];
u1(-1.14000000000000)  q[4];
u1(-0.780000000000000)  q[1];
u1(-0.780000000000000)  q[5];
u1(-0.912000000000000)  q[2];
u1(-1.14000000000000)  q[4];
cx q[1], q[0];
cx q[8], q[5];
swap q[3], q[2];
u1(-0.780000000000000)  q[0];
cx q[7], q[4];
swap q[2], q[1];
u1(0.780000000000000)  q[5];
u1(-0.400000000000000)  q[3];
swap q[1], q[4];
u1(-0.400000000000000)  q[3];
cx q[8], q[5];
swap q[4], q[7];
u1(1.14000000000000)  q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
cx q[7], q[6];
cx q[1], q[0];
u1(-0.960000000000000)  q[8];
u1(-0.960000000000000)  q[5];
u1(-0.780000000000000)  q[6];
cx q[2], q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
cx q[1], q[0];
cx q[7], q[6];
u1(0.432000000000000)  q[8];
u1(0.576000000000000)  q[5];
cx q[2], q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u1(1.50000000000000)  q[8];
u1(-1.80000000000000)  q[5];
u2(0,pi)  q[2];
cx q[4], q[1];
u1(-0.960000000000000)  q[0];
u1(-0.960000000000000)  q[7];
u1(-0.960000000000000)  q[6];
u1(1.50000000000000)  q[8];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-0.960000000000000)  q[2];
u2(0,pi)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
cx q[9], q[8];
u1(-0.960000000000000)  q[4];
u1(-0.960000000000000)  q[1];
u2(0,pi)  q[2];
u1(0.624000000000000)  q[0];
u1(-0.528000000000000)  q[7];
u1(-0.720000000000000)  q[6];
u1(-1.50000000000000)  q[8];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-0.144000000000000)  q[2];
u1(0.400000000000000)  q[0];
u1(1.80000000000000)  q[7];
u1(-0.600000000000000)  q[6];
cx q[9], q[8];
u1(-0.288000000000000)  q[4];
u1(0.768000000000000)  q[1];
u1(-1.10000000000000)  q[2];
u1(1.80000000000000)  q[7];
u2(0,pi)  q[9];
u1(1.30000000000000)  q[8];
u1(0.600000000000000)  q[4];
u1(1.10000000000000)  q[1];
u1(-1.10000000000000)  q[2];
u1(0.0)  q[9];
swap q[0], q[1];
u1(0.600000000000000)  q[4];
u2(0,pi)  q[9];
swap q[1], q[2];
cx q[7], q[4];
u1(0.0)  q[9];
cx q[2], q[3];
cx q[0], q[1];
cx q[6], q[7];
u1(-2.10000000000000)  q[9];
u1(0.400000000000000)  q[3];
u1(1.10000000000000)  q[1];
cx q[7], q[4];
cx q[2], q[3];
cx q[6], q[7];
swap q[5], q[3];
swap q[7], q[4];
swap q[3], q[2];
u1(-0.600000000000000)  q[7];
u2(0,pi)  q[5];
swap q[2], q[1];
u1(1.30000000000000)  q[3];
u1(0.0)  q[5];
cx q[6], q[7];
cx q[1], q[4];
u1(1.30000000000000)  q[3];
u1(1.30000000000000)  q[6];
u1(1.90000000000000)  q[7];
u2(0,pi)  q[5];
u1(-1.80000000000000)  q[4];
cx q[1], q[2];
u1(1.30000000000000)  q[6];
u1(0.0)  q[5];
cx q[0], q[1];
u1(-0.560000000000000)  q[5];
cx q[1], q[2];
cx q[0], q[1];
u1(-1.30000000000000)  q[2];
u1(-1.90000000000000)  q[0];
cx q[1], q[4];
cx q[2], q[3];
u1(-1.30000000000000)  q[1];
u1(-1.30000000000000)  q[4];
u1(-1.90000000000000)  q[0];
u1(-1.30000000000000)  q[3];
u1(-1.30000000000000)  q[1];
swap q[7], q[4];
cx q[2], q[3];
cx q[1], q[0];
cx q[7], q[6];
cx q[4], q[1];
u1(-1.30000000000000)  q[6];
cx q[1], q[0];
cx q[7], q[6];
cx q[4], q[1];
u1(1.90000000000000)  q[0];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[1], q[2];
u1(0.0)  q[7];
u1(0.0)  q[6];
swap q[2], q[3];
u2(0,pi)  q[1];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
swap q[3], q[5];
u2(0,pi)  q[2];
swap q[0], q[1];
u1(0.0)  q[7];
u1(0.0)  q[6];
cx q[8], q[5];
u1(-0.560000000000000)  q[3];
cx q[4], q[1];
u1(0.0)  q[0];
u1(0.0)  q[2];
u1(2.52000000000000)  q[7];
u1(-0.840000000000000)  q[6];
u1(1.30000000000000)  q[5];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u2(0,pi)  q[0];
u2(0,pi)  q[2];
u1(2.52000000000000)  q[7];
cx q[8], q[5];
u1(0.0)  q[4];
u1(0.0)  q[1];
u1(0.0)  q[0];
u1(0.0)  q[2];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-1.54000000000000)  q[0];
u1(0.560000000000000)  q[2];
u1(0.0)  q[8];
u1(0.0)  q[5];
u1(0.0)  q[4];
u1(0.0)  q[1];
u1(-1.54000000000000)  q[0];
cx q[2], q[3];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u1(0.840000000000000)  q[4];
u1(1.54000000000000)  q[1];
u1(0.560000000000000)  q[3];
u1(0.0)  q[8];
u1(0.0)  q[5];
u1(0.840000000000000)  q[4];
cx q[1], q[0];
cx q[2], q[3];
u1(2.10000000000000)  q[8];
u1(-2.52000000000000)  q[5];
u1(1.54000000000000)  q[0];
cx q[7], q[4];
u1(1.82000000000000)  q[2];
u2(0,pi)  q[3];
u1(2.10000000000000)  q[8];
cx q[6], q[7];
cx q[1], q[0];
cx q[7], q[4];
cx q[9], q[8];
u1(-1.82000000000000)  q[0];
cx q[6], q[7];
u1(-0.840000000000000)  q[4];
u1(-2.10000000000000)  q[8];
swap q[7], q[4];
cx q[9], q[8];
swap q[4], q[1];
cx q[6], q[7];
u2(0,pi)  q[9];
u1(1.82000000000000)  q[8];
swap q[1], q[2];
u1(-2.66000000000000)  q[4];
u1(1.82000000000000)  q[6];
u1(2.66000000000000)  q[7];
u1(0.960000000000000)  q[9];
swap q[2], q[3];
u1(1.82000000000000)  q[1];
u1(-2.66000000000000)  q[4];
u1(1.82000000000000)  q[6];
u2(0,pi)  q[9];
cx q[5], q[3];
u1(0.960000000000000)  q[2];
cx q[0], q[1];
cx q[7], q[4];
u1(0.144000000000000)  q[9];
u1(-2.52000000000000)  q[3];
u2(0,pi)  q[2];
u1(-1.82000000000000)  q[1];
u1(2.66000000000000)  q[4];
u1(-2.70000000000000)  q[9];
cx q[5], q[3];
u1(0.912000000000000)  q[2];
cx q[0], q[1];
u1(-1.82000000000000)  q[5];
u1(-1.82000000000000)  q[3];
u1(-0.720000000000000)  q[2];
u2(0,pi)  q[0];
u1(-1.82000000000000)  q[5];
swap q[3], q[2];
u1(0.960000000000000)  q[0];
swap q[2], q[1];
u1(-0.720000000000000)  q[3];
cx q[8], q[5];
u2(0,pi)  q[0];
swap q[1], q[4];
u2(0,pi)  q[2];
u1(1.82000000000000)  q[5];
u1(0.144000000000000)  q[0];
swap q[4], q[7];
u1(0.960000000000000)  q[2];
cx q[8], q[5];
u1(-1.98000000000000)  q[0];
cx q[7], q[6];
cx q[4], q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u1(-1.98000000000000)  q[0];
u1(-1.82000000000000)  q[6];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(-0.624000000000000)  q[2];
u1(0.960000000000000)  q[8];
u1(0.960000000000000)  q[5];
cx q[7], q[6];
u1(0.960000000000000)  q[4];
u1(0.960000000000000)  q[1];
u1(0.720000000000000)  q[2];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
cx q[2], q[3];
u1(-0.432000000000000)  q[8];
u1(-0.576000000000000)  q[5];
u1(0.960000000000000)  q[7];
u1(0.960000000000000)  q[6];
u1(0.288000000000000)  q[4];
u1(-0.768000000000000)  q[1];
u1(0.720000000000000)  q[3];
u1(2.70000000000000)  q[8];
u1(-3.24000000000000)  q[5];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u1(1.08000000000000)  q[4];
u1(1.98000000000000)  q[1];
cx q[2], q[3];
u1(2.70000000000000)  q[8];
u1(0.528000000000000)  q[7];
u1(0.720000000000000)  q[6];
u1(1.08000000000000)  q[4];
cx q[1], q[0];
u1(2.34000000000000)  q[2];
u2(0,pi)  q[3];
cx q[9], q[8];
u1(3.24000000000000)  q[7];
u1(-1.08000000000000)  q[6];
u1(1.98000000000000)  q[0];
swap q[5], q[3];
u1(-2.70000000000000)  q[8];
u1(3.24000000000000)  q[7];
cx q[1], q[0];
u1(1.92000000000000)  q[5];
cx q[9], q[8];
cx q[7], q[4];
u1(-2.34000000000000)  q[0];
u2(0,pi)  q[5];
u2(0,pi)  q[9];
u1(2.34000000000000)  q[8];
cx q[6], q[7];
u1(1.82400000000000)  q[5];
u1(1.92000000000000)  q[9];
cx q[7], q[4];
u2(0,pi)  q[9];
cx q[6], q[7];
u1(-1.08000000000000)  q[4];
u1(0.288000000000000)  q[9];
swap q[7], q[4];
swap q[4], q[1];
cx q[6], q[7];
swap q[1], q[2];
u1(-3.42000000000000)  q[4];
u1(2.34000000000000)  q[6];
u1(3.42000000000000)  q[7];
cx q[3], q[2];
u1(2.34000000000000)  q[1];
u1(-3.42000000000000)  q[4];
u1(2.34000000000000)  q[6];
u1(-3.24000000000000)  q[2];
cx q[0], q[1];
cx q[7], q[4];
cx q[3], q[2];
u1(-2.34000000000000)  q[1];
u1(3.42000000000000)  q[4];
u1(-2.34000000000000)  q[3];
u1(-2.34000000000000)  q[2];
cx q[0], q[1];
u1(-2.34000000000000)  q[3];
swap q[2], q[1];
u2(0,pi)  q[0];
swap q[1], q[4];
u2(0,pi)  q[2];
swap q[3], q[5];
u1(1.92000000000000)  q[0];
swap q[4], q[7];
cx q[8], q[5];
u1(1.92000000000000)  q[2];
u2(0,pi)  q[0];
cx q[7], q[6];
cx q[4], q[1];
u1(2.34000000000000)  q[5];
u2(0,pi)  q[2];
u1(0.288000000000000)  q[0];
u1(-2.34000000000000)  q[6];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
cx q[8], q[5];
u1(-1.24800000000000)  q[2];
cx q[7], q[6];
u1(1.92000000000000)  q[4];
u1(1.92000000000000)  q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u2(0,pi)  q[4];
u2(0,pi)  q[1];
u1(1.92000000000000)  q[8];
u1(1.92000000000000)  q[5];
u1(1.92000000000000)  q[7];
u1(1.92000000000000)  q[6];
u1(0.576000000000000)  q[4];
u1(-1.53600000000000)  q[1];
u2(0,pi)  q[8];
u2(0,pi)  q[5];
u2(0,pi)  q[7];
u2(0,pi)  q[6];
u1(-0.864000000000000)  q[8];
u1(-1.15200000000000)  q[5];
u1(1.05600000000000)  q[7];
u1(1.44000000000000)  q[6];
measure q[9] -> c[0];
measure q[8] -> c[1];
measure q[5] -> c[2];
measure q[7] -> c[3];
measure q[6] -> c[4];
measure q[4] -> c[5];
measure q[1] -> c[6];
measure q[0] -> c[7];
measure q[2] -> c[8];
measure q[3] -> c[9];
