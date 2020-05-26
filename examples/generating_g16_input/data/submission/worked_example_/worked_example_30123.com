%nprocshared=3
%Mem=6GB
%Chk=worked_example_301.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            0.91170      -0.16206     0.11632      
O            0.47307      -1.18327     0.61617      
C3           0.18682      1.13493      0.03649      
C2           -1.20366     1.20813      -0.13201     
C4           -1.83938     2.45814      -0.15928     
H            -2.91763     2.52659      -0.29077     
C            -1.10003     3.63313      -0.02355     
C            0.27996      3.56982      0.13932      
C            0.92090      2.32886      0.17181      
Br1          -2.32195     -0.30680     -0.38917     
O            2.13957      -0.02565     -0.45094     
C            2.92358      -1.22028     -0.43205     
H            -1.60243     4.59802      -0.04785     
H            0.85923      4.48336      0.24401      
H            1.99936      2.30217      0.31425      
H            3.93430      -0.96819     -0.76456     
H            2.50073      -1.95419     -1.12461     
H            2.98944      -1.63445     0.57944      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_301.chk
%Chk=worked_example_302.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_302.chk
%Chk=worked_example_303.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


