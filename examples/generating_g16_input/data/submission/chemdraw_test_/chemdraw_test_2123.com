%nprocshared=3
%Mem=6GB
%Chk=chemdraw_test_21.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -1.07304     0.19753      -0.17146     
C            -0.31360     -1.06776     0.16658      
N1           1.10300      -0.72739     0.00705      
C            1.07784      0.55678      -0.16509     
O            -0.09042     1.22058      -0.19166     
C            2.29956      1.41865      -0.37247     
N2           3.32703      1.07646      -1.08558     
C            4.24500      2.20246      -0.88550     
C            3.39453      3.29526      -0.27599     
O            2.26401      2.61415      0.24404      
H            -1.84265     0.42368      0.57303      
H            -1.54474     0.14090      -1.15811     
H            -0.59943     -1.89133     -0.49579     
H            -0.50330     -1.38228     1.19802      
H            4.69855      2.52183      -1.82845     
H            5.04859      1.89999      -0.20435     
H            3.05915      4.01853      -1.02734     
H            3.91934      3.82985      0.52079      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=chemdraw_test_21.chk
%Chk=chemdraw_test_22.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=chemdraw_test_22.chk
%Chk=chemdraw_test_23.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


