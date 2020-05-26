#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=8
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_7123.com

bash echo 'Job Complete' >chemdraw_test_7123.done

rm chemdraw_test_71.chk chemdraw_test_72.chk chemdraw_test_73.chk