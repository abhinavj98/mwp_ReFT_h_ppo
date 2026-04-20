#!/bin/bash
#SBATCH -J reft_sft
#SBATCH -A eecs
#SBATCH -p dgx2
#SBATCH -o abc.out
#SBATCH -e abc.err
#SBATCH -t 1-00:00:00
#SBATCH -c 4 
#SBATCH --gres=gpu:1
cd ~/hpc-share/AI539/prject/mwp_ReFT
source ../../env/bin/activate
./exps/small_model_exps/sft_gsm8k.sh