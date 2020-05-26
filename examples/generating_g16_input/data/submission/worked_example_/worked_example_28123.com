%nprocshared=2
%Mem=4GB
%Chk=worked_example_281.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C4           -0.77134     1.16824      -0.03364     
H            -1.36357     2.08062      -0.02774     
C            0.62362      1.25211      -0.05815     
C            1.38641      0.07553      -0.06706     
C            0.76160      -1.17973     -0.04929     
C3           -0.63389     -1.25408     -0.02492     
H            -1.11905     -2.22756     -0.01227     
C2           -1.39208     -0.08201     -0.01813     
Br1          -3.27913     -0.18895     0.01043      
N            2.85268      0.15871      -0.09726     
O            3.36528      1.28649      -0.11701     
O            3.48972      -0.90418     -0.10219     
H            1.09540      2.23278      -0.07070     
H            1.34132      -2.10085     -0.05500     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_281.chk
%Chk=worked_example_282.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_282.chk
%Chk=worked_example_283.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


