OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[16];
u2(0,pi) q[0];
u1(-1) q[0];
u1(-1) q[0];
u2(0,pi) q[1];
u1(-1) q[1];
cx q[1],q[0];
u1(-1) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(-1.92) q[0];
u2(0,pi) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[1];
u1(-1) q[1];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
swap q[1],q[2];
u2(0,pi) q[3];
u1(-1) q[3];
u1(-1) q[3];
u2(0,pi) q[4];
u1(-1) q[4];
cx q[4],q[1];
u1(-1) q[1];
cx q[4],q[1];
u1(-1) q[1];
cx q[1],q[2];
u1(-1) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u1(-1.92) q[1];
u2(0,pi) q[1];
u1(-1) q[1];
u1(-1) q[1];
u1(-1) q[1];
u2(0,pi) q[2];
u1(-1.92) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
u1(-1) q[4];
u1(-1) q[4];
u2(0,pi) q[5];
u1(-0.08) q[5];
u1(0.32) q[5];
u2(0,pi) q[6];
u1(0.08) q[6];
u2(0,pi) q[7];
u1(-1) q[7];
swap q[4],q[7];
swap q[1],q[4];
swap q[2],q[1];
cx q[1],q[0];
u1(-1) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(-0.96) q[0];
u2(0,pi) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[1];
u1(-1) q[1];
cx q[2],q[3];
u1(-1) q[3];
cx q[2],q[3];
u1(-1) q[2];
u1(-1) q[2];
u1(-1) q[3];
swap q[3],q[2];
swap q[4],q[7];
swap q[1],q[4];
cx q[2],q[1];
u1(-1) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(-1.92) q[1];
u2(0,pi) q[1];
u1(-1) q[1];
u1(-1) q[1];
u2(0,pi) q[2];
u1(-1.92) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
u1(-1) q[2];
swap q[4],q[1];
cx q[4],q[7];
swap q[5],q[3];
swap q[2],q[3];
swap q[3],q[5];
u1(-1) q[7];
cx q[4],q[7];
u1(-1) q[4];
u1(-1) q[4];
swap q[1],q[4];
swap q[1],q[2];
swap q[2],q[3];
u1(-1) q[7];
cx q[7],q[4];
u1(-1) q[4];
cx q[7],q[4];
u2(0,pi) q[4];
u1(-0.96) q[4];
u2(0,pi) q[4];
u1(-1) q[4];
u1(-1) q[4];
swap q[4],q[1];
cx q[1],q[0];
u1(-1) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(0) q[0];
u2(0,pi) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[0];
u1(-1) q[1];
u1(-1) q[1];
u2(0,pi) q[7];
u1(-0.96) q[7];
u2(0,pi) q[7];
u1(-1) q[7];
u1(-1) q[7];
u1(-1) q[7];
swap q[7],q[6];
cx q[7],q[4];
u1(-0.16) q[4];
cx q[7],q[4];
u1(-1) q[4];
swap q[1],q[4];
cx q[1],q[2];
u1(-1) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u1(-1.92) q[1];
u2(0,pi) q[1];
u1(-1.824) q[1];
u1(-0.24) q[1];
u1(0.96) q[1];
u2(0,pi) q[2];
u1(-1.92) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
swap q[3],q[2];
cx q[3],q[5];
u1(-1) q[5];
cx q[3],q[5];
u1(-1) q[3];
u1(-1) q[3];
swap q[2],q[3];
u1(-1) q[5];
cx q[5],q[3];
u1(-1) q[3];
cx q[5],q[3];
u2(0,pi) q[3];
u1(-0.96) q[3];
u2(0,pi) q[3];
u1(-1) q[3];
u1(-1) q[3];
u2(0,pi) q[5];
u1(-0.96) q[5];
u2(0,pi) q[5];
u1(-1) q[5];
u1(-1) q[5];
u1(-1) q[5];
u1(0.26) q[7];
u1(-1.04) q[7];
u2(0,pi) q[8];
u1(0.22) q[8];
u2(0,pi) q[9];
u1(-0.12) q[9];
u2(0,pi) q[10];
u1(-0.22) q[10];
u1(0.88) q[10];
u2(0,pi) q[11];
u1(0.36) q[11];
u1(-1.44) q[11];
u2(0,pi) q[12];
u1(0.12) q[12];
u1(-0.48) q[12];
u2(0,pi) q[13];
u1(-0.36) q[13];
u2(0,pi) q[14];
u1(0.3) q[14];
u1(-1.2) q[14];
u2(0,pi) q[16];
u1(-0.3) q[16];
cx q[16],q[14];
u1(0.6) q[14];
cx q[16],q[14];
u1(0.26) q[14];
swap q[13],q[14];
cx q[14],q[11];
u1(0.72) q[11];
cx q[14],q[11];
u1(-0.26) q[11];
u1(-0.26) q[14];
u1(1.04) q[14];
cx q[13],q[14];
u1(-0.52) q[14];
cx q[13],q[14];
u2(0,pi) q[13];
u1(-1.92) q[13];
u2(0,pi) q[13];
u1(0.864) q[13];
u1(0.9) q[13];
u1(-3.6) q[13];
u2(0,pi) q[14];
u1(-1.92) q[14];
u2(0,pi) q[14];
u1(1.152) q[14];
u1(-1.08) q[14];
u2(0,pi) q[16];
u1(-1.92) q[16];
u2(0,pi) q[16];
u1(-0.288) q[16];
u1(-0.9) q[16];
swap q[8],q[11];
swap q[11],q[14];
swap q[14],q[13];
swap q[13],q[12];
cx q[12],q[10];
u1(-0.44) q[10];
cx q[12],q[10];
u1(-0.26) q[10];
cx q[10],q[7];
u1(-0.38) q[12];
u1(1.52) q[12];
cx q[16],q[14];
u1(1.8) q[14];
cx q[16],q[14];
u1(0.78) q[14];
swap q[13],q[14];
u2(0,pi) q[16];
u1(-0.96) q[16];
u2(0,pi) q[16];
u1(-0.144) q[16];
u1(-1.5) q[16];
u1(0.52) q[7];
cx q[10],q[7];
u2(0,pi) q[10];
u1(-1.92) q[10];
u2(0,pi) q[10];
u1(-0.288) q[10];
u1(-0.66) q[10];
u1(2.64) q[10];
u2(0,pi) q[7];
u1(-1.92) q[7];
u2(0,pi) q[7];
u1(1.248) q[7];
u1(0.24) q[7];
swap q[4],q[7];
cx q[4],q[1];
u1(-0.48) q[1];
cx q[4],q[1];
u1(-1) q[1];
cx q[1],q[2];
u1(-1) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u1(-0.96) q[1];
u2(0,pi) q[1];
u1(-0.912) q[1];
u1(-0.4) q[1];
u1(1.6) q[1];
u2(0,pi) q[2];
u1(-0.96) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
swap q[3],q[2];
cx q[3],q[5];
u1(0.78) q[4];
u1(-3.12) q[4];
u1(-1) q[5];
cx q[3],q[5];
u1(-1) q[3];
u1(-1) q[3];
u1(-1) q[5];
swap q[7],q[6];
swap q[7],q[4];
swap q[4],q[1];
cx q[2],q[1];
u1(-1) q[1];
cx q[2],q[1];
u1(-1) q[1];
u1(-1) q[2];
u1(-1) q[2];
swap q[2],q[3];
cx q[5],q[3];
u1(-1) q[3];
cx q[5],q[3];
u2(0,pi) q[3];
u1(0) q[3];
u2(0,pi) q[3];
u1(-1) q[3];
u1(-1) q[3];
u2(0,pi) q[5];
u1(0) q[5];
u2(0,pi) q[5];
u1(-1) q[5];
u1(-1) q[5];
u1(-1) q[5];
swap q[9],q[8];
swap q[8],q[11];
cx q[11],q[14];
u1(0.24) q[14];
cx q[11],q[14];
u1(0.26) q[11];
u1(-1.04) q[11];
u1(0.38) q[14];
swap q[14],q[13];
cx q[13],q[12];
u1(-0.76) q[12];
cx q[13],q[12];
u2(0,pi) q[12];
u1(-1.92) q[12];
u2(0,pi) q[12];
u1(1.536) q[12];
u1(0.66) q[12];
cx q[12],q[10];
u1(-1.32) q[10];
cx q[12],q[10];
u1(-0.78) q[10];
cx q[10],q[7];
u1(-1.14) q[12];
u1(4.56) q[12];
u2(0,pi) q[13];
u1(-1.92) q[13];
u2(0,pi) q[13];
u1(-0.576) q[13];
u1(0.36) q[13];
u1(-1.44) q[13];
u1(1.56) q[7];
cx q[10],q[7];
u2(0,pi) q[10];
u1(-0.96) q[10];
u2(0,pi) q[10];
u1(-0.144) q[10];
u1(-1.1) q[10];
u1(4.4) q[10];
u2(0,pi) q[7];
u1(-0.96) q[7];
u2(0,pi) q[7];
u1(0.624) q[7];
u1(0.4) q[7];
cx q[7],q[4];
u1(-0.8) q[4];
cx q[7],q[4];
u1(-1) q[4];
swap q[1],q[4];
cx q[1],q[2];
u1(-1) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u1(0) q[1];
u2(0,pi) q[1];
u1(0) q[1];
u1(-0.56) q[1];
u1(2.24) q[1];
u2(0,pi) q[2];
u1(0) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
swap q[3],q[2];
cx q[3],q[5];
u1(-1) q[5];
cx q[3],q[5];
u1(-1) q[3];
u1(-1) q[3];
u1(-1) q[5];
u1(1.3) q[7];
u1(-5.2) q[7];
swap q[9],q[8];
cx q[8],q[11];
u1(0.52) q[11];
cx q[8],q[11];
u2(0,pi) q[11];
u1(-1.92) q[11];
u2(0,pi) q[11];
u1(-1.44) q[11];
u1(-0.36) q[11];
swap q[11],q[14];
cx q[14],q[13];
u1(0.72) q[13];
cx q[14],q[13];
u1(1.14) q[13];
cx q[13],q[12];
u1(-2.28) q[12];
cx q[13],q[12];
u2(0,pi) q[12];
u1(-0.96) q[12];
u2(0,pi) q[12];
u1(0.768) q[12];
u1(1.1) q[12];
cx q[12],q[10];
u1(-2.2) q[10];
cx q[12],q[10];
u1(-1.3) q[10];
cx q[10],q[7];
u1(-1.9) q[12];
u1(7.6) q[12];
u2(0,pi) q[13];
u1(-0.96) q[13];
u2(0,pi) q[13];
u1(-0.288) q[13];
u1(0.6) q[13];
u1(-2.4) q[13];
u1(0.78) q[14];
u1(-3.12) q[14];
u1(2.6) q[7];
cx q[10],q[7];
u2(0,pi) q[10];
u1(0) q[10];
u2(0,pi) q[10];
u1(0) q[10];
u1(-1.54) q[10];
u1(6.16) q[10];
u2(0,pi) q[7];
u1(0) q[7];
u2(0,pi) q[7];
u1(0) q[7];
u1(0.56) q[7];
swap q[4],q[7];
cx q[4],q[1];
u1(-1.12) q[1];
cx q[4],q[1];
u1(-1) q[1];
swap q[2],q[1];
cx q[2],q[3];
u1(-1) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u1(0.96) q[2];
u2(0,pi) q[2];
u1(0.912) q[2];
u1(-0.72) q[2];
u1(2.88) q[2];
u2(0,pi) q[3];
u1(0.96) q[3];
u2(0,pi) q[3];
u1(-1) q[3];
u1(-1) q[3];
u1(1.82) q[4];
u1(-7.28) q[4];
swap q[5],q[3];
cx q[7],q[6];
u1(-1) q[6];
cx q[7],q[6];
u2(0,pi) q[6];
u1(0) q[6];
u2(0,pi) q[6];
u1(-1) q[6];
u1(-1) q[6];
u2(0,pi) q[7];
u1(0) q[7];
u2(0,pi) q[7];
u1(-1) q[7];
u1(-1) q[7];
u1(-1) q[7];
swap q[7],q[4];
cx q[1],q[4];
u1(-1) q[4];
cx q[1],q[4];
u1(-1) q[1];
u1(-1) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(-1) q[2];
cx q[3],q[2];
u2(0,pi) q[2];
u1(0.96) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
u1(-1) q[2];
u2(0,pi) q[3];
u1(0.96) q[3];
u2(0,pi) q[3];
u1(-1) q[3];
u1(-1) q[3];
u1(-1) q[3];
u1(-1) q[4];
cx q[5],q[3];
u1(-1) q[3];
cx q[5],q[3];
u1(-1) q[3];
u1(-1) q[5];
u1(-1) q[5];
u2(0,pi) q[8];
u1(-1.92) q[8];
u2(0,pi) q[8];
u1(-1.056) q[8];
u1(1.08) q[8];
u1(-4.32) q[8];
cx q[9],q[8];
u1(2.16) q[8];
cx q[9],q[8];
u1(-0.78) q[8];
swap q[8],q[11];
cx q[11],q[14];
u1(1.56) q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u1(-0.96) q[11];
u2(0,pi) q[11];
u1(-0.528) q[11];
u1(1.8) q[11];
u1(-7.2) q[11];
u2(0,pi) q[14];
u1(-0.96) q[14];
u2(0,pi) q[14];
u1(-0.72) q[14];
u1(-0.6) q[14];
swap q[14],q[16];
u1(-0.78) q[9];
u1(3.12) q[9];
cx q[8],q[9];
u1(-1.56) q[9];
cx q[8],q[9];
u2(0,pi) q[8];
u1(-0.96) q[8];
u2(0,pi) q[8];
u1(0.432) q[8];
u1(1.5) q[8];
u1(-6) q[8];
swap q[11],q[8];
cx q[14],q[11];
u1(3) q[11];
cx q[14],q[11];
u1(1.3) q[11];
u2(0,pi) q[14];
u1(0) q[14];
u2(0,pi) q[14];
u1(0) q[14];
u1(-2.1) q[14];
u2(0,pi) q[9];
u1(-0.96) q[9];
u2(0,pi) q[9];
u1(0.576) q[9];
u1(-1.8) q[9];
cx q[9],q[8];
u1(3.6) q[8];
cx q[9],q[8];
u1(-1.3) q[8];
u1(-1.3) q[9];
u1(5.2) q[9];
swap q[8],q[9];
cx q[11],q[8];
u1(-2.6) q[8];
cx q[11],q[8];
u2(0,pi) q[11];
u1(0) q[11];
u2(0,pi) q[11];
u1(0) q[11];
u1(2.1) q[11];
u1(-8.4) q[11];
cx q[14],q[11];
u1(4.2) q[11];
cx q[14],q[11];
u1(1.82) q[11];
u2(0,pi) q[14];
u1(0.96) q[14];
u2(0,pi) q[14];
u1(0.144) q[14];
u1(-2.7) q[14];
swap q[16],q[14];
cx q[14],q[13];
u1(1.2) q[13];
cx q[14],q[13];
u1(1.9) q[13];
cx q[13],q[12];
u1(-3.8) q[12];
cx q[13],q[12];
u2(0,pi) q[12];
u1(0) q[12];
u2(0,pi) q[12];
u1(0) q[12];
u1(1.54) q[12];
cx q[12],q[10];
u1(-3.08) q[10];
cx q[12],q[10];
u1(-1.82) q[10];
cx q[10],q[7];
u1(-2.66) q[12];
u1(10.64) q[12];
u2(0,pi) q[13];
u1(0) q[13];
u2(0,pi) q[13];
u1(0) q[13];
u1(0.84) q[13];
u1(-3.36) q[13];
u1(1.3) q[14];
u1(-5.2) q[14];
u1(3.64) q[7];
cx q[10],q[7];
u2(0,pi) q[10];
u1(0.96) q[10];
u2(0,pi) q[10];
u1(0.144) q[10];
u1(-1.98) q[10];
u1(7.92) q[10];
u2(0,pi) q[7];
u1(0.96) q[7];
u2(0,pi) q[7];
u1(-0.624) q[7];
u1(0.72) q[7];
swap q[4],q[7];
cx q[4],q[1];
u1(-1.44) q[1];
cx q[4],q[1];
u1(-1) q[1];
swap q[0],q[1];
u1(2.34) q[4];
u1(-9.36) q[4];
swap q[1],q[4];
swap q[6],q[7];
cx q[7],q[4];
u1(-1) q[4];
cx q[7],q[4];
u2(0,pi) q[4];
u1(0.96) q[4];
u2(0,pi) q[4];
u1(-1) q[4];
u1(-1) q[4];
u1(-1) q[4];
u1(-1) q[7];
u1(-1) q[7];
cx q[6],q[7];
u1(-1) q[7];
cx q[6],q[7];
u2(0,pi) q[6];
u1(0.96) q[6];
u2(0,pi) q[6];
u1(-1) q[6];
u1(-1) q[6];
u1(-1) q[6];
u2(0,pi) q[7];
u1(0.96) q[7];
u2(0,pi) q[7];
u1(-1) q[7];
u1(-1) q[7];
cx q[7],q[4];
u1(-1) q[4];
cx q[7],q[4];
u2(0,pi) q[4];
u1(1.92) q[4];
u2(0,pi) q[4];
u1(-1) q[4];
u1(-1) q[7];
u1(-1) q[7];
swap q[7],q[6];
u2(0,pi) q[8];
u1(0) q[8];
u2(0,pi) q[8];
u1(0) q[8];
u1(-2.52) q[8];
swap q[9],q[8];
swap q[8],q[11];
cx q[11],q[14];
u1(2.6) q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u1(0) q[11];
u2(0,pi) q[11];
u1(0) q[11];
u1(2.52) q[11];
u1(-10.08) q[11];
u2(0,pi) q[14];
u1(0) q[14];
u2(0,pi) q[14];
u1(0) q[14];
u1(-0.84) q[14];
cx q[14],q[13];
u1(1.68) q[13];
cx q[14],q[13];
u1(2.66) q[13];
cx q[13],q[12];
u1(-5.32) q[12];
cx q[13],q[12];
u2(0,pi) q[12];
u1(0.96) q[12];
u2(0,pi) q[12];
u1(-0.768) q[12];
u1(1.98) q[12];
cx q[12],q[10];
u1(-3.96) q[10];
cx q[12],q[10];
u1(-2.34) q[10];
u1(-3.42) q[12];
u1(13.68) q[12];
u2(0,pi) q[13];
u1(0.96) q[13];
u2(0,pi) q[13];
u1(0.288) q[13];
u1(1.08) q[13];
u1(-4.32) q[13];
u1(1.82) q[14];
u1(-7.28) q[14];
swap q[9],q[8];
cx q[8],q[11];
u1(5.04) q[11];
cx q[8],q[11];
u1(-1.82) q[11];
cx q[11],q[14];
u1(3.64) q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u1(0.96) q[11];
u2(0,pi) q[11];
u1(0.528) q[11];
u1(3.24) q[11];
u1(-12.96) q[11];
u2(0,pi) q[14];
u1(0.96) q[14];
u2(0,pi) q[14];
u1(0.72) q[14];
u1(-1.08) q[14];
cx q[14],q[13];
u1(2.16) q[13];
cx q[14],q[13];
u1(3.42) q[13];
cx q[13],q[12];
u1(-6.84) q[12];
cx q[13],q[12];
u2(0,pi) q[12];
u1(1.92) q[12];
u2(0,pi) q[12];
u1(-1.536) q[12];
u2(0,pi) q[13];
u1(1.92) q[13];
u2(0,pi) q[13];
u1(0.576) q[13];
u1(2.34) q[14];
u1(-9.36) q[14];
u1(-1.82) q[8];
u1(7.28) q[8];
cx q[9],q[8];
u1(-3.64) q[8];
cx q[9],q[8];
u2(0,pi) q[8];
u1(0.96) q[8];
u2(0,pi) q[8];
u1(-0.576) q[8];
u1(-3.24) q[8];
cx q[8],q[11];
u1(6.48) q[11];
cx q[8],q[11];
u1(-2.34) q[11];
cx q[11],q[14];
u1(4.68) q[14];
cx q[11],q[14];
u2(0,pi) q[11];
u1(1.92) q[11];
u2(0,pi) q[11];
u1(1.056) q[11];
u2(0,pi) q[14];
u1(1.92) q[14];
u2(0,pi) q[14];
u1(1.44) q[14];
u1(-2.34) q[8];
u1(9.36) q[8];
u2(0,pi) q[9];
u1(0.96) q[9];
u2(0,pi) q[9];
u1(-0.432) q[9];
u1(2.7) q[9];
u1(-10.8) q[9];
swap q[8],q[9];
measure q[11] -> c[3];
measure q[14] -> c[4];
swap q[14],q[16];
swap q[11],q[14];
cx q[11],q[8];
u1(5.4) q[8];
cx q[11],q[8];
u2(0,pi) q[11];
u1(1.92) q[11];
u2(0,pi) q[11];
u1(0.288) q[11];
measure q[11] -> c[0];
u1(2.34) q[8];
cx q[8],q[9];
u1(-4.68) q[9];
cx q[8],q[9];
u2(0,pi) q[8];
u1(1.92) q[8];
u2(0,pi) q[8];
u1(-0.864) q[8];
measure q[8] -> c[1];
u2(0,pi) q[9];
u1(1.92) q[9];
u2(0,pi) q[9];
u1(-1.152) q[9];
measure q[9] -> c[2];
measure q[13] -> c[5];
measure q[12] -> c[6];
measure q[4] -> c[15];
swap q[4],q[1];
swap q[1],q[0];
swap q[2],q[1];
swap q[3],q[2];
cx q[3],q[5];
u1(-1) q[5];
cx q[3],q[5];
u2(0,pi) q[3];
u1(1.92) q[3];
u2(0,pi) q[3];
u1(1.824) q[3];
measure q[3] -> c[9];
u2(0,pi) q[5];
u1(1.92) q[5];
u2(0,pi) q[5];
u1(-1) q[5];
measure q[5] -> c[10];
swap q[7],q[4];
cx q[1],q[4];
cx q[10],q[7];
u1(-1) q[4];
cx q[1],q[4];
u1(-1) q[1];
u1(-1) q[1];
cx q[2],q[1];
u1(-1) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(1.92) q[1];
u2(0,pi) q[1];
u1(-1) q[1];
measure q[1] -> c[12];
u2(0,pi) q[2];
u1(1.92) q[2];
u2(0,pi) q[2];
u1(-1) q[2];
measure q[2] -> c[11];
u1(-1) q[4];
u1(4.68) q[7];
cx q[10],q[7];
u2(0,pi) q[10];
u1(1.92) q[10];
u2(0,pi) q[10];
u1(0.288) q[10];
measure q[10] -> c[7];
u2(0,pi) q[7];
u1(1.92) q[7];
u2(0,pi) q[7];
u1(-1.248) q[7];
measure q[7] -> c[8];
swap q[4],q[7];
cx q[7],q[6];
u1(-1) q[6];
cx q[7],q[6];
u2(0,pi) q[6];
u1(1.92) q[6];
u2(0,pi) q[6];
u1(-1) q[6];
measure q[6] -> c[14];
u2(0,pi) q[7];
u1(1.92) q[7];
u2(0,pi) q[7];
u1(-1) q[7];
measure q[7] -> c[13];
