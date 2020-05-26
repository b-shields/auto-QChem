%nprocshared=3
%Mem=6GB
%Chk=worked_example_451.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           -0.78483     1.05185      0.10710      
H            -1.48705     1.87683      0.18624      
C2           0.58168      1.26619      0.06103      
C4           1.41637      0.16277      -0.04258     
H            2.49567      0.28036      -0.09149     
C            0.85047      -1.11025     -0.10349     
C            -0.53967     -1.25595     -0.06226     
N            -1.35767     -0.17570     0.04613      
C            -1.20922     -2.56842     -0.20067     
C            -0.60675     -3.76954     0.21916      
C            -1.22276     -5.00814     0.00692      
C            -2.46330     -5.07317     -0.61965     
C            -3.09708     -3.89982     -1.01467     
C            -2.47890     -2.66411     -0.80154     
Br1          1.29218      3.01022      0.10629      
H            1.50069      -1.97127     -0.21716     
H            0.35582      -3.75923     0.72457      
H            -0.72921     -5.92166     0.32877      
H            -2.93673     -6.03478     -0.79685     
H            -4.07084     -3.94018     -1.49676     
H            -2.99091     -1.75972     -1.12793     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_451.chk
%Chk=worked_example_452.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_452.chk
%Chk=worked_example_453.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


