%nprocshared=2
%Mem=4GB
%Chk=worked_example_81.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -1.40438     -0.09087     -0.02681     
H            -2.48846     -0.13632     -0.07329     
C            -0.76170     1.14412      0.02303      
C            0.62392      1.16504      0.08175      
N            1.39206      0.05322      0.09359      
C3           0.74090      -1.13404     0.04428      
H            1.38572      -2.00793     0.05532      
C2           -0.63927     -1.25181     -0.01602     
Br1          -1.46327     -2.94572     -0.08202     
H            -1.32766     2.06917      0.01626      
H            1.16858      2.10444      0.12198      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_81.chk
%Chk=worked_example_82.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_82.chk
%Chk=worked_example_83.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


