%nprocshared=4
%Mem=8GB
%Chk=worked_example_111.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           2.21867      -0.21028     -0.38421     
H            3.20919      -0.63672     -0.52429     
C            1.10225      -1.05201     -0.44180     
C            -0.16603     -0.48112     -0.24349     
C            -0.33222     0.89431      -0.04848     
C3           0.80499      1.72325      0.01826      
H            0.69084      2.78590      0.20475      
C2           2.06957      1.15120      -0.13756     
Br1          3.60525      2.24895      0.00208      
C            -1.72713     1.14032      0.05450      
C            -2.37455     -0.06905     -0.01989     
N            -1.42329     -1.05533     -0.15043     
C            -1.69790     -2.47670     0.04213      
C            -2.29589     -3.21216     -1.13345     
C            -2.45628     -2.66286     -2.41098     
C            -3.09216     -3.39193     -3.42148     
C            -3.55592     -4.68288     -3.17549     
C            -3.36546     -5.26018     -1.92444     
C            -2.73565     -4.53224     -0.91482     
H            1.22647      -2.11421     -0.62966     
H            -2.20331     2.10121      0.19932      
H            -3.42731     -0.31640     0.04464      
H            -2.40521     -2.52430     0.88067      
H            -0.77183     -2.96397     0.36503      
H            -2.10836     -1.65796     -2.64036     
H            -3.23558     -2.94450     -4.40185     
H            -4.06984     -5.23548     -3.95733     
H            -3.71657     -6.27186     -1.73273     
H            -2.60190     -4.99998     0.05887      



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=worked_example_111.chk
%Chk=worked_example_112.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=worked_example_112.chk
%Chk=worked_example_113.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


