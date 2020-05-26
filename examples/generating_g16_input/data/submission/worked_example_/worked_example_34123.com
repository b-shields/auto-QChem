%nprocshared=2
%Mem=4GB
%Chk=worked_example_341.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           -0.65436     -1.25044     -0.02239     
C2           -1.41959     -0.08615     -0.03069     
C4           -0.78995     1.15926      -0.01675     
H            -1.37377     2.07616      -0.02297     
C            0.60555      1.23050      0.00543      
C            1.36833      0.06072      0.01364      
C            0.73629      -1.18290     -0.00030     
Br1          -3.30817     -0.17377     -0.06075     
F            -1.23874     -2.45764     -0.03546     
H            1.09877      2.20003      0.01632      
H            2.45415      0.11885      0.03089      
H            1.31688      -2.10017     0.00587      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_341.chk
%Chk=worked_example_342.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_342.chk
%Chk=worked_example_343.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


