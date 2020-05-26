%nprocshared=3
%Mem=6GB
%Chk=worked_example_291.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.77487     1.18073      -0.01610     
H            -1.34298     2.10680      -0.01274     
C            0.62246      1.22872      -0.03627     
C            1.38560      0.04946      -0.04459     
C            0.72177      -1.18323     -0.03197     
C3           -0.67825     -1.23293     -0.00822     
H            -1.17963     -2.19796     0.00488      
C2           -1.41868     -0.05331     -0.00258     
Br1          -3.30673     -0.12793     0.02110      
C            2.87588      0.18876      -0.06893     
O            3.37361      1.31632      -0.06805     
C            3.77254      -1.02268     -0.12382     
H            1.11431      2.20089      -0.04700     
H            1.25351      -2.12885     -0.04063     
H            3.27139      -1.95790     0.11654      
H            4.57325      -0.89395     0.61182      
H            4.20667      -1.09748     -1.12454     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_291.chk
%Chk=worked_example_292.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_292.chk
%Chk=worked_example_293.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


