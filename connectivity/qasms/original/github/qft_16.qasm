OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
h q[0];
rz(-0.7854) q[0];
cx q[0],q[1];
rz(0.7854) q[0];
cx q[0],q[1];
rz(-0.3927) q[0];
cx q[0],q[2];
rz(0.3927) q[0];
cx q[0],q[2];
rz(-0.19635) q[0];
cx q[0],q[3];
rz(0.19635) q[0];
cx q[0],q[3];
rz(-0.09815) q[0];
cx q[0],q[4];
rz(0.09815) q[0];
cx q[0],q[4];
rz(-0.0491) q[0];
cx q[0],q[5];
rz(0.0491) q[0];
cx q[0],q[5];
rz(-0.02455) q[0];
cx q[0],q[6];
rz(0.02455) q[0];
cx q[0],q[6];
rz(-0.01225) q[0];
cx q[0],q[7];
rz(0.01225) q[0];
cx q[0],q[7];
rz(-0.00615) q[0];
cx q[0],q[8];
rz(0.00615) q[0];
cx q[0],q[8];
rz(-0.00305) q[0];
cx q[0],q[9];
rz(0.00305) q[0];
cx q[0],q[9];
rz(-0.00155) q[0];
cx q[0],q[10];
rz(0.00155) q[0];
cx q[0],q[10];
rz(-0.00075) q[0];
cx q[0],q[11];
rz(0.00075) q[0];
cx q[0],q[11];
rz(-0.0004) q[0];
cx q[0],q[12];
rz(0.0004) q[0];
cx q[0],q[12];
rz(-0.0002) q[0];
cx q[0],q[13];
rz(0.0002) q[0];
cx q[0],q[13];
rz(-0.0001) q[0];
cx q[0],q[14];
rz(0.0001) q[0];
cx q[0],q[14];
rz(-0.00005) q[0];
cx q[0],q[15];
rz(0.00005) q[0];
cx q[0],q[15];
h q[1];
rz(-0.7854) q[1];
cx q[1],q[2];
rz(0.7854) q[1];
cx q[1],q[2];
rz(-0.3927) q[1];
cx q[1],q[3];
rz(0.3927) q[1];
cx q[1],q[3];
rz(-0.19635) q[1];
cx q[1],q[4];
rz(0.19635) q[1];
cx q[1],q[4];
rz(-0.09815) q[1];
cx q[1],q[5];
rz(0.09815) q[1];
cx q[1],q[5];
rz(-0.0491) q[1];
cx q[1],q[6];
rz(0.0491) q[1];
cx q[1],q[6];
rz(-0.02455) q[1];
cx q[1],q[7];
rz(0.02455) q[1];
cx q[1],q[7];
rz(-0.01225) q[1];
cx q[1],q[8];
rz(0.01225) q[1];
cx q[1],q[8];
rz(-0.00615) q[1];
cx q[1],q[9];
rz(0.00615) q[1];
cx q[1],q[9];
rz(-0.00305) q[1];
cx q[1],q[10];
rz(0.00305) q[1];
cx q[1],q[10];
rz(-0.00155) q[1];
cx q[1],q[11];
rz(0.00155) q[1];
cx q[1],q[11];
rz(-0.00075) q[1];
cx q[1],q[12];
rz(0.00075) q[1];
cx q[1],q[12];
rz(-0.0004) q[1];
cx q[1],q[13];
rz(0.0004) q[1];
cx q[1],q[13];
rz(-0.0002) q[1];
cx q[1],q[14];
rz(0.0002) q[1];
cx q[1],q[14];
rz(-0.0001) q[1];
cx q[1],q[15];
rz(0.0001) q[1];
cx q[1],q[15];
h q[2];
rz(-0.7854) q[2];
cx q[2],q[3];
rz(0.7854) q[2];
cx q[2],q[3];
rz(-0.3927) q[2];
cx q[2],q[4];
rz(0.3927) q[2];
cx q[2],q[4];
rz(-0.19635) q[2];
cx q[2],q[5];
rz(0.19635) q[2];
cx q[2],q[5];
rz(-0.09815) q[2];
cx q[2],q[6];
rz(0.09815) q[2];
cx q[2],q[6];
rz(-0.0491) q[2];
cx q[2],q[7];
rz(0.0491) q[2];
cx q[2],q[7];
rz(-0.02455) q[2];
cx q[2],q[8];
rz(0.02455) q[2];
cx q[2],q[8];
rz(-0.01225) q[2];
cx q[2],q[9];
rz(0.01225) q[2];
cx q[2],q[9];
rz(-0.00615) q[2];
cx q[2],q[10];
rz(0.00615) q[2];
cx q[2],q[10];
rz(-0.00305) q[2];
cx q[2],q[11];
rz(0.00305) q[2];
cx q[2],q[11];
rz(-0.00155) q[2];
cx q[2],q[12];
rz(0.00155) q[2];
cx q[2],q[12];
rz(-0.00075) q[2];
cx q[2],q[13];
rz(0.00075) q[2];
cx q[2],q[13];
rz(-0.0004) q[2];
cx q[2],q[14];
rz(0.0004) q[2];
cx q[2],q[14];
rz(-0.0002) q[2];
cx q[2],q[15];
rz(0.0002) q[2];
cx q[2],q[15];
h q[3];
rz(-0.7854) q[3];
cx q[3],q[4];
rz(0.7854) q[3];
cx q[3],q[4];
rz(-0.3927) q[3];
cx q[3],q[5];
rz(0.3927) q[3];
cx q[3],q[5];
rz(-0.19635) q[3];
cx q[3],q[6];
rz(0.19635) q[3];
cx q[3],q[6];
rz(-0.09815) q[3];
cx q[3],q[7];
rz(0.09815) q[3];
cx q[3],q[7];
rz(-0.0491) q[3];
cx q[3],q[8];
rz(0.0491) q[3];
cx q[3],q[8];
rz(-0.02455) q[3];
cx q[3],q[9];
rz(0.02455) q[3];
cx q[3],q[9];
rz(-0.01225) q[3];
cx q[3],q[10];
rz(0.01225) q[3];
cx q[3],q[10];
rz(-0.00615) q[3];
cx q[3],q[11];
rz(0.00615) q[3];
cx q[3],q[11];
rz(-0.00305) q[3];
cx q[3],q[12];
rz(0.00305) q[3];
cx q[3],q[12];
rz(-0.00155) q[3];
cx q[3],q[13];
rz(0.00155) q[3];
cx q[3],q[13];
rz(-0.00075) q[3];
cx q[3],q[14];
rz(0.00075) q[3];
cx q[3],q[14];
rz(-0.0004) q[3];
cx q[3],q[15];
rz(0.0004) q[3];
cx q[3],q[15];
h q[4];
rz(-0.7854) q[4];
cx q[4],q[5];
rz(0.7854) q[4];
cx q[4],q[5];
rz(-0.3927) q[4];
cx q[4],q[6];
rz(0.3927) q[4];
cx q[4],q[6];
rz(-0.19635) q[4];
cx q[4],q[7];
rz(0.19635) q[4];
cx q[4],q[7];
rz(-0.09815) q[4];
cx q[4],q[8];
rz(0.09815) q[4];
cx q[4],q[8];
rz(-0.0491) q[4];
cx q[4],q[9];
rz(0.0491) q[4];
cx q[4],q[9];
rz(-0.02455) q[4];
cx q[4],q[10];
rz(0.02455) q[4];
cx q[4],q[10];
rz(-0.01225) q[4];
cx q[4],q[11];
rz(0.01225) q[4];
cx q[4],q[11];
rz(-0.00615) q[4];
cx q[4],q[12];
rz(0.00615) q[4];
cx q[4],q[12];
rz(-0.00305) q[4];
cx q[4],q[13];
rz(0.00305) q[4];
cx q[4],q[13];
rz(-0.00155) q[4];
cx q[4],q[14];
rz(0.00155) q[4];
cx q[4],q[14];
rz(-0.00075) q[4];
cx q[4],q[15];
rz(0.00075) q[4];
cx q[4],q[15];
h q[5];
rz(-0.7854) q[5];
cx q[5],q[6];
rz(0.7854) q[5];
cx q[5],q[6];
rz(-0.3927) q[5];
cx q[5],q[7];
rz(0.3927) q[5];
cx q[5],q[7];
rz(-0.19635) q[5];
cx q[5],q[8];
rz(0.19635) q[5];
cx q[5],q[8];
rz(-0.09815) q[5];
cx q[5],q[9];
rz(0.09815) q[5];
cx q[5],q[9];
rz(-0.0491) q[5];
cx q[5],q[10];
rz(0.0491) q[5];
cx q[5],q[10];
rz(-0.02455) q[5];
cx q[5],q[11];
rz(0.02455) q[5];
cx q[5],q[11];
rz(-0.01225) q[5];
cx q[5],q[12];
rz(0.01225) q[5];
cx q[5],q[12];
rz(-0.00615) q[5];
cx q[5],q[13];
rz(0.00615) q[5];
cx q[5],q[13];
rz(-0.00305) q[5];
cx q[5],q[14];
rz(0.00305) q[5];
cx q[5],q[14];
rz(-0.00155) q[5];
cx q[5],q[15];
rz(0.00155) q[5];
cx q[5],q[15];
h q[6];
rz(-0.7854) q[6];
cx q[6],q[7];
rz(0.7854) q[6];
cx q[6],q[7];
rz(-0.3927) q[6];
cx q[6],q[8];
rz(0.3927) q[6];
cx q[6],q[8];
rz(-0.19635) q[6];
cx q[6],q[9];
rz(0.19635) q[6];
cx q[6],q[9];
rz(-0.09815) q[6];
cx q[6],q[10];
rz(0.09815) q[6];
cx q[6],q[10];
rz(-0.0491) q[6];
cx q[6],q[11];
rz(0.0491) q[6];
cx q[6],q[11];
rz(-0.02455) q[6];
cx q[6],q[12];
rz(0.02455) q[6];
cx q[6],q[12];
rz(-0.01225) q[6];
cx q[6],q[13];
rz(0.01225) q[6];
cx q[6],q[13];
rz(-0.00615) q[6];
cx q[6],q[14];
rz(0.00615) q[6];
cx q[6],q[14];
rz(-0.00305) q[6];
cx q[6],q[15];
rz(0.00305) q[6];
cx q[6],q[15];
h q[7];
rz(-0.7854) q[7];
cx q[7],q[8];
rz(0.7854) q[7];
cx q[7],q[8];
rz(-0.3927) q[7];
cx q[7],q[9];
rz(0.3927) q[7];
cx q[7],q[9];
rz(-0.19635) q[7];
cx q[7],q[10];
rz(0.19635) q[7];
cx q[7],q[10];
rz(-0.09815) q[7];
cx q[7],q[11];
rz(0.09815) q[7];
cx q[7],q[11];
rz(-0.0491) q[7];
cx q[7],q[12];
rz(0.0491) q[7];
cx q[7],q[12];
rz(-0.02455) q[7];
cx q[7],q[13];
rz(0.02455) q[7];
cx q[7],q[13];
rz(-0.01225) q[7];
cx q[7],q[14];
rz(0.01225) q[7];
cx q[7],q[14];
rz(-0.00615) q[7];
cx q[7],q[15];
rz(0.00615) q[7];
cx q[7],q[15];
h q[8];
rz(-0.7854) q[8];
cx q[8],q[9];
rz(0.7854) q[8];
cx q[8],q[9];
rz(-0.3927) q[8];
cx q[8],q[10];
rz(0.3927) q[8];
cx q[8],q[10];
rz(-0.19635) q[8];
cx q[8],q[11];
rz(0.19635) q[8];
cx q[8],q[11];
rz(-0.09815) q[8];
cx q[8],q[12];
rz(0.09815) q[8];
cx q[8],q[12];
rz(-0.0491) q[8];
cx q[8],q[13];
rz(0.0491) q[8];
cx q[8],q[13];
rz(-0.02455) q[8];
cx q[8],q[14];
rz(0.02455) q[8];
cx q[8],q[14];
rz(-0.01225) q[8];
cx q[8],q[15];
rz(0.01225) q[8];
cx q[8],q[15];
h q[9];
rz(-0.7854) q[9];
cx q[9],q[10];
rz(0.7854) q[9];
cx q[9],q[10];
rz(-0.3927) q[9];
cx q[9],q[11];
rz(0.3927) q[9];
cx q[9],q[11];
rz(-0.19635) q[9];
cx q[9],q[12];
rz(0.19635) q[9];
cx q[9],q[12];
rz(-0.09815) q[9];
cx q[9],q[13];
rz(0.09815) q[9];
cx q[9],q[13];
rz(-0.0491) q[9];
cx q[9],q[14];
rz(0.0491) q[9];
cx q[9],q[14];
rz(-0.02455) q[9];
cx q[9],q[15];
rz(0.02455) q[9];
cx q[9],q[15];
h q[10];
rz(-0.7854) q[10];
cx q[10],q[11];
rz(0.7854) q[10];
cx q[10],q[11];
rz(-0.3927) q[10];
cx q[10],q[12];
rz(0.3927) q[10];
cx q[10],q[12];
rz(-0.19635) q[10];
cx q[10],q[13];
rz(0.19635) q[10];
cx q[10],q[13];
rz(-0.09815) q[10];
cx q[10],q[14];
rz(0.09815) q[10];
cx q[10],q[14];
rz(-0.0491) q[10];
cx q[10],q[15];
rz(0.0491) q[10];
cx q[10],q[15];
h q[11];
rz(-0.7854) q[11];
cx q[11],q[12];
rz(0.7854) q[11];
cx q[11],q[12];
rz(-0.3927) q[11];
cx q[11],q[13];
rz(0.3927) q[11];
cx q[11],q[13];
rz(-0.19635) q[11];
cx q[11],q[14];
rz(0.19635) q[11];
cx q[11],q[14];
rz(-0.09815) q[11];
cx q[11],q[15];
rz(0.09815) q[11];
cx q[11],q[15];
h q[12];
rz(-0.7854) q[12];
cx q[12],q[13];
rz(0.7854) q[12];
cx q[12],q[13];
rz(-0.3927) q[12];
cx q[12],q[14];
rz(0.3927) q[12];
cx q[12],q[14];
rz(-0.19635) q[12];
cx q[12],q[15];
rz(0.19635) q[12];
cx q[12],q[15];
h q[13];
rz(-0.7854) q[13];
cx q[13],q[14];
rz(0.7854) q[13];
cx q[13],q[14];
rz(-0.3927) q[13];
cx q[13],q[15];
rz(0.3927) q[13];
cx q[13],q[15];
h q[14];
rz(-0.7854) q[14];
cx q[14],q[15];
rz(0.7854) q[14];
cx q[14],q[15];
h q[15];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
measure q->c;