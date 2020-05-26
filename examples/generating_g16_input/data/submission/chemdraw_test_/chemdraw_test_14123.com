%nprocshared=5
%Mem=10GB
%Chk=chemdraw_test_141.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.73233     1.24007      -0.05245     
C            0.65441      1.16912      -0.04840     
N2           1.36110      0.00950      -0.02757     
C            0.62683      -1.13188     -0.03957     
C            -0.75951     -1.16012     -0.03928     
C            -1.44702     0.04943      -0.03433     
O            -2.80903     -0.06875     -0.01694     
C            -3.56345     1.13834      -0.01214     
C            1.43016      -2.40343     -0.06595     
N            2.72915      -2.36886     -0.03273     
N            0.85943      -3.64410     -0.12634     
C            1.48977      2.41955      -0.08284     
N1           2.78651      2.35653      -0.06362     
H            3.05037      1.35791      -0.03581     
N            0.94746      3.67480      -0.13256     
H            -1.22501     2.20098      -0.08123     
H            -1.31066     -2.09148     -0.05332     
H            -4.62397     0.87059      -0.00303     
H            -3.37325     1.72364      -0.91770     
H            -3.35858     1.72665      0.88872      
H            3.01292      -1.37619     -0.00250     
H            0.00365      -3.79851     0.38902      
H            1.55474      -4.36420     0.05103      
H            0.14226      3.85426      0.45152      
H            1.67688      4.36929      0.01242      



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_141.chk
%Chk=chemdraw_test_142.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_142.chk
%Chk=chemdraw_test_143.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read

