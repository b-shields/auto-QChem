#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=8
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_8123.com

bash echo 'Job Complete' >chemdraw_test_8123.done

rm chemdraw_test_81.chk chemdraw_test_82.chk chemdraw_test_83.chk