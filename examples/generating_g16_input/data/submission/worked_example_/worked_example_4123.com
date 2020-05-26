%nprocshared=2
%Mem=4GB
%Chk=worked_example_41.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.77080     1.18482      -0.00436     
H            -1.35140     2.10472      0.01328      
C            0.62075      1.26158      0.02977      
C            1.37936      0.09593      0.00867      
C            0.74532      -1.14648     -0.04746     
C3           -0.65965     -1.24511     -0.08327     
C2           -1.40919     -0.06022     -0.05997     
Br1          -3.30818     -0.05389     -0.09954     
C            -1.30748     -2.60414     -0.14211     
F            -0.40270     -3.62720     -0.17262     
F            -2.10294     -2.86383     0.93219      
F            -2.08221     -2.78145     -1.24787     
H            1.11144      2.23098      0.07344      
H            2.46537      0.15248      0.03596      
H            1.35930      -2.04714     -0.06288     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_41.chk
%Chk=worked_example_42.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_42.chk
%Chk=worked_example_43.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


