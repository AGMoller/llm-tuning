#!/bin/bash

#SBATCH --job-name=install_environment    # Job name
#SBATCH --output=outputs/poetry_installer.%j.out      # Name of output file (%j expands to jobId)
#SBATCH --cpus-per-task=16       # Schedule one core
#SBATCH --time=2:00:00          # Run time (hh:mm:ss) - run for one hour max
#SBATCH --gres=gpu               # Schedule a GPU, or more with gpu:2 etc
#SBATCH --partition=brown,red    # Run on either the Red or Brown queue
#SBATCH --mail-type=BEGIN,FAIL,END    # Send an email when the job finishes or fails
#SBATCH --account=researchers

hostname

nvidia-smi

module load poetry

poetry shell

poetry install

echo "Done installing environment"