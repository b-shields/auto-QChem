%nprocshared=2
%Mem=4GB
%Chk=worked_example_351.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
Br1          1.04647      0.18918      -0.02026     
C2           2.91018      0.00036      -0.01137     
C3           3.78051      1.06171      -0.00838     
H            3.47486      2.10069      -0.01087     
C            5.13741      0.61735      -0.00159     
C            5.23113      -0.75901     0.00025      
S4           3.68793      -1.50577     -0.00620     
H            5.99959      1.27326      0.00178      
H            6.12752      -1.36409     0.00506      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_351.chk
%Chk=worked_example_352.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_352.chk
%Chk=worked_example_353.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


