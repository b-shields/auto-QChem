%nprocshared=2
%Mem=4GB
%Chk=worked_example_171.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.66713     1.16984      0.00287      
H            -1.26158     2.07961      0.00369      
C2           0.72213      1.21000      0.00184      
C3           1.42665      0.01154      0.00083      
H            2.51058      -0.01420     0.00000      
C            0.70987      -1.17629     0.00089      
C            -0.67495     -1.13251     0.00195      
N            -1.38690     0.02021      0.00295      
F            1.35327      -2.35016     -0.00007     
Br1          1.63758      2.85809      0.00183      
H            -1.25777     -2.04788     0.00202      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_171.chk
%Chk=worked_example_172.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_172.chk
%Chk=worked_example_173.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


