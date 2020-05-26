%nprocshared=8
%Mem=16GB
%Chk=chemdraw_test_81.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C            -0.67729     -1.18712     -0.07354     
C            -1.35668     0.03122      -0.00126     
C            -0.63207     1.21114      0.07116      
N1           0.71447      1.27559      0.07436      
C            1.39929      0.10384      0.01170      
C            0.72898      -1.12460     -0.04547     
C            2.88152      0.19162      -0.00376     
N2           3.55975      -0.98463     -0.07974     
C            4.90594      -0.92949     -0.08774     
C            5.63796      0.24457      -0.01427     
C            4.96634      1.46625      0.07310      
C            3.55926      1.41533      0.05731      
C            5.69679      2.81309      0.20069      
C            7.23145      2.66872      0.31852      
C            5.40702      3.69183      -1.03373     
C            5.21386      3.55236      1.46850      
C            -1.39021     -2.54166     -0.20896     
C            -2.92692     -2.41955     -0.31695     
C            -0.89957     -3.25545     -1.48846     
C            -1.08318     -3.43205     1.01312      
H            -2.43945     0.09509      -0.00844     
H            -1.13993     2.17017      0.12561      
H            1.31859      -2.03714     -0.08240     
H            5.40592      -1.89222     -0.15375     
H            6.71901      0.17196      -0.02086     
H            2.97568      2.33157      0.10288      
H            7.66381      2.20970      -0.57842     
H            7.51140      2.05528      1.18320      
H            7.71402      3.64500      0.44438      
H            5.75841      3.21123      -1.95422     
H            5.91171      4.66222      -0.95222     
H            4.33728      3.89412      -1.15548     
H            5.38076      2.94579      2.36632      
H            4.14625      3.79407      1.42743      
H            5.74914      4.50004      1.60142      
H            -3.22192     -1.82158     -1.18733     
H            -3.35905     -1.95515     0.57719      
H            -3.39572     -3.40453     -0.42685     
H            -1.09445     -2.64537     -2.37847     
H            -1.40647     -4.21757     -1.62447     
H            0.17582      -3.46329     -1.46248     
H            -1.42716     -2.96318     1.94229      
H            -0.01181     -3.63240     1.12170      
H            -1.58484     -4.40387     0.92702      



--Link1--
%nprocshared=8
%Mem=16GB
%Oldchk=chemdraw_test_81.chk
%Chk=chemdraw_test_82.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=8
%Mem=16GB
%Oldchk=chemdraw_test_82.chk
%Chk=chemdraw_test_83.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read

