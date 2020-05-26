%nprocshared=2
%Mem=4GB
%Chk=worked_example_51.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -1.40001     -0.07475     0.00935      
H            -2.48618     -0.10387     0.02199      
C            -0.74243     1.15290      0.00837      
C            0.65293      1.19274      -0.01159     
C            1.40303      0.01196      -0.02934     
C3           0.74270      -1.21724     -0.02303     
H            1.28976      -2.15322     -0.03316     
C2           -0.65405     -1.25222     -0.00551     
Br1          -1.54683     -2.92074     -0.00648     
O            2.75750      0.19870      -0.05505     
C            3.56905      -0.96895     -0.07927     
H            -1.31216     2.07860      0.02081      
H            1.16363      2.15314      -0.01423     
H            4.61358      -0.64871     -0.14118     
H            3.35814      -1.58234     -0.96152     
H            3.45017      -1.54720     0.84291      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_51.chk
%Chk=worked_example_52.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_52.chk
%Chk=worked_example_53.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


