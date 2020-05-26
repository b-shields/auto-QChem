%nprocshared=2
%Mem=4GB
%Chk=worked_example_141.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            0.80088      -0.02590     0.00519      
C            0.52459      -0.88644     -1.20493     
C            0.60295      -2.28635     -1.13540     
C4           0.35395      -3.06862     -2.26620     
H            0.42194      -4.15141     -2.19557     
C2           0.02356      -2.45497     -3.47293     
C3           -0.06492     -1.06714     -3.55925     
H            -0.32388     -0.58542     -4.49905     
C            0.18405      -0.28550     -2.42848     
Br1          -0.30303     -3.51299     -5.00479     
F            1.14437      -0.73821     1.11422      
F            -0.27445     0.72841      0.36415      
F            1.82054      0.85220      -0.20435     
H            0.86188      -2.77696     -0.19766     
H            0.11499      0.79920      -2.50379     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_141.chk
%Chk=worked_example_142.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_142.chk
%Chk=worked_example_143.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


