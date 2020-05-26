%nprocshared=5
%Mem=10GB
%Chk=chemdraw_test_121.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
N1           1.26239      -1.40146     -0.01843     
C            2.42322      -0.69828     -0.03912     
C            3.67863      -1.47895     -0.12682     
N2           4.88451      -0.99532     -0.18349     
C            5.71272      -2.19563     -0.36567     
C            4.80703      -3.35729     -0.03058     
O            3.50126      -2.82428     -0.15577     
C            2.48077      0.68756      -0.01372     
C            1.28116      1.39176      0.01383      
C            0.06521      0.69470      0.00918      
C            0.10994      -0.71624     0.00084      
C            -1.08899     -1.41423     -0.00079     
C            -2.32117     -0.75547     -0.01261     
C            -2.36291     0.63430      -0.01466     
C            -1.17319     1.36063      0.00261      
H            6.59749      -2.17627     0.27731      
H            6.04849      -2.24562     -1.40768     
H            4.94882      -3.70779     0.99704      
H            4.94236      -4.19939     -0.71537     
H            3.43224      1.20912      -0.02771     
H            1.29961      2.47850      0.02647      
H            -1.06208     -2.50164     -0.00150     
H            -3.24217     -1.33250     -0.02533     
H            -3.31908     1.15099      -0.03210     
H            -1.21657     2.44737      0.00231      



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_121.chk
%Chk=chemdraw_test_122.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=5
%Mem=10GB
%Oldchk=chemdraw_test_122.chk
%Chk=chemdraw_test_123.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


