%nprocshared=3
%Mem=6GB
%Chk=chemdraw_test_101.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
N2           -0.70702     -1.22115     -0.04117     
C            -1.38225     -0.03744     -0.06844     
N            -2.80854     -0.07380     -0.12301     
N1           -3.57159     1.05693      -0.15468     
C            -4.82691     0.60730      -0.20787     
C            -4.90297     -0.79371     -0.21073     
C            -3.59488     -1.20824     -0.15486     
C            -0.73751     1.19837      -0.04962     
C            0.65436      1.22404      -0.00509     
C            1.35923      0.02644      0.02114      
C            0.64184      -1.15811     0.00324      
H            -5.63759     1.32425      -0.24288     
H            -5.78503     -1.41650     -0.24871     
H            -3.14422     -2.19072     -0.13669     
H            -1.29629     2.12952      -0.07093     
H            1.18215      2.17364      0.00783      
H            2.44301      0.01662      0.05464      
H            1.15005      -2.11820     0.02422      



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=chemdraw_test_101.chk
%Chk=chemdraw_test_102.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=3
%Mem=6GB
%Oldchk=chemdraw_test_102.chk
%Chk=chemdraw_test_103.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


