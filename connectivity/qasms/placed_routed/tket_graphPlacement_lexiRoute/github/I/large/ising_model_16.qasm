OPENQASM 2.0;
include "qelib1.inc";

qreg q[16];
creg c[16];
ry(0.5*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rx(1.0*pi) q[15];
rz(3.9045070341448627*pi) q[0];
rz(0.09549296585513721*pi) q[1];
rz(3.885408440973835*pi) q[2];
rz(0.11459155902616465*pi) q[3];
rz(3.961802813657945*pi) q[4];
rz(0.03819718634205488*pi) q[5];
rz(0.07002817496043395*pi) q[6];
rz(3.929971825039566*pi) q[7];
rz(0.025464790894703257*pi) q[8];
rz(3.9745352091052966*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.618028136579451*pi) q[1];
rz(3.5416337638953412*pi) q[3];
rz(3.8472112546317803*pi) q[5];
rz(0.2801126998417358*pi) q[7];
rz(0.10185916357881303*pi) q[9];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
cx q[12],q[13];
cx q[14],q[15];
rz(0.19098593171027442*pi) q[1];
rz(0.2291831180523293*pi) q[3];
rz(0.07639437268410976*pi) q[5];
rz(3.859943650079132*pi) q[7];
rz(3.9490704182105936*pi) q[9];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
cx q[12],q[13];
cx q[14],q[15];
ry(0.5*pi) q[0];
rz(0.08276057040778559*pi) q[1];
rz(3.9172394295922146*pi) q[2];
rz(3.9172394295922146*pi) q[3];
rz(0.08276057040778559*pi) q[4];
rz(0.12095775674984047*pi) q[5];
rz(3.8790422432501597*pi) q[6];
rz(3.9172394295922146*pi) q[7];
rz(0.08276057040778559*pi) q[8];
rz(3.6816901138162095*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rz(0.33104228163114235*pi) q[2];
rz(3.6689577183688575*pi) q[4];
rz(0.48383102699936187*pi) q[6];
rz(3.6689577183688575*pi) q[8];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[15];
rz(3.388845018527122*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
cx q[11],q[12];
cx q[13],q[14];
rz(3.388845018527122*pi) q[15];
ry(0.5*pi) q[0];
rz(3.8344788591844288*pi) q[2];
rz(0.16552114081557118*pi) q[4];
rz(3.758084486500319*pi) q[6];
rz(0.16552114081557118*pi) q[8];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
cx q[11],q[12];
cx q[13],q[14];
rx(1.0*pi) q[15];
rz(3.908326752779068*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.7135211024345884*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.388845018527122*pi) q[1];
rz(3.388845018527122*pi) q[2];
rz(3.388845018527122*pi) q[3];
rz(3.388845018527122*pi) q[4];
rz(3.388845018527122*pi) q[5];
rz(3.388845018527122*pi) q[6];
rz(3.388845018527122*pi) q[7];
rz(3.388845018527122*pi) q[8];
rz(3.388845018527122*pi) q[9];
rz(3.388845018527122*pi) q[10];
rz(3.388845018527122*pi) q[11];
rz(3.388845018527122*pi) q[12];
rz(3.388845018527122*pi) q[13];
rz(3.388845018527122*pi) q[14];
rz(3.6816901138162095*pi) q[15];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(0.27501974166279514*pi) q[1];
rz(0.36669298888372687*pi) q[2];
rz(3.663864760189917*pi) q[3];
rz(3.5416337638953412*pi) q[4];
rz(3.8166535055581368*pi) q[5];
rz(0.4889239851783025*pi) q[6];
rz(3.908326752779068*pi) q[7];
rz(0.39725073795737076*pi) q[8];
rz(3.419402767600766*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(0.2864788975654116*pi) q[1];
rz(3.656225322921506*pi) q[2];
rz(0.34377467707849396*pi) q[3];
rz(3.885408440973835*pi) q[4];
rz(0.11459155902616465*pi) q[5];
rz(0.21008452488130186*pi) q[6];
rz(3.7899154751186983*pi) q[7];
rz(0.07639437268410976*pi) q[8];
rz(3.92360562731589*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(2.8540844097383538*pi) q[1];
rz(2.624901291686024*pi) q[3];
rz(3.5416337638953412*pi) q[5];
rz(0.8403380995252074*pi) q[7];
rz(0.30557749073643903*pi) q[9];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[15];
rz(0.5729577951308232*pi) q[1];
rz(0.6875493541569879*pi) q[3];
rz(0.2291831180523293*pi) q[5];
rz(3.579830950237396*pi) q[7];
rz(3.8472112546317803*pi) q[9];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[0];
rz(0.24828171122335674*pi) q[1];
rz(3.7517182887766434*pi) q[2];
rz(3.7517182887766434*pi) q[3];
rz(0.24828171122335674*pi) q[4];
rz(0.3628732702495214*pi) q[5];
rz(3.6371267297504786*pi) q[6];
rz(3.7517182887766434*pi) q[7];
rz(0.24828171122335674*pi) q[8];
rz(3.6816901138162095*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[0];
rz(0.993126844893427*pi) q[2];
rz(3.006873155106573*pi) q[4];
rz(1.4514930809980855*pi) q[6];
rz(3.006873155106573*pi) q[8];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rz(3.694422509263561*pi) q[15];
rz(3.694422509263561*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
cx q[11],q[12];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[0];
rz(3.5034365775532867*pi) q[2];
rz(0.4965634224467135*pi) q[4];
rz(3.274253459500957*pi) q[6];
rz(0.4965634224467135*pi) q[8];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
cx q[11],q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.954163376389534*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.522535170724314*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(3.694422509263561*pi) q[13];
rz(3.694422509263561*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.694422509263561*pi) q[1];
rz(3.694422509263561*pi) q[2];
rz(3.694422509263561*pi) q[3];
rz(3.694422509263561*pi) q[4];
rz(3.694422509263561*pi) q[5];
rz(3.694422509263561*pi) q[6];
rz(3.694422509263561*pi) q[7];
rz(3.694422509263561*pi) q[8];
rz(3.694422509263561*pi) q[9];
rz(3.694422509263561*pi) q[10];
rz(3.694422509263561*pi) q[11];
rz(3.694422509263561*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(0.13750987083139757*pi) q[1];
rz(0.18334649444186343*pi) q[2];
rz(3.8319323800949583*pi) q[3];
rz(3.770816881947671*pi) q[4];
rz(3.908326752779068*pi) q[5];
rz(0.24446199258915124*pi) q[6];
rz(3.954163376389534*pi) q[7];
rz(0.19862536897868538*pi) q[8];
rz(3.709701383800383*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(0.477464829275686*pi) q[1];
rz(3.427042204869177*pi) q[2];
rz(0.5729577951308232*pi) q[3];
rz(3.8090140682897258*pi) q[4];
rz(0.19098593171027442*pi) q[5];
rz(0.35014087480216977*pi) q[6];
rz(3.64985912519783*pi) q[7];
rz(0.12732395447351627*pi) q[8];
rz(3.8726760455264837*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
rz(2.090140682897256*pi) q[1];
rz(1.708168819476707*pi) q[3];
rz(3.236056273158902*pi) q[5];
rz(1.400563499208679*pi) q[7];
rz(0.5092958178940651*pi) q[9];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
rz(0.954929658551372*pi) q[1];
rz(1.1459155902616465*pi) q[3];
rz(0.38197186342054884*pi) q[5];
rz(3.2997182503956606*pi) q[7];
rz(3.7453520910529674*pi) q[9];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[15];
ry(0.5*pi) q[0];
rz(0.4138028520389279*pi) q[1];
rz(3.586197147961072*pi) q[2];
rz(3.586197147961072*pi) q[3];
rz(0.4138028520389279*pi) q[4];
rz(0.6047887837492023*pi) q[5];
rz(3.3952112162507975*pi) q[6];
rz(3.586197147961072*pi) q[7];
rz(0.4138028520389279*pi) q[8];
rz(3.6816901138162095*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rz(0.0*pi) q[15];
rx(1.0*pi) q[0];
rz(1.6552114081557117*pi) q[2];
rz(2.3447885918442886*pi) q[4];
rz(2.4191551349968092*pi) q[6];
rz(2.3447885918442886*pi) q[8];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
rz(0.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rx(1.0*pi) q[15];
ry(0.5*pi) q[0];
rz(3.1723942959221443*pi) q[2];
rz(0.8276057040778558*pi) q[4];
rz(2.7904224325015954*pi) q[6];
rz(0.8276057040778558*pi) q[8];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
cx q[9],q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(0.0*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(0.0*pi) q[13];
rz(0.0*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(3.3315492390140395*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(0.0*pi) q[11];
rz(0.0*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(0.0*pi) q[1];
rz(0.0*pi) q[2];
rz(0.0*pi) q[3];
rz(0.0*pi) q[4];
rz(0.0*pi) q[5];
rz(0.0*pi) q[6];
rz(0.0*pi) q[7];
rz(0.0*pi) q[8];
rz(0.0*pi) q[9];
rz(0.0*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rz(0.0*pi) q[1];
rz(0.0*pi) q[2];
rz(0.0*pi) q[3];
rz(0.0*pi) q[4];
rz(0.0*pi) q[5];
rz(0.0*pi) q[6];
rz(0.0*pi) q[7];
rz(0.0*pi) q[8];
rz(0.0*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
rz(0.6684507609859605*pi) q[1];
rz(3.1978590868168473*pi) q[2];
rz(0.8021409131831525*pi) q[3];
rz(3.732619695605616*pi) q[4];
rz(0.26738030439438415*pi) q[5];
rz(0.4901972247230377*pi) q[6];
rz(3.5098027752769623*pi) q[7];
rz(0.1782535362629228*pi) q[8];
rz(3.8217464637370773*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[15];
rz(1.3261969560561582*pi) q[1];
rz(0.79143634726739*pi) q[3];
rz(2.9304787824224636*pi) q[5];
rz(1.9607888988921507*pi) q[7];
rz(0.7130141450516913*pi) q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
rz(1.336901521971921*pi) q[1];
rz(1.604281826366305*pi) q[3];
rz(0.5347606087887683*pi) q[5];
rz(3.0196055505539245*pi) q[7];
rz(3.6434929274741545*pi) q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
cx q[8],q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rz(0.30557749073643903*pi) q[15];
ry(0.5*pi) q[0];
rz(0.5793239928544991*pi) q[1];
rz(3.420676007145501*pi) q[2];
rz(3.420676007145501*pi) q[3];
rz(0.5793239928544991*pi) q[4];
rz(0.8467042972488833*pi) q[5];
rz(3.153295702751117*pi) q[6];
rz(3.420676007145501*pi) q[7];
rz(0.5793239928544991*pi) q[8];
rz(3.6816901138162095*pi) q[9];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
rx(1.0*pi) q[0];
rz(2.3172959714179964*pi) q[2];
rz(1.6827040285820036*pi) q[4];
rz(3.386817188995533*pi) q[6];
rz(1.6827040285820036*pi) q[8];
cx q[9],q[10];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rx(1.0*pi) q[15];
rz(0.30557749073643903*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.6816901138162095*pi) q[15];
ry(0.5*pi) q[0];
rz(2.841352014291002*pi) q[2];
rz(1.1586479857089982*pi) q[4];
rz(2.3065914055022336*pi) q[6];
rz(1.1586479857089982*pi) q[8];
cx q[9],q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rx(1.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(0.30557749073643903*pi) q[13];
rz(0.30557749073643903*pi) q[14];
rz(3.6816901138162095*pi) q[15];
rz(0.04583662361046586*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(0.30557749073643903*pi) q[11];
rz(0.30557749073643903*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.140563307303765*pi) q[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rz(0.30557749073643903*pi) q[9];
rz(0.30557749073643903*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
rz(0.30557749073643903*pi) q[1];
rz(0.30557749073643903*pi) q[2];
rz(0.30557749073643903*pi) q[3];
rz(0.30557749073643903*pi) q[4];
rz(0.30557749073643903*pi) q[5];
rz(0.30557749073643903*pi) q[6];
rz(0.30557749073643903*pi) q[7];
rz(0.30557749073643903*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rz(0.2902986161996171*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
rz(3.8624901291686022*pi) q[1];
rz(3.8166535055581368*pi) q[2];
rz(0.1680676199050415*pi) q[3];
rz(0.2291831180523293*pi) q[4];
rz(0.09167324722093172*pi) q[5];
rz(3.755538007410849*pi) q[6];
rz(0.04583662361046586*pi) q[7];
rz(3.801374631021315*pi) q[8];
rz(3.770816881947671*pi) q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[15];
rz(0.8594366926962349*pi) q[1];
rz(2.968675968764518*pi) q[2];
rz(1.0313240312354819*pi) q[3];
rz(3.656225322921506*pi) q[4];
rz(0.34377467707849396*pi) q[5];
rz(0.6302535746439055*pi) q[6];
rz(3.3697464253560945*pi) q[7];
rz(0.2291831180523293*pi) q[8];
rz(0.9167324722093172*pi) q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[13];
cx q[14],q[15];
rz(0.5622532292150604*pi) q[1];
rz(3.8747038750580725*pi) q[3];
rz(2.624901291686024*pi) q[5];
rz(2.521014298575622*pi) q[7];
cx q[8],q[9];
rz(3.6816901138162095*pi) q[11];
cx q[12],q[13];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
rz(3.5416337638953412*pi) q[9];
cx q[10],q[11];
rz(3.6816901138162095*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
rx(1.0*pi) q[15];
rz(1.7188733853924698*pi) q[1];
rz(2.0626480624709638*pi) q[3];
rz(0.6875493541569879*pi) q[5];
rz(2.739492850712189*pi) q[7];
cx q[8],q[9];
rz(3.6816901138162095*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rz(0.6111549814728781*pi) q[15];
cx q[0],q[1];
cx q[2],q[3];
cx q[4],q[5];
cx q[6],q[7];
rz(0.7448451336700702*pi) q[8];
rz(3.6816901138162095*pi) q[9];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
rz(3.6816901138162095*pi) q[14];
ry(0.5*pi) q[15];
ry(0.5*pi) q[0];
rz(0.7448451336700702*pi) q[1];
rz(3.2551548663299297*pi) q[2];
rz(3.2551548663299297*pi) q[3];
rz(0.7448451336700702*pi) q[4];
rz(1.088619810748564*pi) q[5];
rz(2.911380189251436*pi) q[6];
rz(3.2551548663299297*pi) q[7];
rz(1.0206194653197191*pi) q[8];
cx q[9],q[10];
rz(3.6816901138162095*pi) q[12];
cx q[13],q[14];
rx(1.0*pi) q[15];
rx(1.0*pi) q[0];
rz(2.979380534680281*pi) q[2];
rz(1.0206194653197191*pi) q[4];
rz(0.35447924299425626*pi) q[6];
cx q[7],q[8];
rz(3.6816901138162095*pi) q[10];
cx q[11],q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(3.6816901138162095*pi) q[15];
measure q[15] -> c[15];
rz(0.6111549814728781*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
rz(1.4896902673401404*pi) q[8];
cx q[9],q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
ry(0.5*pi) q[0];
rz(2.5103097326598593*pi) q[2];
rz(1.4896902673401404*pi) q[4];
rz(1.8227603785028719*pi) q[6];
cx q[7],q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(0.6111549814728781*pi) q[13];
rz(0.6111549814728781*pi) q[14];
rx(1.0*pi) q[0];
cx q[1],q[2];
cx q[3],q[4];
cx q[5],q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(0.6111549814728781*pi) q[11];
rz(0.6111549814728781*pi) q[12];
ry(0.5*pi) q[13];
ry(0.5*pi) q[14];
rz(0.09167324722093172*pi) q[0];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rz(0.6111549814728781*pi) q[9];
rz(0.6111549814728781*pi) q[10];
ry(0.5*pi) q[11];
ry(0.5*pi) q[12];
rx(1.0*pi) q[13];
rx(1.0*pi) q[14];
measure q[0] -> c[0];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rz(0.6111549814728781*pi) q[7];
rz(0.6111549814728781*pi) q[8];
ry(0.5*pi) q[9];
ry(0.5*pi) q[10];
rx(1.0*pi) q[11];
rx(1.0*pi) q[12];
rz(3.6816901138162095*pi) q[13];
rz(3.6816901138162095*pi) q[14];
measure q[13] -> c[13];
measure q[14] -> c[14];
rz(0.6111549814728781*pi) q[1];
rz(0.6111549814728781*pi) q[2];
rz(0.6111549814728781*pi) q[3];
rz(0.6111549814728781*pi) q[4];
rz(0.6111549814728781*pi) q[5];
rz(0.6111549814728781*pi) q[6];
ry(0.5*pi) q[7];
ry(0.5*pi) q[8];
rx(1.0*pi) q[9];
rx(1.0*pi) q[10];
rz(3.6816901138162095*pi) q[11];
rz(3.6816901138162095*pi) q[12];
measure q[11] -> c[11];
measure q[12] -> c[12];
ry(0.5*pi) q[1];
ry(0.5*pi) q[2];
ry(0.5*pi) q[3];
ry(0.5*pi) q[4];
ry(0.5*pi) q[5];
ry(0.5*pi) q[6];
rx(1.0*pi) q[7];
rx(1.0*pi) q[8];
rz(0.5805972323992342*pi) q[9];
rz(3.6816901138162095*pi) q[10];
measure q[9] -> c[9];
measure q[10] -> c[10];
rx(1.0*pi) q[1];
rx(1.0*pi) q[2];
rx(1.0*pi) q[3];
rx(1.0*pi) q[4];
rx(1.0*pi) q[5];
rx(1.0*pi) q[6];
rz(0.09167324722093172*pi) q[7];
rz(3.602749262042629*pi) q[8];
measure q[7] -> c[7];
measure q[8] -> c[8];
rz(3.724980258337205*pi) q[1];
rz(3.633307011116273*pi) q[2];
rz(0.336135239810083*pi) q[3];
rz(0.4583662361046586*pi) q[4];
rz(0.18334649444186343*pi) q[5];
rz(3.5110760148216977*pi) q[6];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
