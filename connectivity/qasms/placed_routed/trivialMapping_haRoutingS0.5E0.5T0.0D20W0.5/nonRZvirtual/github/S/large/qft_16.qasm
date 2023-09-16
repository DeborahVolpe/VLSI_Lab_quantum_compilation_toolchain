OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u2(0,pi)  q[0];
swap q[10], q[12];
u1(-0.785400000000000)  q[0];
swap q[12], q[13];
cx q[0], q[1];
swap q[13], q[14];
swap q[10], q[12];
u1(0.785400000000000)  q[0];
swap q[14], q[11];
cx q[13], q[12];
cx q[0], q[1];
u1(-1*pi/8)  q[0];
u2(0,pi)  q[1];
u1(-0.785400000000000)  q[1];
swap q[2], q[1];
cx q[0], q[1];
u1(1*pi/8)  q[0];
cx q[0], q[1];
u1(-1*pi/16)  q[0];
cx q[2], q[1];
u1(0.785400000000000)  q[2];
swap q[0], q[1];
swap q[1], q[2];
cx q[2], q[3];
cx q[1], q[0];
u1(1*pi/16)  q[2];
u1(-1*pi/8)  q[1];
u2(0,pi)  q[0];
cx q[2], q[3];
u1(-0.785400000000000)  q[0];
u1(-0.0981500000000000)  q[2];
cx q[2], q[3];
cx q[1], q[2];
cx q[2], q[3];
cx q[1], q[2];
u1(1*pi/8)  q[1];
cx q[1], q[4];
cx q[2], q[1];
cx q[1], q[4];
cx q[2], q[1];
u1(0.0981500000000000)  q[2];
cx q[2], q[3];
cx q[1], q[2];
cx q[2], q[3];
cx q[1], q[2];
u1(-1*pi/16)  q[1];
swap q[4], q[1];
cx q[2], q[1];
swap q[3], q[2];
cx q[1], q[2];
u1(-0.0491000000000000)  q[3];
cx q[0], q[1];
cx q[3], q[5];
cx q[1], q[2];
u1(0.0491000000000000)  q[3];
cx q[0], q[1];
cx q[3], q[5];
u1(0.785400000000000)  q[0];
cx q[4], q[1];
u1(-0.0245500000000000)  q[3];
u1(1*pi/16)  q[4];
cx q[1], q[2];
swap q[5], q[3];
cx q[0], q[1];
cx q[1], q[2];
cx q[0], q[1];
u2(0,pi)  q[2];
u1(-1*pi/8)  q[0];
cx q[4], q[1];
u1(-0.785400000000000)  q[2];
u1(-0.0981500000000000)  q[4];
cx q[0], q[1];
swap q[3], q[2];
u1(1*pi/8)  q[0];
swap q[2], q[1];
swap q[5], q[3];
cx q[4], q[1];
u1(0.0981500000000000)  q[4];
cx q[1], q[2];
cx q[0], q[1];
cx q[1], q[2];
cx q[0], q[1];
swap q[3], q[2];
swap q[2], q[1];
u1(-1*pi/16)  q[0];
cx q[5], q[3];
swap q[1], q[4];
u1(0.785400000000000)  q[5];
swap q[4], q[7];
cx q[1], q[2];
cx q[5], q[3];
cx q[7], q[6];
u1(-0.0491000000000000)  q[1];
u1(-1*pi/8)  q[5];
u2(0,pi)  q[3];
u1(0.0245500000000000)  q[7];
cx q[1], q[2];
u1(-0.785400000000000)  q[3];
cx q[7], q[6];
cx q[0], q[1];
cx q[1], q[2];
u1(-0.0122500000000000)  q[7];
cx q[0], q[1];
u1(1*pi/16)  q[0];
swap q[1], q[4];
swap q[4], q[7];
cx q[7], q[6];
cx q[4], q[1];
u1(0.0491000000000000)  q[7];
cx q[1], q[2];
u1(0.0122500000000000)  q[4];
cx q[0], q[1];
cx q[7], q[6];
cx q[1], q[2];
u1(-0.0245500000000000)  q[7];
cx q[0], q[1];
cx q[3], q[2];
u1(-0.0981500000000000)  q[0];
cx q[5], q[3];
cx q[4], q[1];
cx q[3], q[2];
swap q[0], q[1];
cx q[5], q[3];
swap q[1], q[4];
u1(1*pi/8)  q[5];
swap q[4], q[7];
u1(-0.00615000000000000)  q[1];
cx q[7], q[6];
swap q[0], q[1];
swap q[5], q[3];
u1(0.0981500000000000)  q[7];
cx q[4], q[1];
cx q[3], q[2];
u1(-1*pi/16)  q[3];
u1(0.0245500000000000)  q[4];
cx q[7], q[6];
swap q[0], q[1];
swap q[5], q[3];
u1(-0.0491000000000000)  q[7];
cx q[3], q[2];
swap q[8], q[5];
swap q[5], q[3];
swap q[1], q[2];
cx q[2], q[3];
u1(0.785400000000000)  q[5];
swap q[0], q[1];
u1(0.00615000000000000)  q[2];
cx q[4], q[1];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
swap q[2], q[1];
cx q[3], q[5];
swap q[1], q[4];
swap q[4], q[7];
u1(-0.0122500000000000)  q[1];
cx q[7], q[6];
swap q[2], q[1];
u1(1*pi/16)  q[7];
cx q[4], q[1];
swap q[0], q[1];
u1(0.0491000000000000)  q[4];
cx q[7], q[6];
swap q[1], q[2];
u1(-0.0981500000000000)  q[7];
swap q[2], q[3];
swap q[3], q[5];
u1(-0.00305000000000000)  q[2];
cx q[8], q[5];
swap q[1], q[2];
u1(-1*pi/8)  q[8];
u2(0,pi)  q[5];
cx q[2], q[3];
u1(-0.785400000000000)  q[5];
u1(0.0122500000000000)  q[2];
swap q[1], q[2];
swap q[2], q[3];
swap q[0], q[1];
swap q[3], q[5];
cx q[4], q[1];
swap q[8], q[5];
cx q[8], q[9];
swap q[5], q[3];
swap q[3], q[2];
u1(0.00305000000000000)  q[8];
swap q[2], q[1];
cx q[8], q[9];
swap q[1], q[4];
u1(-0.00155000000000000)  q[8];
swap q[4], q[7];
u1(-0.0245500000000000)  q[1];
swap q[9], q[8];
cx q[7], q[6];
swap q[2], q[1];
u1(1*pi/8)  q[7];
cx q[4], q[1];
swap q[3], q[2];
swap q[2], q[1];
u1(0.0981500000000000)  q[4];
cx q[7], q[6];
cx q[0], q[1];
u1(-1*pi/16)  q[7];
u1(-0.00615000000000000)  q[0];
cx q[2], q[1];
cx q[3], q[2];
cx q[2], q[1];
cx q[3], q[2];
u1(0.0245500000000000)  q[3];
cx q[1], q[2];
swap q[5], q[3];
cx q[4], q[1];
swap q[8], q[5];
cx q[1], q[2];
cx q[4], q[1];
swap q[0], q[1];
swap q[1], q[2];
swap q[3], q[2];
cx q[3], q[5];
swap q[2], q[1];
swap q[1], q[4];
u1(0.00615000000000000)  q[3];
swap q[4], q[7];
u1(-0.0491000000000000)  q[1];
cx q[7], q[6];
swap q[2], q[1];
u1(0.785400000000000)  q[7];
cx q[4], q[1];
swap q[0], q[1];
u1(1*pi/16)  q[4];
cx q[7], q[6];
swap q[1], q[2];
u1(-1*pi/8)  q[7];
u2(0,pi)  q[6];
swap q[2], q[3];
u1(-0.785400000000000)  q[6];
cx q[5], q[3];
cx q[8], q[5];
cx q[5], q[3];
cx q[8], q[5];
swap q[2], q[3];
swap q[9], q[8];
cx q[1], q[2];
cx q[3], q[5];
cx q[8], q[11];
u1(-0.0122500000000000)  q[9];
u1(0.0491000000000000)  q[1];
u1(-0.00305000000000000)  q[3];
u1(0.00155000000000000)  q[8];
cx q[1], q[0];
cx q[8], q[11];
cx q[4], q[1];
cx q[8], q[5];
cx q[1], q[0];
cx q[9], q[8];
cx q[4], q[1];
cx q[8], q[5];
u1(-0.0981500000000000)  q[4];
cx q[1], q[2];
cx q[9], q[8];
swap q[3], q[5];
swap q[7], q[4];
cx q[1], q[0];
u1(0.0122500000000000)  q[9];
u1(-0.000750000000000000)  q[8];
cx q[4], q[1];
swap q[11], q[8];
cx q[1], q[0];
cx q[5], q[8];
cx q[4], q[1];
cx q[11], q[14];
u1(1*pi/8)  q[4];
u1(-0.0245500000000000)  q[1];
u1(0.00305000000000000)  q[5];
swap q[9], q[8];
u1(0.000750000000000000)  q[11];
swap q[2], q[1];
swap q[8], q[5];
cx q[11], q[14];
swap q[1], q[4];
cx q[5], q[3];
cx q[8], q[9];
u1(-0.000400000000000000)  q[11];
cx q[7], q[4];
u1(-0.00615000000000000)  q[5];
cx q[1], q[0];
cx q[2], q[3];
u1(-0.00155000000000000)  q[8];
swap q[14], q[11];
u1(0.0981500000000000)  q[7];
u1(-1*pi/16)  q[1];
u1(0.0245500000000000)  q[2];
swap q[9], q[8];
cx q[14], q[13];
cx q[7], q[4];
cx q[5], q[8];
swap q[0], q[1];
cx q[2], q[3];
cx q[13], q[12];
swap q[1], q[4];
u1(0.00615000000000000)  q[5];
cx q[8], q[11];
u1(-0.0122500000000000)  q[2];
cx q[14], q[13];
cx q[7], q[4];
cx q[0], q[1];
cx q[9], q[8];
swap q[3], q[2];
u1(0.000400000000000000)  q[14];
cx q[13], q[12];
cx q[6], q[7];
cx q[8], q[11];
u1(1*pi/16)  q[0];
swap q[2], q[1];
cx q[14], q[13];
cx q[7], q[4];
cx q[9], q[8];
cx q[13], q[12];
cx q[6], q[7];
u1(0.00155000000000000)  q[9];
cx q[5], q[8];
cx q[14], q[13];
u1(0.785400000000000)  q[6];
u1(-0.0491000000000000)  q[7];
u1(-0.00305000000000000)  q[5];
u1(-0.000200000000000000)  q[14];
swap q[12], q[13];
cx q[7], q[4];
swap q[8], q[5];
swap q[13], q[14];
cx q[6], q[7];
cx q[3], q[5];
cx q[8], q[11];
swap q[13], q[12];
cx q[7], q[4];
cx q[9], q[8];
u1(0.0122500000000000)  q[3];
cx q[12], q[10];
cx q[6], q[7];
swap q[1], q[4];
cx q[8], q[11];
cx q[3], q[5];
u1(0.000200000000000000)  q[12];
cx q[7], q[4];
u1(-1*pi/8)  q[6];
u2(0,pi)  q[1];
cx q[9], q[8];
u1(-0.00615000000000000)  q[3];
cx q[12], q[10];
u1(0.0491000000000000)  q[7];
swap q[2], q[1];
u1(-0.000750000000000000)  q[9];
cx q[8], q[11];
swap q[5], q[3];
u1(-0.000100000000000000)  q[12];
cx q[0], q[1];
u1(-0.785400000000000)  q[2];
cx q[7], q[4];
u1(0.00305000000000000)  q[8];
swap q[14], q[11];
swap q[10], q[12];
u1(-0.0981500000000000)  q[0];
swap q[1], q[4];
cx q[8], q[11];
swap q[3], q[2];
swap q[12], q[13];
cx q[7], q[4];
cx q[0], q[1];
cx q[9], q[8];
cx q[10], q[12];
cx q[6], q[7];
cx q[8], q[11];
u1(0.0981500000000000)  q[0];
swap q[2], q[1];
cx q[7], q[4];
cx q[9], q[8];
cx q[6], q[7];
u1(0.000750000000000000)  q[9];
swap q[8], q[11];
u1(1*pi/8)  q[6];
u1(-0.0245500000000000)  q[7];
cx q[11], q[14];
cx q[9], q[8];
cx q[7], q[4];
u1(-0.00155000000000000)  q[11];
swap q[5], q[8];
u1(-0.000400000000000000)  q[9];
cx q[6], q[7];
swap q[14], q[11];
cx q[7], q[4];
cx q[8], q[11];
cx q[6], q[7];
swap q[1], q[4];
u1(0.00615000000000000)  q[8];
swap q[14], q[11];
cx q[7], q[4];
u1(-1*pi/16)  q[6];
swap q[1], q[2];
swap q[11], q[8];
u1(0.0245500000000000)  q[7];
cx q[3], q[2];
cx q[0], q[1];
cx q[8], q[5];
cx q[11], q[14];
u1(0.785400000000000)  q[3];
u1(-0.0491000000000000)  q[0];
cx q[7], q[4];
u1(0.00155000000000000)  q[8];
swap q[13], q[14];
swap q[1], q[4];
cx q[3], q[2];
swap q[9], q[8];
swap q[14], q[11];
swap q[13], q[12];
cx q[7], q[4];
cx q[0], q[1];
cx q[8], q[11];
u1(-1*pi/8)  q[3];
u2(0,pi)  q[2];
u1(-0.00305000000000000)  q[14];
swap q[12], q[10];
cx q[6], q[7];
u1(0.0491000000000000)  q[0];
u1(0.000400000000000000)  q[8];
u1(-0.785400000000000)  q[2];
u1(0.000100000000000000)  q[12];
cx q[7], q[4];
swap q[9], q[8];
cx q[0], q[1];
cx q[12], q[13];
cx q[6], q[7];
cx q[8], q[5];
u1(-0.0245500000000000)  q[0];
u1(-5.00000000000000e-5)  q[12];
u1(1*pi/16)  q[6];
u1(-0.0122500000000000)  q[7];
u1(-0.000750000000000000)  q[8];
cx q[12], q[15];
cx q[7], q[10];
cx q[8], q[11];
u1(5.00000000000000e-5)  q[12];
cx q[7], q[4];
cx q[9], q[8];
cx q[12], q[15];
cx q[6], q[7];
cx q[8], q[11];
u2(0,pi)  q[12];
cx q[7], q[4];
cx q[9], q[8];
swap q[14], q[11];
swap q[15], q[12];
cx q[6], q[7];
swap q[4], q[1];
swap q[11], q[8];
u1(-0.000200000000000000)  q[9];
u1(-0.0981500000000000)  q[6];
u1(0.0122500000000000)  q[7];
cx q[2], q[1];
cx q[8], q[5];
cx q[11], q[14];
cx q[3], q[2];
u1(0.00305000000000000)  q[8];
cx q[7], q[10];
u1(0.000750000000000000)  q[11];
swap q[13], q[14];
cx q[2], q[1];
cx q[7], q[4];
cx q[8], q[5];
swap q[14], q[11];
cx q[3], q[2];
cx q[6], q[7];
cx q[8], q[11];
cx q[14], q[13];
u1(1*pi/8)  q[3];
cx q[7], q[4];
cx q[2], q[1];
cx q[9], q[8];
u1(-0.000400000000000000)  q[14];
cx q[6], q[7];
cx q[3], q[2];
cx q[8], q[11];
u1(0.0981500000000000)  q[6];
u1(-0.00615000000000000)  q[7];
cx q[2], q[1];
cx q[9], q[8];
swap q[10], q[7];
cx q[3], q[2];
swap q[0], q[1];
u1(-0.00155000000000000)  q[8];
u1(0.000200000000000000)  q[9];
swap q[1], q[4];
u1(-1*pi/16)  q[3];
swap q[8], q[11];
cx q[4], q[7];
swap q[5], q[3];
cx q[9], q[8];
swap q[11], q[14];
u1(0.0245500000000000)  q[4];
swap q[6], q[7];
cx q[14], q[13];
u1(-0.000100000000000000)  q[9];
cx q[11], q[8];
cx q[4], q[1];
u1(0.00155000000000000)  q[14];
u1(0.000400000000000000)  q[11];
cx q[7], q[4];
cx q[14], q[13];
cx q[4], q[1];
swap q[12], q[13];
cx q[7], q[4];
swap q[2], q[1];
swap q[13], q[14];
cx q[1], q[0];
swap q[10], q[7];
swap q[3], q[2];
swap q[14], q[11];
u1(-0.000750000000000000)  q[13];
swap q[7], q[4];
swap q[2], q[1];
u1(-0.0491000000000000)  q[10];
cx q[5], q[3];
cx q[8], q[11];
cx q[4], q[1];
u1(0.785400000000000)  q[2];
cx q[7], q[6];
u1(1*pi/16)  q[5];
cx q[9], q[8];
u1(0.00615000000000000)  q[4];
u1(-0.0122500000000000)  q[7];
cx q[5], q[3];
cx q[8], q[11];
cx q[4], q[1];
swap q[10], q[7];
cx q[9], q[8];
u1(-0.0981500000000000)  q[5];
swap q[14], q[11];
cx q[7], q[6];
cx q[1], q[0];
u1(-0.00305000000000000)  q[4];
u1(0.000100000000000000)  q[9];
cx q[11], q[8];
cx q[2], q[1];
u1(0.0491000000000000)  q[7];
u1(-0.000200000000000000)  q[11];
cx q[1], q[0];
swap q[10], q[7];
swap q[14], q[11];
cx q[2], q[1];
u2(0,pi)  q[0];
swap q[7], q[4];
cx q[8], q[11];
swap q[13], q[14];
u1(-1*pi/8)  q[2];
cx q[4], q[1];
u1(-0.785400000000000)  q[0];
swap q[7], q[10];
cx q[9], q[8];
u1(0.0122500000000000)  q[4];
cx q[2], q[3];
cx q[7], q[6];
cx q[10], q[12];
cx q[8], q[11];
u1(1*pi/8)  q[2];
u1(-0.0245500000000000)  q[7];
u1(0.00305000000000000)  q[10];
cx q[4], q[1];
cx q[9], q[8];
swap q[14], q[11];
swap q[5], q[3];
cx q[11], q[8];
swap q[3], q[2];
u2(0,pi)  q[9];
cx q[10], q[12];
cx q[13], q[14];
swap q[2], q[1];
u1(0.000750000000000000)  q[11];
cx q[3], q[5];
u1(-0.00155000000000000)  q[10];
u1(0.000200000000000000)  q[13];
swap q[1], q[4];
u1(-1*pi/16)  q[3];
cx q[11], q[8];
swap q[12], q[10];
cx q[13], q[14];
swap q[4], q[7];
u1(-0.00615000000000000)  q[1];
swap q[5], q[3];
u1(-0.000400000000000000)  q[11];
swap q[12], q[13];
cx q[7], q[6];
swap q[2], q[1];
swap q[13], q[14];
u2(0,pi)  q[12];
u1(0.0981500000000000)  q[7];
cx q[4], q[1];
swap q[14], q[11];
u1(0.0245500000000000)  q[4];
cx q[7], q[6];
swap q[2], q[1];
cx q[11], q[8];
cx q[14], q[13];
swap q[10], q[7];
u1(0.00155000000000000)  q[11];
u1(0.000400000000000000)  q[14];
swap q[7], q[4];
u1(-0.0491000000000000)  q[10];
cx q[11], q[8];
cx q[14], q[13];
cx q[1], q[4];
u1(-0.000750000000000000)  q[11];
u2(0,pi)  q[14];
swap q[0], q[1];
swap q[13], q[14];
swap q[1], q[2];
u1(0.00615000000000000)  q[0];
cx q[11], q[14];
cx q[2], q[3];
cx q[4], q[1];
u1(0.000750000000000000)  q[11];
u1(0.785400000000000)  q[2];
cx q[7], q[4];
swap q[5], q[3];
cx q[11], q[14];
cx q[4], q[1];
swap q[3], q[2];
u2(0,pi)  q[11];
cx q[7], q[4];
swap q[2], q[1];
cx q[3], q[5];
swap q[14], q[11];
swap q[6], q[7];
u2(0,pi)  q[5];
u1(-1*pi/8)  q[3];
swap q[7], q[4];
u1(-0.0122500000000000)  q[6];
u1(-0.785400000000000)  q[5];
cx q[1], q[4];
swap q[8], q[5];
u1(1*pi/16)  q[1];
swap q[2], q[1];
swap q[1], q[4];
cx q[7], q[4];
cx q[10], q[7];
cx q[7], q[4];
cx q[10], q[7];
swap q[7], q[4];
u1(0.0491000000000000)  q[10];
cx q[1], q[4];
cx q[0], q[1];
cx q[1], q[4];
cx q[0], q[1];
swap q[4], q[7];
u1(-0.00305000000000000)  q[0];
cx q[2], q[1];
cx q[6], q[7];
u1(-0.0981500000000000)  q[2];
u1(0.0122500000000000)  q[6];
cx q[7], q[4];
swap q[1], q[2];
cx q[10], q[7];
cx q[3], q[2];
cx q[7], q[4];
swap q[5], q[3];
cx q[10], q[7];
swap q[3], q[2];
u1(1*pi/8)  q[5];
u1(-0.0245500000000000)  q[10];
cx q[6], q[7];
cx q[1], q[2];
u1(-0.00615000000000000)  q[6];
cx q[5], q[3];
cx q[10], q[7];
cx q[0], q[1];
u1(-1*pi/16)  q[5];
u1(0.0245500000000000)  q[10];
cx q[1], q[2];
cx q[5], q[3];
cx q[0], q[1];
cx q[8], q[5];
u1(0.00305000000000000)  q[0];
cx q[1], q[4];
cx q[5], q[3];
u1(0.0981500000000000)  q[1];
cx q[8], q[5];
cx q[1], q[2];
u1(0.785400000000000)  q[8];
swap q[5], q[3];
cx q[0], q[1];
cx q[1], q[2];
cx q[0], q[1];
u1(-0.00155000000000000)  q[0];
cx q[1], q[4];
swap q[2], q[1];
swap q[1], q[4];
u1(-0.0491000000000000)  q[2];
swap q[4], q[7];
swap q[1], q[2];
cx q[6], q[7];
cx q[3], q[2];
swap q[0], q[1];
u1(0.00615000000000000)  q[6];
cx q[7], q[4];
swap q[1], q[2];
cx q[10], q[7];
swap q[2], q[3];
cx q[7], q[4];
swap q[3], q[5];
u1(1*pi/16)  q[2];
cx q[10], q[7];
swap q[5], q[8];
swap q[4], q[1];
cx q[8], q[11];
u1(-0.0122500000000000)  q[10];
cx q[5], q[3];
cx q[6], q[7];
cx q[0], q[1];
u1(0.00155000000000000)  q[8];
u1(-1*pi/8)  q[5];
u2(0,pi)  q[3];
u1(0.0491000000000000)  q[0];
u1(-0.00305000000000000)  q[6];
cx q[10], q[7];
cx q[1], q[4];
cx q[8], q[11];
cx q[2], q[1];
u1(-0.785400000000000)  q[3];
u1(0.0122500000000000)  q[10];
swap q[6], q[7];
cx q[1], q[4];
u2(0,pi)  q[8];
swap q[5], q[3];
swap q[7], q[10];
cx q[2], q[1];
swap q[10], q[12];
cx q[7], q[6];
u1(-0.0981500000000000)  q[2];
cx q[0], q[1];
swap q[12], q[13];
u1(-0.00615000000000000)  q[7];
swap q[3], q[2];
swap q[13], q[14];
u1(-0.0245500000000000)  q[0];
swap q[6], q[7];
swap q[2], q[1];
cx q[14], q[11];
cx q[1], q[4];
u1(0.00305000000000000)  q[14];
cx q[3], q[2];
u1(1*pi/8)  q[1];
u1(0.0981500000000000)  q[3];
cx q[14], q[11];
cx q[1], q[4];
u2(0,pi)  q[14];
cx q[3], q[2];
swap q[7], q[4];
swap q[5], q[3];
swap q[4], q[1];
u1(-0.0491000000000000)  q[5];
cx q[0], q[1];
u1(-1*pi/16)  q[4];
u1(0.0245500000000000)  q[0];
swap q[7], q[4];
swap q[4], q[1];
swap q[6], q[7];
swap q[1], q[2];
swap q[7], q[10];
cx q[3], q[2];
swap q[10], q[12];
swap q[1], q[4];
swap q[6], q[7];
swap q[12], q[13];
u1(0.785400000000000)  q[3];
cx q[0], q[1];
cx q[7], q[4];
swap q[13], q[14];
u1(1*pi/16)  q[7];
u1(-0.0122500000000000)  q[0];
cx q[3], q[2];
cx q[14], q[11];
swap q[1], q[2];
cx q[7], q[4];
u1(0.00615000000000000)  q[14];
cx q[3], q[2];
u2(0,pi)  q[1];
u1(-0.0981500000000000)  q[7];
cx q[14], q[11];
cx q[5], q[3];
cx q[3], q[2];
u2(0,pi)  q[14];
swap q[11], q[8];
cx q[5], q[3];
u1(-1*pi/8)  q[3];
u1(0.0491000000000000)  q[5];
swap q[8], q[5];
swap q[5], q[3];
swap q[3], q[2];
cx q[1], q[2];
cx q[5], q[3];
cx q[0], q[1];
cx q[8], q[5];
cx q[1], q[2];
cx q[5], q[3];
cx q[0], q[1];
cx q[8], q[5];
u1(-0.785400000000000)  q[1];
u1(0.0122500000000000)  q[0];
u1(-0.0245500000000000)  q[8];
swap q[4], q[1];
swap q[1], q[2];
swap q[2], q[3];
cx q[0], q[1];
cx q[5], q[3];
swap q[2], q[1];
u2(0,pi)  q[0];
u1(1*pi/8)  q[5];
cx q[4], q[1];
cx q[7], q[4];
cx q[5], q[3];
cx q[4], q[1];
swap q[2], q[3];
cx q[7], q[4];
cx q[5], q[3];
u1(0.0981500000000000)  q[7];
cx q[8], q[5];
swap q[4], q[1];
cx q[5], q[3];
cx q[1], q[2];
cx q[7], q[4];
cx q[8], q[5];
u1(0.785400000000000)  q[1];
u1(-0.0491000000000000)  q[7];
u1(-1*pi/16)  q[5];
u1(0.0245500000000000)  q[8];
swap q[4], q[1];
cx q[5], q[3];
swap q[1], q[2];
cx q[8], q[5];
cx q[4], q[1];
cx q[5], q[3];
cx q[8], q[5];
swap q[2], q[3];
cx q[5], q[3];
u2(0,pi)  q[8];
swap q[2], q[1];
u1(1*pi/16)  q[5];
cx q[4], q[1];
u2(0,pi)  q[2];
cx q[7], q[4];
cx q[5], q[3];
u1(-0.785400000000000)  q[2];
cx q[4], q[1];
u1(-0.0981500000000000)  q[5];
swap q[3], q[2];
cx q[7], q[4];
u1(-1*pi/8)  q[4];
u1(0.0491000000000000)  q[7];
cx q[4], q[1];
cx q[7], q[4];
cx q[4], q[1];
cx q[7], q[4];
swap q[2], q[1];
cx q[4], q[1];
u2(0,pi)  q[7];
cx q[3], q[2];
u1(1*pi/8)  q[4];
cx q[5], q[3];
cx q[3], q[2];
cx q[4], q[1];
cx q[5], q[3];
u1(-1*pi/16)  q[4];
u1(0.0981500000000000)  q[5];
swap q[2], q[3];
cx q[2], q[1];
cx q[5], q[3];
u1(0.785400000000000)  q[2];
u2(0,pi)  q[5];
swap q[3], q[2];
swap q[2], q[1];
cx q[4], q[1];
cx q[3], q[2];
u1(1*pi/16)  q[4];
u1(-1*pi/8)  q[3];
u2(0,pi)  q[2];
cx q[4], q[1];
u1(-0.785400000000000)  q[2];
u2(0,pi)  q[4];
swap q[1], q[2];
cx q[3], q[2];
u1(1*pi/8)  q[3];
cx q[3], q[2];
u2(0,pi)  q[3];
cx q[1], q[2];
u1(0.785400000000000)  q[1];
cx q[1], q[2];
u2(0,pi)  q[1];
u2(0,pi)  q[2];
u2(0,pi)  q[2];
measure q[15] -> c[0];
measure q[9] -> c[1];
measure q[6] -> c[2];
measure q[10] -> c[3];
measure q[12] -> c[4];
measure q[11] -> c[5];
measure q[13] -> c[6];
measure q[14] -> c[7];
measure q[0] -> c[8];
measure q[8] -> c[9];
measure q[7] -> c[10];
measure q[5] -> c[11];
measure q[4] -> c[12];
measure q[3] -> c[13];
measure q[1] -> c[14];
measure q[2] -> c[15];
