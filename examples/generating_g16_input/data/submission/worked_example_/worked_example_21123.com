%nprocshared=3
%Mem=6GB
%Chk=worked_example_211.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            1.22636      1.33289      0.01269      
N            2.44146      0.74133      0.03783      
C            2.44993      -0.60392     0.05835      
C            1.30273      -1.38270     0.06015      
C3           0.03540      -0.76079     0.03506      
C2           -1.20679     -1.44502     0.03533      
C4           -2.42011     -0.74684     -0.00314     
H            -3.36708     -1.28149     -0.00575     
C            -2.42512     0.64353      -0.03832     
C            -1.21901     1.33979      -0.03051     
C            0.00691      0.65134      0.00604      
Br1          -1.32086     -3.34587     0.09289      
H            1.26269      2.41959      -0.00303     
H            3.43496      -1.06193     0.07334      
H            1.41125      -2.46156     0.07770      
H            -3.36746     1.18485      -0.07077     
H            -1.23884     2.42777      -0.05561     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_211.chk
%Chk=worked_example_212.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_212.chk
%Chk=worked_example_213.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


