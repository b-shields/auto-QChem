#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=2
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 worked_example_49123.com

bash echo 'Job Complete' >worked_example_49123.done

rm worked_example_491.chk worked_example_492.chk worked_example_493.chk