#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=7
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_6123.com

bash echo 'Job Complete' >chemdraw_test_6123.done

rm chemdraw_test_61.chk chemdraw_test_62.chk chemdraw_test_63.chk