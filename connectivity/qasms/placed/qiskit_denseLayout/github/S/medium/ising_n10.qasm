OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
creg c[10];
u2(0,pi) q[0];
u1(-0.08) q[0];
u1(-0.08) q[0];
u2(0,pi) q[1];
u1(0.08) q[1];
cx q[1],q[0];
u1(0.08) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(-1.92) q[0];
u2(0,pi) q[0];
u1(-1.824) q[0];
u1(-0.24) q[0];
u1(-0.24) q[0];
u1(0.26) q[1];
u1(0.26) q[1];
u2(0,pi) q[2];
u1(-0.22) q[2];
u1(-0.22) q[2];
u2(0,pi) q[3];
u1(0.12) q[3];
u1(0.12) q[3];
u2(0,pi) q[4];
u1(0.22) q[4];
cx q[4],q[2];
u1(0.22) q[2];
cx q[4],q[2];
u1(-0.26) q[2];
cx q[2],q[1];
u1(-0.26) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(-1.92) q[1];
u2(0,pi) q[1];
u1(1.248) q[1];
u1(0.24) q[1];
cx q[1],q[0];
u1(0.24) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(-0.96) q[0];
u2(0,pi) q[0];
u1(-0.912) q[0];
u1(-0.4) q[0];
u1(-0.4) q[0];
u1(0.78) q[1];
u1(0.78) q[1];
u2(0,pi) q[2];
u1(-1.92) q[2];
u2(0,pi) q[2];
u1(-0.288) q[2];
u1(-0.66) q[2];
u1(-0.66) q[2];
u1(-0.38) q[4];
u1(-0.38) q[4];
u2(0,pi) q[5];
u1(0.36) q[5];
u1(0.36) q[5];
u2(0,pi) q[6];
u1(-0.36) q[6];
cx q[6],q[5];
u1(-0.36) q[5];
cx q[6],q[5];
u1(-0.26) q[5];
u1(-0.26) q[6];
u1(-0.26) q[6];
u2(0,pi) q[7];
u1(-0.12) q[7];
cx q[7],q[3];
u1(-0.12) q[3];
cx q[7],q[3];
u1(0.38) q[3];
cx q[3],q[4];
u1(0.38) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u1(-1.92) q[3];
u2(0,pi) q[3];
u1(-0.576) q[3];
u1(0.36) q[3];
u1(0.36) q[3];
u2(0,pi) q[4];
u1(-1.92) q[4];
u2(0,pi) q[4];
u1(1.536) q[4];
u1(0.66) q[4];
cx q[4],q[2];
u1(0.66) q[2];
cx q[4],q[2];
u1(-0.78) q[2];
cx q[2],q[1];
u1(-0.78) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(-0.96) q[1];
u2(0,pi) q[1];
u1(0.624) q[1];
u1(0.4) q[1];
cx q[1],q[0];
u1(0.4) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(0) q[0];
u2(0,pi) q[0];
u1(0) q[0];
u1(-0.56) q[0];
u1(-0.56) q[0];
u1(1.3) q[1];
u1(1.3) q[1];
u2(0,pi) q[2];
u1(-0.96) q[2];
u2(0,pi) q[2];
u1(-0.144) q[2];
u1(-1.1) q[2];
u1(-1.1) q[2];
u1(-1.14) q[4];
u1(-1.14) q[4];
u1(0.26) q[7];
u1(0.26) q[7];
cx q[5],q[7];
u1(-0.26) q[7];
cx q[5],q[7];
u2(0,pi) q[5];
u1(-1.92) q[5];
u2(0,pi) q[5];
u1(-1.056) q[5];
u1(1.08) q[5];
u1(1.08) q[5];
u2(0,pi) q[7];
u1(-1.92) q[7];
u2(0,pi) q[7];
u1(-1.44) q[7];
u1(-0.36) q[7];
cx q[7],q[3];
u1(-0.36) q[3];
cx q[7],q[3];
u1(1.14) q[3];
cx q[3],q[4];
u1(1.14) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u1(-0.96) q[3];
u2(0,pi) q[3];
u1(-0.288) q[3];
u1(0.6) q[3];
u1(0.6) q[3];
u2(0,pi) q[4];
u1(-0.96) q[4];
u2(0,pi) q[4];
u1(0.768) q[4];
u1(1.1) q[4];
cx q[4],q[2];
u1(1.1) q[2];
cx q[4],q[2];
u1(-1.3) q[2];
cx q[2],q[1];
u1(-1.3) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(0) q[1];
u2(0,pi) q[1];
u1(0) q[1];
u1(0.56) q[1];
cx q[1],q[0];
u1(0.56) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(0.96) q[0];
u2(0,pi) q[0];
u1(0.912) q[0];
u1(-0.72) q[0];
u1(-0.72) q[0];
u1(1.82) q[1];
u1(1.82) q[1];
u2(0,pi) q[2];
u1(0) q[2];
u2(0,pi) q[2];
u1(0) q[2];
u1(-1.54) q[2];
u1(-1.54) q[2];
u1(-1.9) q[4];
u1(-1.9) q[4];
u1(0.78) q[7];
u1(0.78) q[7];
u2(0,pi) q[8];
u1(-0.3) q[8];
u2(0,pi) q[10];
u1(0.3) q[10];
u1(0.3) q[10];
cx q[8],q[10];
u1(-0.3) q[10];
cx q[8],q[10];
u1(0.26) q[10];
cx q[10],q[6];
u1(0.26) q[6];
cx q[10],q[6];
u2(0,pi) q[10];
u1(-1.92) q[10];
u2(0,pi) q[10];
u1(0.864) q[10];
u1(0.9) q[10];
u1(0.9) q[10];
u2(0,pi) q[6];
u1(-1.92) q[6];
u2(0,pi) q[6];
u1(1.152) q[6];
u1(-1.08) q[6];
cx q[6],q[5];
u1(-1.08) q[5];
cx q[6],q[5];
u1(-0.78) q[5];
cx q[5],q[7];
u1(-0.78) q[6];
u1(-0.78) q[6];
u1(-0.78) q[7];
cx q[5],q[7];
u2(0,pi) q[5];
u1(-0.96) q[5];
u2(0,pi) q[5];
u1(-0.528) q[5];
u1(1.8) q[5];
u1(1.8) q[5];
u2(0,pi) q[7];
u1(-0.96) q[7];
u2(0,pi) q[7];
u1(-0.72) q[7];
u1(-0.6) q[7];
cx q[7],q[3];
u1(-0.6) q[3];
cx q[7],q[3];
u1(1.9) q[3];
cx q[3],q[4];
u1(1.9) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u1(0) q[3];
u2(0,pi) q[3];
u1(0) q[3];
u1(0.84) q[3];
u1(0.84) q[3];
u2(0,pi) q[4];
u1(0) q[4];
u2(0,pi) q[4];
u1(0) q[4];
u1(1.54) q[4];
cx q[4],q[2];
u1(1.54) q[2];
cx q[4],q[2];
u1(-1.82) q[2];
cx q[2],q[1];
u1(-1.82) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(0.96) q[1];
u2(0,pi) q[1];
u1(-0.624) q[1];
u1(0.72) q[1];
cx q[1],q[0];
u1(0.72) q[0];
cx q[1],q[0];
u2(0,pi) q[0];
u1(1.92) q[0];
u2(0,pi) q[0];
u1(1.824) q[0];
u1(2.34) q[1];
u1(2.34) q[1];
u2(0,pi) q[2];
u1(0.96) q[2];
u2(0,pi) q[2];
u1(0.144) q[2];
u1(-1.98) q[2];
u1(-1.98) q[2];
u1(-2.66) q[4];
u1(-2.66) q[4];
u1(1.3) q[7];
u1(1.3) q[7];
u2(0,pi) q[8];
u1(-1.92) q[8];
u2(0,pi) q[8];
u1(-0.288) q[8];
u1(-0.9) q[8];
cx q[8],q[10];
u1(-0.9) q[10];
cx q[8],q[10];
u1(0.78) q[10];
cx q[10],q[6];
u1(0.78) q[6];
cx q[10],q[6];
u2(0,pi) q[10];
u1(-0.96) q[10];
u2(0,pi) q[10];
u1(0.432) q[10];
u1(1.5) q[10];
u1(1.5) q[10];
u2(0,pi) q[6];
u1(-0.96) q[6];
u2(0,pi) q[6];
u1(0.576) q[6];
u1(-1.8) q[6];
cx q[6],q[5];
u1(-1.8) q[5];
cx q[6],q[5];
u1(-1.3) q[5];
cx q[5],q[7];
u1(-1.3) q[6];
u1(-1.3) q[6];
u1(-1.3) q[7];
cx q[5],q[7];
u2(0,pi) q[5];
u1(0) q[5];
u2(0,pi) q[5];
u1(0) q[5];
u1(2.52) q[5];
u1(2.52) q[5];
u2(0,pi) q[7];
u1(0) q[7];
u2(0,pi) q[7];
u1(0) q[7];
u1(-0.84) q[7];
cx q[7],q[3];
u1(-0.84) q[3];
cx q[7],q[3];
u1(2.66) q[3];
cx q[3],q[4];
u1(2.66) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u1(0.96) q[3];
u2(0,pi) q[3];
u1(0.288) q[3];
u1(1.08) q[3];
u1(1.08) q[3];
u2(0,pi) q[4];
u1(0.96) q[4];
u2(0,pi) q[4];
u1(-0.768) q[4];
u1(1.98) q[4];
cx q[4],q[2];
u1(1.98) q[2];
cx q[4],q[2];
u1(-2.34) q[2];
cx q[2],q[1];
u1(-2.34) q[1];
cx q[2],q[1];
u2(0,pi) q[1];
u1(1.92) q[1];
u2(0,pi) q[1];
u1(-1.248) q[1];
u2(0,pi) q[2];
u1(1.92) q[2];
u2(0,pi) q[2];
u1(0.288) q[2];
u1(-3.42) q[4];
u1(-3.42) q[4];
u1(1.82) q[7];
u1(1.82) q[7];
u2(0,pi) q[8];
u1(-0.96) q[8];
u2(0,pi) q[8];
u1(-0.144) q[8];
u1(-1.5) q[8];
cx q[8],q[10];
u1(-1.5) q[10];
cx q[8],q[10];
u1(1.3) q[10];
cx q[10],q[6];
u1(1.3) q[6];
cx q[10],q[6];
u2(0,pi) q[10];
u1(0) q[10];
u2(0,pi) q[10];
u1(0) q[10];
u1(2.1) q[10];
u1(2.1) q[10];
u2(0,pi) q[6];
u1(0) q[6];
u2(0,pi) q[6];
u1(0) q[6];
u1(-2.52) q[6];
cx q[6],q[5];
u1(-2.52) q[5];
cx q[6],q[5];
u1(-1.82) q[5];
cx q[5],q[7];
u1(-1.82) q[6];
u1(-1.82) q[6];
u1(-1.82) q[7];
cx q[5],q[7];
u2(0,pi) q[5];
u1(0.96) q[5];
u2(0,pi) q[5];
u1(0.528) q[5];
u1(3.24) q[5];
u1(3.24) q[5];
u2(0,pi) q[7];
u1(0.96) q[7];
u2(0,pi) q[7];
u1(0.72) q[7];
u1(-1.08) q[7];
cx q[7],q[3];
u1(-1.08) q[3];
cx q[7],q[3];
u1(3.42) q[3];
cx q[3],q[4];
u1(3.42) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u1(1.92) q[3];
u2(0,pi) q[3];
u1(0.576) q[3];
u2(0,pi) q[4];
u1(1.92) q[4];
u2(0,pi) q[4];
u1(-1.536) q[4];
u1(2.34) q[7];
u1(2.34) q[7];
u2(0,pi) q[8];
u1(0) q[8];
u2(0,pi) q[8];
u1(0) q[8];
u1(-2.1) q[8];
cx q[8],q[10];
u1(-2.1) q[10];
cx q[8],q[10];
u1(1.82) q[10];
cx q[10],q[6];
u1(1.82) q[6];
cx q[10],q[6];
u2(0,pi) q[10];
u1(0.96) q[10];
u2(0,pi) q[10];
u1(-0.432) q[10];
u1(2.7) q[10];
u1(2.7) q[10];
u2(0,pi) q[6];
u1(0.96) q[6];
u2(0,pi) q[6];
u1(-0.576) q[6];
u1(-3.24) q[6];
cx q[6],q[5];
u1(-3.24) q[5];
cx q[6],q[5];
u1(-2.34) q[5];
cx q[5],q[7];
u1(-2.34) q[6];
u1(-2.34) q[6];
u1(-2.34) q[7];
cx q[5],q[7];
u2(0,pi) q[5];
u1(1.92) q[5];
u2(0,pi) q[5];
u1(1.056) q[5];
u2(0,pi) q[7];
u1(1.92) q[7];
u2(0,pi) q[7];
u1(1.44) q[7];
u2(0,pi) q[8];
u1(0.96) q[8];
u2(0,pi) q[8];
u1(0.144) q[8];
u1(-2.7) q[8];
cx q[8],q[10];
u1(-2.7) q[10];
cx q[8],q[10];
u1(2.34) q[10];
cx q[10],q[6];
u1(2.34) q[6];
cx q[10],q[6];
u2(0,pi) q[10];
u1(1.92) q[10];
u2(0,pi) q[10];
u1(-0.864) q[10];
u2(0,pi) q[6];
u1(1.92) q[6];
u2(0,pi) q[6];
u1(-1.152) q[6];
u2(0,pi) q[8];
u1(1.92) q[8];
u2(0,pi) q[8];
u1(0.288) q[8];
measure q[8] -> c[0];
measure q[10] -> c[1];
measure q[6] -> c[2];
measure q[5] -> c[3];
measure q[7] -> c[4];
measure q[3] -> c[5];
measure q[4] -> c[6];
measure q[2] -> c[7];
measure q[1] -> c[8];
measure q[0] -> c[9];
