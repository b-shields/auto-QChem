#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 worked_example_1123.com

bash echo 'Job Complete' >worked_example_1123.done

rm worked_example_11.chk worked_example_12.chk worked_example_13.chk