%nprocshared=2
%Mem=4GB
%Chk=worked_example_461.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.71516     1.13407      0.03201      
C4           0.65873      1.26497      0.02808      
H            1.11826      2.24598      0.06598      
C2           1.41325      0.10265      -0.02611     
C3           0.79384      -1.14157     -0.07461     
H            1.38259      -2.05354     -0.11693     
C            -0.59878     -1.19240     -0.06889     
N            -1.35396     -0.05539     -0.01467     
C            -1.30638     -2.54089     -0.12456     
F            -0.44247     -3.59863     -0.19559     
F            -2.08271     -2.78343     0.96992      
F            -2.12492     -2.67206     -1.20735     
Br1          3.30043      0.21009      -0.03517     
H            -1.36209     2.00662      0.07366      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_461.chk
%Chk=worked_example_462.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_462.chk
%Chk=worked_example_463.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


