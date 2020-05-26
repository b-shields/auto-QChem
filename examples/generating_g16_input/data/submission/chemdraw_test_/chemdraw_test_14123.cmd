#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=5
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_14123.com

bash echo 'Job Complete' >chemdraw_test_14123.done

rm chemdraw_test_141.chk chemdraw_test_142.chk chemdraw_test_143.chk