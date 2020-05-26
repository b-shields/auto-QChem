%nprocshared=4
%Mem=8GB
%Chk=chemdraw_test_111.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.66796     -1.20993     0.03116      
C            -1.34850     -0.00118     0.04690      
C            -0.60427     1.16376      0.00961      
N1           0.74615      1.19577      -0.04343     
C            1.41411      0.00687      -0.06051     
C            0.72486      -1.20784     -0.02234     
C            2.89556      0.07212      -0.12290     
N2           3.56399      -1.11651     -0.13949     
C            4.91429      -1.08401     -0.19684     
C            5.65782      0.08117      -0.23893     
C            4.97683      1.28964      -0.22257     
C            3.58419      1.28706      -0.16450     
H            -1.21124     -2.14994     0.05961      
H            -2.43114     0.03276      0.08722      
H            -1.08859     2.13603      0.02132      
H            1.26730      -2.14890     -0.03506     
H            5.39897      -2.05611     -0.20830     
H            6.74034      0.04764      -0.28353     
H            5.51960      2.22980      -0.25476     
H            3.04141      2.22792      -0.15207     



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=chemdraw_test_111.chk
%Chk=chemdraw_test_112.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=chemdraw_test_112.chk
%Chk=chemdraw_test_113.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


