%nprocshared=2
%Mem=4GB
%Chk=worked_example_151.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
S            1.76909      1.44880      0.00128      
C4           2.55402      -0.06418     0.00060      
H            3.63368      -0.11989     0.00056      
C2           1.65100      -1.09598     0.00016      
C3           0.28188      -0.67680     0.00039      
C            -0.93622     -1.40515     0.00014      
C            -2.16672     -0.74060     0.00034      
C            -2.21340     0.64542      0.00080      
C            -1.03502     1.39372      0.00112      
C            0.20371      0.72126      0.00092      
Br1          2.16789      -2.91742     -0.00075     
H            -0.92265     -2.49258     -0.00022     
H            -3.08956     -1.31584     0.00013      
H            -3.17387     1.15560      0.00092      
H            -1.07441     2.47952      0.00150      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_151.chk
%Chk=worked_example_152.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_152.chk
%Chk=worked_example_153.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


