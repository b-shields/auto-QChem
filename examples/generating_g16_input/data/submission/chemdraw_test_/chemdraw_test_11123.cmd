#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_11123.com

bash echo 'Job Complete' >chemdraw_test_11123.done

rm chemdraw_test_111.chk chemdraw_test_112.chk chemdraw_test_113.chk