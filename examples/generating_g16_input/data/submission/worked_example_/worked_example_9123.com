%nprocshared=2
%Mem=4GB
%Chk=worked_example_91.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           -0.74670     1.13939      0.02237      
H            -1.28898     2.08099      0.02862      
N            0.60148      1.26136      0.06181      
C            1.30735      0.11103      0.05534      
C            0.73385      -1.15003     0.01160      
C4           -0.65550     -1.24647     -0.02840     
H            -1.13165     -2.22213     -0.06313     
C2           -1.41036     -0.07860     -0.02293     
Br1          -3.29259     -0.15200     -0.07602     
F            2.64387      0.20292      0.09369      
H            1.36375      -2.03146     0.00908      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_91.chk
%Chk=worked_example_92.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_92.chk
%Chk=worked_example_93.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


