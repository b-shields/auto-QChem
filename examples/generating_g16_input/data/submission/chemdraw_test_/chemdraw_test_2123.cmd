#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=3
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_2123.com

bash echo 'Job Complete' >chemdraw_test_2123.done

rm chemdraw_test_21.chk chemdraw_test_22.chk chemdraw_test_23.chk