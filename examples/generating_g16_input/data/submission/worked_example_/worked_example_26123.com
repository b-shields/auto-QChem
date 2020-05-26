%nprocshared=2
%Mem=4GB
%Chk=worked_example_261.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C3           -0.66258     -1.25816     -0.04682     
C2           -1.42937     -0.08747     -0.02072     
C4           -0.80141     1.16128      0.01776      
H            -1.39853     2.06251      0.03790      
C            0.59472      1.24315      0.01124      
C            1.36299      0.07563      0.00562      
C            0.73683      -1.17419     -0.00882     
Xx           -2.16627     -0.12861     -0.03290     
C            -1.33341     -2.58970     -0.14928     
H            1.08291      2.20898      0.00997      
H            2.44327      0.13899      0.00296      
H            1.34051      -2.07330     -0.01306     
H            -2.43498     -2.47569     -0.23952     
H            -1.09900     -3.21839     0.73426      
H            -0.96469     -3.09751     -1.06635     



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_261.chk
%Chk=worked_example_262.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_262.chk
%Chk=worked_example_263.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


