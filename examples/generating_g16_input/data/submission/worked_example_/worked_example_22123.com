%nprocshared=3
%Mem=6GB
%Chk=worked_example_221.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
N            1.22637      -1.37435     0.02985      
C4           2.37451      -0.65517     0.02789      
H            3.28249      -1.25103     0.03574      
C2           2.41695      0.72691      0.01369      
C3           1.21616      1.42296      0.00263      
H            1.21494      2.50940      -0.00733     
C            0.00712      0.71244      0.00092      
C            -1.23467     1.37151      -0.01715     
C            -2.42049     0.63963      -0.02533     
C            -2.37105     -0.74959     -0.01222     
C            -1.13497     -1.40266     0.00916      
C            0.06246      -0.69976     0.01447      
Br1          4.06254      1.64516      0.00342      
H            -1.28422     2.45812      -0.02726     
H            -3.37911     1.15209      -0.04349     
H            -3.28986     -1.33055     -0.01986     
H            -1.10436     -2.48965     0.01978      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_221.chk
%Chk=worked_example_222.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_222.chk
%Chk=worked_example_223.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


