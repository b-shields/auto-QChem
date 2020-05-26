%nprocshared=2
%Mem=4GB
%Chk=worked_example_431.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.68078     1.18481      -0.00216     
H            -1.29660     2.07981      -0.00431     
C2           0.70282      1.25499      -0.00005     
C3           1.42857      0.06801      0.00303      
H            2.51660      0.08911      0.00488      
C            0.74700      -1.15544     0.00404      
C            -0.64209     -1.12170     0.00160      
N            -1.37020     0.01906      -0.00156     
C            1.45298      -2.47475     0.00912      
F            2.81011      -2.36296     0.00315      
F            1.14569      -3.22579     1.10161      
F            1.13723      -3.23916     -1.07163     
Br1          1.58633      2.91947      -0.00079     
H            -1.23174     -2.03695     0.00229      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_431.chk
%Chk=worked_example_432.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_432.chk
%Chk=worked_example_433.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


