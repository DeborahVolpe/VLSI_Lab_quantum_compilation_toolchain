L'architettura dummy_quantum_dot sfrutta il modello compatto NMR per simulare architetture quantum-dot. Questo implica sul fronte compilazione che bisogna usare le stesse porte native di NMR.

Il dispositivo fornito è inventato, ha cinque qubit e ha connettività lineare.

q[4] --- q[3] --- q[2] --- q[1] --- q[0]

Nei valori di seguito riportati l'ordine è q[4], q[3], q[2], q[1], q[0]. I valori associati a q[1] e q[0] sono quelli forniti da Davide Costa, che ringraziamo pubblicamente. Probabilmente conviene citare la sua tesi https://webthesis.biblio.polito.it/22822/1/tesi.pdf

Tutti i valori sono riportati in MHz e microsecondi.

T1 = 1e3*[20.8 19.8 19.2 20.1 20.4]; % us
T2 = [6.9 5.9 5.3 6.1 6.6]; % us

f_single_qubit = [15.18 15.84 16.07 15.63 15.43]*1e3; % MHz

delta_t_pi/2_gate_duration = 1e-3*[250 250 250 250 250]; % us
 
two_qubit_gate_duration = 	[0    0.1820         0         0         0
							0.1820         0    0.1420         0         0
							 0    0.1420         0    0.1650         0
							 0         0    0.1650         0    0.1500
							 0         0         0    0.1500         0 ]; % us