%nprocshared=2
%Mem=4GB
%Chk=worked_example_401.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            0.03187      -1.31486     -0.03991     
N            1.20848      -0.65956     -0.14468     
C3           1.17716      0.70090      -0.16104     
C2           -0.01953     1.41571      -0.07577     
C4           -1.21751     0.70959      0.03253      
H            -2.16789     1.23136      0.10187      
C            -1.19435     -0.68118     0.05089      
Br1          -0.09234     3.30856      -0.10162     
C            2.51003      1.37789      -0.28761     
H            0.10523      -2.39887     -0.03090     
H            -2.11024     -1.25589     0.13300      
H            3.31940      0.63997      -0.29635     
H            2.68581      2.04868      0.55910      
H            2.56493      1.94276      -1.22344     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_401.chk
%Chk=worked_example_402.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_402.chk
%Chk=worked_example_403.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


