%nprocshared=2
%Mem=4GB
%Chk=worked_example_71.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.67113     1.16380      0.00069      
H            -1.14894     2.13910      0.00011      
N            0.67978      1.19268      0.00250      
C            1.28793      -0.00522     0.00324      
N            0.67507      -1.20071     0.00236      
C3           -0.67571     -1.16652     0.00055      
H            -1.15736     -2.13993     -0.00014     
C2           -1.40627     0.00008      -0.00036     
Br1          -3.28338     0.00378      -0.00287     
H            2.37267      -0.00735     0.00469      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_71.chk
%Chk=worked_example_72.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_72.chk
%Chk=worked_example_73.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


