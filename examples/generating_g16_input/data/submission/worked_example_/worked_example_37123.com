%nprocshared=2
%Mem=4GB
%Chk=worked_example_371.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           -0.72270     1.12885      -0.01844     
H            -1.25536     2.07522      -0.00563     
N            0.62742      1.23856      -0.05591     
C            1.34296      0.08833      -0.07475     
C            0.74216      -1.16871     -0.05175     
C4           -0.64883     -1.25253     -0.01414     
H            -1.13266     -2.22455     0.00149      
C2           -1.39544     -0.08151     0.00182      
Br1          -3.27838     -0.14217     0.04820      
C            2.83693      0.20783      -0.11831     
H            1.34452      -2.07175     -0.06508     
H            3.14250      1.25783      -0.17508     
H            3.23250      -0.30896     -0.99847     
H            3.27712      -0.22841     0.78372      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_371.chk
%Chk=worked_example_372.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_372.chk
%Chk=worked_example_373.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


