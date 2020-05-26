%nprocshared=2
%Mem=4GB
%Chk=worked_example_491.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 2
C            -0.64210     -1.24281     -0.05780     
C            -1.39947     -0.07535     -0.01583     
C            -0.72027     1.12523      0.04066      
N4           0.62633      1.22033      0.05651      
C2           1.33161      0.06900      0.01466      
C3           0.74835      -1.18481     -0.04255     
H            1.35617      -2.08146     -0.07447     
Br1          3.22383      0.19295      0.03463      
C            -1.31199     -2.55488     -0.11998     
O            -2.53206     -2.65440     -0.13936     
H            -2.48455     -0.10084     -0.02688     
H            -1.25376     2.07144      0.07549      
H            -0.66133     -3.44509     -0.14863     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_491.chk
%Chk=worked_example_492.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_492.chk
%Chk=worked_example_493.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


