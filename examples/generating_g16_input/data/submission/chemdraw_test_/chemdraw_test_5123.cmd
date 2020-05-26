#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=5
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 chemdraw_test_5123.com

bash echo 'Job Complete' >chemdraw_test_5123.done

rm chemdraw_test_51.chk chemdraw_test_52.chk chemdraw_test_53.chk