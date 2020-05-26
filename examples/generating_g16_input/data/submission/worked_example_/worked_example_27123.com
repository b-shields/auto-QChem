%nprocshared=3
%Mem=6GB
%Chk=worked_example_271.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 2
C2           1.29102      -1.35910     0.05020      
N4           2.46624      -0.68194     0.06231      
C            2.40072      0.66058      0.04708      
C            1.21519      1.37042      0.01908      
C            0.00561      0.66894      0.00585      
C            -1.21627     1.36263      -0.02543     
C            -2.43012     0.67708      -0.03872     
C            -2.43992     -0.71146     -0.01859     
C            -1.23418     -1.41552     0.01239      
C3           0.01682      -0.74433     0.02345      
Br1          1.46782      -3.26160     0.06780      
H            3.35928      1.17197      0.05780      
H            1.24185      2.45552      0.00761      
H            -1.23271     2.45086      -0.04069     
H            -3.36661     1.22856      -0.06462     
H            -3.38390     -1.25079     -0.02737     
H            -1.28412     -2.50184     0.02810      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_271.chk
%Chk=worked_example_272.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_272.chk
%Chk=worked_example_273.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


