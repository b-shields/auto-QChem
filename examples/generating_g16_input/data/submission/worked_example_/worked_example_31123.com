%nprocshared=3
%Mem=6GB
%Chk=worked_example_311.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           1.26617      -1.38079     0.00354      
H            1.29135      -2.46777     0.00183      
C2           2.46071      -0.66145     0.00262      
C4           2.45076      0.72981      0.00655      
H            3.38007      1.29300      0.00779      
C            1.23214      1.41146      0.00537      
C            0.01642      0.70774      -0.00250     
C            -1.21645     1.37897      -0.01609     
C            -2.41637     0.66596      -0.02907     
C            -2.39938     -0.72572     -0.02217     
C            -1.18232     -1.40886     -0.00603     
C            0.03413      -0.70730     -0.00009     
Br1          4.11089      -1.58537     -0.01153     
H            1.23764      2.49924      0.00760      
H            -1.25149     2.46618      -0.02073     
H            -3.36389     1.19830      -0.04544     
H            -3.33355     -1.28142     -0.03135     
H            -1.19087     -2.49663     -0.00122     



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_311.chk
%Chk=worked_example_312.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=worked_example_312.chk
%Chk=worked_example_313.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


