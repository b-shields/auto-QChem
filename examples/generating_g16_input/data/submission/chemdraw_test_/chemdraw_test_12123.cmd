#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=5
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_12123.com

bash echo 'Job Complete' >chemdraw_test_12123.done

rm chemdraw_test_121.chk chemdraw_test_122.chk chemdraw_test_123.chk