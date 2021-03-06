%nprocshared=2
%Mem=4GB
%Chk=worked_example_161.chk
# opt=CalcAll B3LYP/6-31G* scf=qc

Title Card Required

0 1
C2           -1.41552     -0.06172     0.02763      
C3           -0.78001     1.18249      0.00521      
H            -1.39225     2.07374      0.01263      
C            0.62661      1.26814      -0.02950     
C            1.37681      0.07664      -0.01918     
C            0.73544      -1.16525     0.01080      
C4           -0.65897     -1.23330     0.02444      
H            -1.15797     -2.19246     0.03494      
N            1.28230      2.53508      -0.07905     
O            0.64793      3.54498      -0.14299     
O            2.59684      2.60608      -0.08720     
Xx           -2.15235     -0.09834     0.04020      
H            2.45849      0.10369      -0.03963     
H            1.32156      -2.07506     0.01931      



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_161.chk
%Chk=worked_example_162.chk
# freq B3LYP/6-31G* scf=qc volume NMR pop=NPA density=current Geom=AllCheck Guess=Read



--Link1--
%nprocshared=2
%Mem=4GB
%Oldchk=worked_example_162.chk
%Chk=worked_example_163.chk
# TD(NStates=10, Root=1) B3LYP/6-31G* scf=qc volume pop=NPA density=current Geom=AllCheck Guess=Read


