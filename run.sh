#!/bin/bash
#SBATCH --job-name=hpl
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00
#SBATCH --output=hpl_%j.out

module load openmpi
module load openblas
module load hpl

HPL_BIN=./xhpl

srun $HPL_BIN
