%nprocshared=2
%Mem=4GB
%Chk=worked_example_521.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.79251     1.15830      -0.01978     
H            -1.37970     2.07251      -0.02664     
C            0.60094      1.23373      0.00107      
C            1.36341      0.06507      0.01002      
C            0.73463      -1.18060     -0.00182     
C3           -0.65863     -1.25943     -0.02267     
H            -1.14130     -2.23286     -0.03181     
C2           -1.41607     -0.08879     -0.03157     
Br1          -3.30364     -0.19328     -0.05991     
H            1.09234      2.20336      0.01034      
H            2.44894      0.12516      0.02625      
H            1.33008      -2.09006     0.00518      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_521.chk
%Chk=worked_example_522.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_522.chk
%Chk=worked_example_523.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


