%nprocshared=2
%Mem=4GB
%Chk=worked_example_321.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.65061     1.13123      0.00416      
H            -1.25226     2.03626      0.00479      
C2           0.73563      1.17948      0.00245      
C3           1.44668      -0.01718     0.00177      
H            2.53416      -0.01327     0.00042      
C            0.74300      -1.22295     0.00286      
C            -0.64490     -1.17583     0.00453      
N            -1.35884     -0.02401     0.00519      
C            1.42374      -2.47798     0.00236      
N            1.97851      -3.49684     0.00200      
Br1          1.64257      2.83184      0.00115      
H            -1.24609     -2.08281     0.00542      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_321.chk
%Chk=worked_example_322.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_322.chk
%Chk=worked_example_323.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


