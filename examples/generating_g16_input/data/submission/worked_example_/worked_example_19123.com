%nprocshared=3
%Mem=6GB
%Chk=worked_example_191.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C2           -0.66476     1.20949      -0.00001     
C4           0.72785      1.17156      -0.00166     
H            1.30641      2.09172      -0.00256     
C            1.39201      -0.05514     -0.00221     
C            0.64597      -1.23529     -0.00090     
C            -0.75478     -1.19791     0.00064      
C3           -1.41220     0.03145      0.00107      
H            -2.49442     0.09691      0.00229      
O            -1.35415     -2.42879     0.00166      
C            -2.77638     -2.45483     0.00314      
O            2.75706      0.03354      -0.00422     
C            3.48078      -1.19116     -0.00376     
Br1          -1.55351     2.87999      0.00081      
H            1.12488      -2.20931     -0.00112     
H            -3.09115     -3.50284     0.00453      
H            -3.18034     -1.98673     -0.90055     
H            -3.17856     -1.98497     0.90672      
H            4.54783      -0.94873     -0.00735     
H            3.26911      -1.77514     -0.90556     
H            3.27407      -1.77112     0.90178      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_191.chk
%Chk=worked_example_192.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_192.chk
%Chk=worked_example_193.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


