%nprocshared=2
%Mem=4GB
%Chk=worked_example_361.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -1.40271     -0.10274     -0.01742     
H            -2.48848     -0.16072     -0.02153     
C            -0.77993     1.14744      0.00335      
C            0.61224      1.22820      0.00870      
C            1.36841      0.05993      -0.00671     
C3           0.76205      -1.19036     -0.02743     
H            1.37936      -2.08217     -0.03907     
C2           -0.62819     -1.26495     -0.03272     
Br1          -1.47581     -2.95453     -0.06094     
F            2.70533      0.14278      -0.00147     
H            -1.37880     2.05475      0.01530      
H            1.11283      2.19139      0.02473      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_361.chk
%Chk=worked_example_362.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_362.chk
%Chk=worked_example_363.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


