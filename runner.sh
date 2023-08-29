#!/bin/bash

#SBATCH --job-name=test-dpo    # Job name
#SBATCH --output=outputs/job.%j.out      # Name of output file (%j expands to jobId)
#SBATCH --cpus-per-task=16        # Schedule 8 cores (includes hyperthreading)
#SBATCH --gres=gpu:a100_40:1               # Schedule a GPU, or more with gpu:2 etc
#SBATCH --time=12:00:00          # Run time (hh:mm:ss) - run for one hour max
#SBATCH --partition=red,brown    # Run on either the Red or Brown queue

accelerate launch sft_llama2.py --output_dir="sft"