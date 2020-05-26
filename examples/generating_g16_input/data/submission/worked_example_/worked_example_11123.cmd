#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 worked_example_11123.com

bash echo 'Job Complete' >worked_example_11123.done

rm worked_example_111.chk worked_example_112.chk worked_example_113.chk