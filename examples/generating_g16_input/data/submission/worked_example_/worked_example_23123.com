%nprocshared=3
%Mem=6GB
%Chk=worked_example_231.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            1.27399      -1.29556     0.07051      
N            2.46458      -0.65624     0.08722      
C4           2.41585      0.69305      0.06581      
H            3.38808      1.17859      0.07985      
C2           1.23820      1.43183      0.02860      
C3           -0.00066     0.75137      0.00937      
C            -1.27002     1.37879      -0.03119     
C            -2.45314     0.63478      -0.04902     
C            -2.40262     -0.75338     -0.02516     
C            -1.16896     -1.39989     0.01560      
C            0.02852      -0.66201     0.03208      
Br1          1.38542      3.32469      0.00698      
H            1.35135      -2.38035     0.08913      
H            -1.35553     2.46308      -0.05068     
H            -3.41311     1.14454      -0.08171     
H            -3.32213     -1.33295     -0.03873     
H            -1.14681     -2.48782     0.03404      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_231.chk
%Chk=worked_example_232.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_232.chk
%Chk=worked_example_233.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


