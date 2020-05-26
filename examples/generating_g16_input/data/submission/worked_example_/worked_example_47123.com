%nprocshared=3
%Mem=6GB
%Chk=worked_example_471.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.79382     1.00851      0.02330      
C4           0.57878      1.17376      0.01590      
H            1.01292      2.16708      0.03492      
C2           1.36666      0.03064      -0.01906     
C3           0.78293      -1.22882     -0.04751     
H            1.38305      -2.13199     -0.07766     
C            -0.60343     -1.29562     -0.04475     
N            -1.40296     -0.19521     -0.00698     
C            -1.24913     -2.64198     -0.10583     
O            -0.61698     -3.68937     -0.12972     
O            -2.60185     -2.53339     -0.14960     
C            -3.28184     -3.78303     -0.25853     
Br1          3.24989      0.19085      -0.03769     
H            -1.46153     1.86580      0.05156      
H            -4.35740     -3.58701     -0.25588     
H            -3.04543     -4.42837     0.59338      
H            -3.02207     -4.27612     -1.20105     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_471.chk
%Chk=worked_example_472.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_472.chk
%Chk=worked_example_473.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


