OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];
u1(1.0*pi) q[0];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(1.0*pi) q[3];
u1(0.25*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(1.75*pi) q[3];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.04065307310000005*pi) q[0];
u1(1.9593469269*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.9593469269*pi) q[0];
u1(0.04065307310000005*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u1(0.11231773849999986*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.05649099549999998*pi) q[3];
u1(0.25*pi) q[0];
cx q[1],q[2];
u1(1.75*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(0.11231773849999986*pi) q[1];
u1(0.05649099549999998*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.9744852459*pi) q[0];
u1(0.025514754099999985*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.025514754099999985*pi) q[0];
u1(1.9744852459*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u3(0.5*pi,0.0*pi,0.5*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,1.0*pi,1.25*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,1.0*pi,1.0*pi) q[1];
u3(0.5*pi,0.0*pi,1.75*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4758602045000011*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.48892154359999945*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,0.475860197308445*pi,1.0*pi) q[0];
u3(0.5*pi,1.9758602035521922*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.2389215373140525*pi,1.0*pi) q[2];
u3(0.5*pi,1.738921528784972*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5*pi) q[2];
u3(0.5*pi,1.0*pi,1.5*pi) q[3];
cx q[1],q[2];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u3(0.5*pi,1.0*pi,1.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[0];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[2];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u1(1.9889215436*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5*pi) q[2];
u1(1.9758602045*pi) q[3];
cx q[1],q[2];
u1(0.25*pi) q[3];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u1(1.9889215436*pi) q[1];
u1(1.9758602045*pi) q[2];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.47503154530000097*pi) q[1];
u1(1.524968454699999*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.524968454699999*pi) q[1];
u1(0.47503154530000097*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u3(0.5*pi,1.0*pi,1.9961253706250948*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,0.0*pi,1.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,0.0*pi,1.4961253791541749*pi) q[1];
u3(0.5*pi,1.0*pi,1.0*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4931729076000007*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.4968359799000013*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.9931729191067855*pi,0.0*pi) q[2];
u3(0.5*pi,1.493172895804877*pi,1.0*pi) q[3];
u3(0.5*pi,1.0007106097627443*pi,0.0*pi) q[0];
u3(0.5*pi,1.500710601233664*pi,1.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[2];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[3];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[0];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[1];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[1];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[2];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[3];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[0];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[2];
u1(1.9968359799*pi) q[3];
u1(1.9931729076*pi) q[0];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u1(1.0*pi) q[3];
u1(1.0*pi) q[0];
cx q[2],q[1];
u1(1.75*pi) q[3];
u1(0.25*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[1];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u1(1.9931729076*pi) q[1];
u1(1.9968359799*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.7491234746000002*pi) q[0];
u1(0.25087652539999994*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25087652539999994*pi) q[0];
u1(1.7491234746000002*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u3(0.5*pi,0.0*pi,1.5001274256911865*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,0.0*pi,1.9998373095318382*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,1.0*pi,1.000127434220267*pi) q[1];
u3(0.5*pi,1.0*pi,1.4998373180609188*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4997681245000003*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.49979352470000044*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.499640698044223*pi,1.0*pi) q[0];
u3(0.5*pi,1.9996406895151426*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.4999562068034085*pi,0.0*pi) q[2];
u3(0.5*pi,0.9999562153324888*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[1];
cx q[2],q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[2];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[3];
cx q[1],q[2];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[1];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[0];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[2];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u1(1.9997935247*pi) q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[1];
cx q[2],q[3];
u1(1.0*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[2];
u1(1.9997681245*pi) q[3];
u1(1.75*pi) q[0];
cx q[1],q[2];
u1(1.0*pi) q[3];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u1(0.25*pi) q[3];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u1(1.9997935247*pi) q[1];
u1(1.9997681245*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.20792410209999998*pi) q[1];
u1(1.7920758979*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.7920758979*pi) q[1];
u1(0.20792410209999998*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u1(1.0*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.0*pi) q[3];
u1(1.75*pi) q[0];
cx q[2],q[1];
u1(0.25*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.9593469269*pi) q[1];
u1(0.04065307310000005*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.04065307310000005*pi) q[1];
u1(1.9593469269*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u1(0.05649099549999998*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(0.11231773849999986*pi) q[3];
u1(1.75*pi) q[0];
cx q[2],q[1];
u1(0.25*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.05649099549999998*pi) q[1];
u1(0.11231773849999986*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.025514754099999985*pi) q[1];
u1(1.9744852459*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.9744852459*pi) q[1];
u1(0.025514754099999985*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u3(0.5*pi,1.0*pi,1.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,0.0*pi,0.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,0.0*pi,1.75*pi) q[1];
u3(0.5*pi,1.0*pi,1.0*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4758602045000011*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.48892154359999945*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.9758602035521922*pi,0.0*pi) q[2];
u3(0.5*pi,0.475860197308445*pi,1.0*pi) q[3];
u3(0.5*pi,1.738921528784972*pi,0.0*pi) q[0];
u3(0.5*pi,1.2389215373140525*pi,1.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(0.5*pi,1.0*pi,1.5*pi) q[0];
u3(0.5*pi,1.0*pi,1.5*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[1];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.5*pi,1.0*pi,1.5*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[2];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[3];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[0];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u1(1.9889215436*pi) q[3];
u1(1.9758602045*pi) q[0];
u3(0.5*pi,1.0*pi,1.5*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u1(1.75*pi) q[3];
u1(0.25*pi) q[0];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[1];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u1(1.9758602045*pi) q[1];
u1(1.9889215436*pi) q[2];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.524968454699999*pi) q[0];
u1(0.47503154530000097*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.47503154530000097*pi) q[0];
u1(1.524968454699999*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u3(0.5*pi,0.0*pi,1.5*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,1.0*pi,1.9961253706250948*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,1.0*pi,1.0*pi) q[1];
u3(0.5*pi,0.0*pi,1.4961253791541749*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4931729076000007*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.4968359799000013*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.493172895804877*pi,1.0*pi) q[0];
u3(0.5*pi,1.9931729191067855*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.500710601233664*pi,1.0*pi) q[2];
u3(0.5*pi,1.0007106097627443*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[1];
cx q[2],q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[2];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[3];
cx q[1],q[2];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[1];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[0];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[2];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u1(1.9968359799*pi) q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[1];
cx q[2],q[3];
u1(1.0*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[2];
u1(1.9931729076*pi) q[3];
u1(1.75*pi) q[0];
cx q[1],q[2];
u1(1.0*pi) q[3];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u1(0.25*pi) q[3];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u1(1.9968359799*pi) q[1];
u1(1.9931729076*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.25087652539999994*pi) q[1];
u1(1.7491234746000002*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.7491234746000002*pi) q[1];
u1(0.25087652539999994*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u3(0.5*pi,0.0*pi,1.9998373095318382*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,0.0*pi,1.5001274256911865*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,1.0*pi,1.4998373180609188*pi) q[1];
u3(0.5*pi,1.0*pi,1.000127434220267*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4997681245000003*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.49979352470000044*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.9996406895151426*pi,0.0*pi) q[2];
u3(0.5*pi,1.499640698044223*pi,1.0*pi) q[3];
u3(0.5*pi,0.9999562153324888*pi,1.0*pi) q[0];
u3(0.5*pi,1.4999562068034085*pi,0.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[2];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[3];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[0];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[1];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[1];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[2];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[3];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[0];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[2];
u1(1.9997935247*pi) q[3];
u1(1.9997681245*pi) q[0];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u1(1.0*pi) q[3];
u1(1.0*pi) q[0];
cx q[2],q[1];
u1(1.75*pi) q[3];
u1(0.25*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[1];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u1(1.9997681245*pi) q[1];
u1(1.9997935247*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.7920758979*pi) q[0];
u1(0.20792410209999998*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.20792410209999998*pi) q[0];
u1(1.7920758979*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u1(1.0*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(1.0*pi) q[3];
u1(0.25*pi) q[0];
cx q[1],q[2];
u1(1.75*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.04065307310000005*pi) q[0];
u1(1.9593469269*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.9593469269*pi) q[0];
u1(0.04065307310000005*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u1(0.11231773849999986*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.05649099549999998*pi) q[3];
u1(0.25*pi) q[0];
cx q[1],q[2];
u1(1.75*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(0.11231773849999986*pi) q[1];
u1(0.05649099549999998*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.9744852459*pi) q[0];
u1(0.025514754099999985*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.025514754099999985*pi) q[0];
u1(1.9744852459*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u3(0.5*pi,0.0*pi,0.5*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,1.0*pi,1.25*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,1.0*pi,1.0*pi) q[1];
u3(0.5*pi,0.0*pi,1.75*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4758602045000011*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.48892154359999945*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,0.475860197308445*pi,1.0*pi) q[0];
u3(0.5*pi,1.9758602035521922*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.2389215373140525*pi,1.0*pi) q[2];
u3(0.5*pi,1.738921528784972*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5*pi) q[2];
u3(0.5*pi,1.0*pi,1.5*pi) q[3];
cx q[1],q[2];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u3(0.5*pi,1.0*pi,1.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[0];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[2];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u1(1.9889215436*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,1.0*pi,1.5*pi) q[2];
u1(1.9758602045*pi) q[3];
cx q[1],q[2];
u1(0.25*pi) q[3];
u3(0.4836466618000009*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,0.9836466533842037*pi,1.0*pi) q[1];
u3(0.5*pi,1.4836466766861118*pi,0.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u1(1.9889215436*pi) q[1];
u1(1.9758602045*pi) q[2];
u1(1.0*pi) q[1];
u1(1.0*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.47503154530000097*pi) q[1];
u1(1.524968454699999*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.524968454699999*pi) q[1];
u1(0.47503154530000097*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u3(0.5*pi,1.0*pi,1.9961253706250948*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,0.0*pi,1.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,0.0*pi,1.4961253791541749*pi) q[1];
u3(0.5*pi,1.0*pi,1.0*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4931729076000007*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.4968359799000013*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.9931729191067855*pi,0.0*pi) q[2];
u3(0.5*pi,1.493172895804877*pi,1.0*pi) q[3];
u3(0.5*pi,1.0007106097627443*pi,0.0*pi) q[0];
u3(0.5*pi,1.500710601233664*pi,1.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[2];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[3];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[0];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[3];
cx q[2],q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[1];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[1];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[2];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[3];
u3(0.5*pi,0.0*pi,0.0*pi) q[0];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[0];
u1(0.5*pi) q[2];
u1(0.5*pi) q[0];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[2];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[3];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[0];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[1];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
cx q[1],q[0];
u3(0.5*pi,1.0*pi,1.0820521546979227*pi) q[2];
u1(1.9968359799*pi) q[3];
u1(1.9931729076*pi) q[0];
u3(0.5*pi,1.0*pi,1.5820521461688422*pi) q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u1(1.0*pi) q[3];
u1(1.0*pi) q[0];
cx q[2],q[1];
u1(1.75*pi) q[3];
u1(0.25*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
u3(0.4953523062999997*pi,1.5*pi,0.5*pi) q[2];
cx q[1],q[2];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
u1(0.5*pi) q[1];
cx q[2],q[1];
u3(0.5*pi,1.4225955407978106*pi,0.0*pi) q[1];
u3(0.5*pi,1.92259553226873*pi,0.0*pi) q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
u1(1.9931729076*pi) q[1];
u1(1.9968359799*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(1.7491234746000002*pi) q[0];
u1(0.25087652539999994*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25087652539999994*pi) q[0];
u1(1.7491234746000002*pi) q[2];
u2(0.0*pi,1.0*pi) q[0];
u2(0.0*pi,1.0*pi) q[2];
cx q[0],q[1];
cx q[2],q[3];
u1(1.75*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[3];
u3(0.5*pi,0.0*pi,1.5001274256911865*pi) q[0];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u3(0.5*pi,0.0*pi,1.9998373095318382*pi) q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
cx q[1],q[2];
u2(0.0*pi,1.0*pi) q[1];
cx q[2],q[1];
u1(1.5*pi) q[1];
cx q[2],q[1];
u1(0.5*pi) q[1];
u2(0.0*pi,1.0*pi) q[1];
cx q[1],q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u3(0.5*pi,1.0*pi,1.000127434220267*pi) q[1];
u3(0.5*pi,1.0*pi,1.4998373180609188*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.4997681245000003*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.49979352470000044*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.499640698044223*pi,1.0*pi) q[0];
u3(0.5*pi,1.9996406895151426*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.4999562068034085*pi,0.0*pi) q[2];
u3(0.5*pi,0.9999562153324888*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[1];
cx q[2],q[3];
u3(0.5*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[2];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[3];
cx q[1],q[2];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[1];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[2];
cx q[0],q[1];
u3(0.5*pi,1.5*pi,0.5*pi) q[2];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[0];
u3(0.5*pi,0.0*pi,0.0*pi) q[1];
cx q[2],q[3];
cx q[1],q[0];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[2];
u3(0.5*pi,0.0*pi,0.0*pi) q[3];
u3(3.5*pi,1.5*pi,0.5*pi) q[1];
cx q[3],q[2];
u1(0.5*pi) q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[3];
cx q[0],q[1];
u1(0.5*pi) q[3];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[0];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[1];
cx q[2],q[3];
cx q[0],q[1];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[2];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[2],q[3];
cx q[0],q[1];
cx q[3],q[2];
u1(1.9997935247*pi) q[0];
u3(0.5*pi,0.0*pi,1.9993457435746045*pi) q[1];
cx q[2],q[3];
u1(1.0*pi) q[0];
u3(0.5*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,1.499345752103685*pi) q[2];
u1(1.9997681245*pi) q[3];
u1(1.75*pi) q[0];
cx q[1],q[2];
u1(1.0*pi) q[3];
u3(0.499781192899999*pi,1.5*pi,0.5*pi) q[1];
u3(0.5*pi,0.0*pi,0.0*pi) q[2];
u1(0.25*pi) q[3];
cx q[2],q[1];
u3(3.5*pi,1.5*pi,0.5*pi) q[2];
u1(0.5*pi) q[2];
cx q[1],q[2];
u3(0.5*pi,1.000873043297664*pi,1.0*pi) q[1];
u3(0.5*pi,1.5008730665995722*pi,1.0*pi) q[2];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
u1(1.9997935247*pi) q[1];
u1(1.9997681245*pi) q[2];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(0.20792410209999998*pi) q[1];
u1(1.7920758979*pi) q[3];
cx q[0],q[1];
cx q[2],q[3];
u1(1.7920758979*pi) q[1];
u1(0.20792410209999998*pi) q[3];
u2(0.0*pi,1.0*pi) q[1];
u2(0.0*pi,1.0*pi) q[3];
cx q[1],q[0];
cx q[3],q[2];
u1(0.25*pi) q[0];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
u1(1.75*pi) q[3];
u1(1.75*pi) q[1];
u1(0.25*pi) q[2];
cx q[2],q[1];
u2(0.0*pi,1.0*pi) q[2];
cx q[1],q[2];
u1(1.5*pi) q[2];
cx q[1],q[2];
u1(0.5*pi) q[2];
u2(0.0*pi,1.0*pi) q[2];
cx q[2],q[1];
u1(0.25*pi) q[1];
u1(1.75*pi) q[2];
cx q[1],q[0];
cx q[3],q[2];
cx q[0],q[1];
cx q[2],q[3];
cx q[1],q[0];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[0];
cx q[3],q[2];
cx q[0],q[1];
cx q[2],q[3];
cx q[1],q[0];
cx q[3],q[2];
measure q[0] -> c[0];
measure q[3] -> c[3];
cx q[2],q[1];
cx q[1],q[2];
cx q[2],q[1];
measure q[1] -> c[1];
measure q[2] -> c[2];
