%nprocshared=4
%Mem=8GB
%Chk=worked_example_251.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
N            -1.62118     -1.15405     -0.02711     
C            -2.39673     0.00202      -0.01742     
C            -1.59219     1.10874      -0.00316     
C            -0.25590     0.65143      -0.00350     
C3           0.97484      1.33969      0.00244      
H            0.98588      2.42635      0.00685      
C2           2.16189      0.61156      0.00072      
C4           2.14430      -0.77777     -0.00438     
H            3.07911      -1.33395     -0.00484     
C            0.93084      -1.48176     -0.01004     
C            -0.27454     -0.75460     -0.01099     
Br1          3.81303      1.53570      0.00365      
C            -2.21279     -2.43611     -0.04822     
O            -3.43121     -2.53371     -0.08988     
O            -1.30490     -3.44873     0.00126      
C            -1.82008     -4.81138     0.04378      
C            -2.59125     -5.16302     -1.23688     
C            -0.59534     -5.73761     0.12525      
C            -2.66635     -5.04533     1.30549      
H            -3.47648     -0.08065     -0.01786     
H            -1.93290     2.13629      0.00700      
H            0.94752      -2.56759     -0.01535     
H            -1.96251     -5.01567     -2.12219     
H            -3.47713     -4.53773     -1.38072     
H            -2.93121     -6.20570     -1.22505     
H            0.05410      -5.61299     -0.74834     
H            -0.89442     -6.79130     0.18154      
H            0.01430      -5.50734     1.00607      
H            -3.57270     -4.43473     1.32217      
H            -2.09729     -4.78110     2.20400      
H            -2.98074     -6.09127     1.38797      



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=worked_example_251.chk
%Chk=worked_example_252.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=4
%Mem=8GB
%Oldchk=worked_example_252.chk
%Chk=worked_example_253.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


