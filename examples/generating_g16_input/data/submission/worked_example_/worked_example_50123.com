%nprocshared=2
%Mem=4GB
%Chk=worked_example_501.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.14095     -0.79428     0.00003      
C            -0.40313     0.55679      -0.00117     
C            0.60817      1.49372      -0.00047     
C4           1.92590      1.02617      0.00069      
H            2.74568      1.74060      0.00045      
C2           2.18671      -0.35601     0.00177      
C3           1.14637      -1.28697     0.00189      
H            1.33066      -2.35482     0.00279      
Br1          3.97870      -0.96242     0.00222      
O            -1.73560     0.82650      -0.00346     
C            -2.28396     -0.50816     -0.00899     
O            -1.27715     -1.54194     -0.00132     
H            0.38709      2.55512      -0.00137     
H            -2.90314     -0.62886     -0.90539     
H            -2.91876     -0.63026     0.87613      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_501.chk
%Chk=worked_example_502.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_502.chk
%Chk=worked_example_503.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


