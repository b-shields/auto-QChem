#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=11
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_1123.com

bash echo 'Job Complete' >chemdraw_test_1123.done

rm chemdraw_test_11.chk chemdraw_test_12.chk chemdraw_test_13.chk