%nprocshared=2
%Mem=4GB
%Chk=worked_example_481.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C2           2.14371      0.70142      0.00241      
C4           2.12351      -0.69600     0.00136      
H            3.05476      -1.25834     0.00160      
C            0.91123      -1.39517     0.00002      
C            -0.24971     -0.62530     -0.00015     
C            -0.26568     0.76536      0.00083      
C3           0.96081      1.45378      0.00211      
H            0.98441      2.53880      0.00291      
C            -1.63718     1.13391      0.00024      
C            -2.35546     -0.03992     -0.00097     
O            -1.52118     -1.11221     -0.00125     
Br1          3.80836      1.60392      0.00436      
H            0.86971      -2.47757     -0.00079     
H            -2.05067     2.13221      0.00068      
H            -3.41145     -0.27191     -0.00170     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_481.chk
%Chk=worked_example_482.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_482.chk
%Chk=worked_example_483.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


