#!/bin/bash
#SBATCH --job-name=hpl
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --time=01:00:00
#SBATCH --output=hpl_%j.out
#SBATCH --partition=long

module load openmpi
module load openblas
module load hpl

echo '== Slurm Tasks =='
echo $SLURM_NTASKS

mpirun -n $SLURM_NTASKS xhpl
