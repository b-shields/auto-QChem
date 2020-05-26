%nprocshared=3
%Mem=6GB
%Chk=worked_example_21.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.73548     1.19422      0.21767      
H            -1.29231     2.11166      0.39569      
C            0.64541      1.26921      0.06433      
C            1.36963      0.10588      -0.14759     
C            0.70707      -1.12182     -0.24660     
C3           -0.69520     -1.24004     -0.10338     
C2           -1.40004     -0.04432     0.16190      
Br1          -3.26430     0.02601      0.56200      
C            -1.30903     -2.58963     -0.26012     
C            -0.69205     -3.73679     0.28437      
C            -1.21410     -5.02091     0.08947      
C            -2.39096     -5.19194     -0.62991     
C            -3.02766     -4.08454     -1.17382     
C            -2.47925     -2.80349     -1.01049     
H            1.15200      2.22916      0.12114      
H            2.45153      0.14652      -0.24754     
H            1.31276      -2.00426     -0.44242     
H            0.22413      -3.64350     0.86319      
H            -0.69495     -5.88434     0.49643      
H            -2.80608     -6.18549     -0.77371     
H            -3.95009     -4.20639     -1.73475     
H            -2.98631     -1.97399     -1.49754     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_21.chk
%Chk=worked_example_22.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_22.chk
%Chk=worked_example_23.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


