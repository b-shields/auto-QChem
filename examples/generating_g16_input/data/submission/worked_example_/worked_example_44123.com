%nprocshared=3
%Mem=6GB
%Chk=worked_example_441.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            0.14370      -1.21592     0.39999      
C            -1.14260     -0.75888     0.21096      
C4           -1.30749     0.56220      -0.18284     
H            -2.31373     0.94144      -0.35029     
C2           -0.19199     1.38113      -0.38540     
C3           1.09201      0.85823      -0.15712     
N            1.24043      -0.44510     0.23898      
C            2.39355      1.54375      -0.37629     
C            2.61788      2.90685      -0.12365     
C            3.84707      3.51710      -0.41069     
C            4.90549      2.76362      -0.90634     
C            4.74065      1.39876      -1.10039     
C            3.50238      0.80281      -0.84135     
Br1          -0.56787     3.11897      -1.05773     
H            0.33711      -2.24813     0.67967      
H            -1.99451     -1.41778     0.34163      
H            1.84392      3.53060      0.31298      
H            3.97393      4.58355      -0.24121     
H            5.85872      3.23574      -1.12733     
H            5.56878      0.79113      -1.45550     
H            3.40387      -0.27043     -1.00425     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_441.chk
%Chk=worked_example_442.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_442.chk
%Chk=worked_example_443.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


