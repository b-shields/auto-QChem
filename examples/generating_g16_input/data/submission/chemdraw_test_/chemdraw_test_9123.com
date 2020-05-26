%nprocshared=5
%Mem=10GB
%Chk=chemdraw_test_91.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
N1           0.91087      -0.73439     -0.40828     
N            -0.34915     -1.11601     -0.05574     
C            -0.75250     -2.48458     -0.00019     
N2           -2.02813     -2.76274     0.38843      
C            -2.38654     -4.07333     0.47965      
C            -1.51048     -5.11732     0.19208      
C            -0.21651     -4.80860     -0.21758     
C            0.17279      -3.47605     -0.31868     
N            -3.71965     -4.37922     0.89036      
N            -4.16772     -5.65745     1.03900      
C            -5.43718     -5.52019     1.42713      
C            -5.83067     -4.17734     1.53217      
C            -4.70942     -3.46349     1.18617      
C            -1.13495     -0.02395     0.25369      
C            -0.34542     1.09231      0.12481      
C            0.90079      0.59438      -0.28544     
H            -1.81711     -6.15599     0.27928      
H            0.48725      -5.60329     -0.45168     
H            1.18366      -3.22990     -0.63203     
H            -6.02532     -6.40925     1.61685      
H            -6.79460     -3.78217     1.81908      
H            -4.51893     -2.40210     1.11594      
H            -2.16738     -0.15193     0.54674      
H            -0.63045     2.11896      0.30451      
H            1.80724      1.14657      -0.49976     



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_91.chk
%Chk=chemdraw_test_92.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_92.chk
%Chk=chemdraw_test_93.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


