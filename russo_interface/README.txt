Passi da seguire:


1) Scaricare MATLAB QuanTO da server VLSI.

1.1) Aggiungere tutte le directory (i.e. anche le subdir) di MATLAB QuanTO alla lista di directory "note" a MATLAB con il "Search Path".
1.2) Garantire che "matlab" è un alias che permette di lanciare MATLAB dalla shell.


2) Lanciare una simulazione ed elaborare i risultati

2.0) Raccomandazioni preliminari sui file .qasm:
	a) Garantire che i file forniti al simulatore abbiano un solo registro quantistico qreg q[N], dove N è esattamente pari al numero di qubit del backend NMR target, ed un solo registro classico c[M], dove M <= N.
	b) Garantire che i file forniti al simulatore abbiano solo le porte native della tecnologia, quindi rx, ry, rz, cz e/o rzz. Attualmente sarebbe meglio usare quest'ultima solo con il backend "crotonic_acid".
2.1) Lo scipt python testinterfaceqasm.py permette di lanciare automaticamente una simulazione eseguendo MATLAB in batch mode. L'utente può passare due parametri: il nome del file .qasm da simulare ed il dispositivo da usare come backend (per i nomi vedi sezione 3, non virgolettati come in questo README).
2.2) La cartella results/ ha tre sottocartelle:
	- log_files/, contenente dei log file, ciascuno dei quali avente al suo interno la diagonale principale della matrice di densità, i.e. la distribuzione di probabilità degli autostati PRIMA DI UNA MISURA (dimensione pari a 2^numeroDiQubit) e la fidelity.
	- probability_distributions/, contenente la distribuzione di probabilità degli autostati DOPO LA MISURA (dimensione pari a 2^numeroDiBitClassici)
	- workspaces/, contenenti dei file "MATLAB Data", ciascuno con la workspace di una simulazione.
	Nel nome di ciascun file vi sono il nome del backend e data e ora della simulazione.


3) Per il momento si consiglia di adoperare i seguenti backend, tenendo a mente che tutti i vettori e le matrici devono essere letti con l'ordine dei qubit q[n-1] q[n-2] ... q[0]. I parametri sono in pseudo-MATLAB:
	
	1) "crotonic_acid" (4 qubit di carbonio)
		B0 = 11.744; % T
		
		T2 = 1e6*[0.84 0.92 0.66 0.79]; % us
		T1 = 1e6*[5.1 5.3 5.6 10.2]; % us
		f_single_qubit = 125.76.*(1 - [18.08, 147.55, 122.38, 172.35]*1E-6) = [125.7577262592, 125.741444112, 125.7446094912, 125.738325264]; % MHz
		
		delta_t_pi/2_gate_duration = [309.42, 309.42, 309.42, 309.42] % us
		
		J_Coupling_matrix = 1E-6*[0 41.64 1.46 7.04;
							41.64 0 69.72 1.18;
							1.46 69.72 0 72.36;
							7.04 1.18 72.36 0]; % MHz
	
	2) "diethyl_fluoromanolate" (3 qubit, con q[2] di idrogeno, q[1] di fluoro e q[0] di carbonio)
		B0 = 14.1; % T
		
		T2 = 1e6*[1.11 1.08 1.02]; % us
		T1 = 1e6*[2.56 3.15 2.82]; % us
		
		delta_t_pi/2_gate_duration = [9.55, 22.80, 15.50] % us, a pag. 4 di https://arxiv.org/pdf/1804.09320.pdf e di http://dx.doi.org/10.1103/PhysRevA.98.032301
		
		J_Coupling_matrix = 1E-6*[0 47.5 161.6;
								  47.5 0 -191.5;
								  161.6 -191.5 0]; % MHz
								  
								  
	