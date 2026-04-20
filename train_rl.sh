#!/bin/bash
#SBATCH -J reft_rl
#SBATCH -A eecs
#SBATCH -p dgx2
#SBATCH -o rl.out
#SBATCH -e rl.err
#SBATCH -t 1-00:00:00
#SBATCH -c 8 
#SBATCH --gres=gpu:1
# #SBATCH --nodelist=dgx2-4
export CUDA_LAUNCH_BLOCKING=1
cd ~/hpc-share/AI539/prject/mwp_ReFT
source ../../env/bin/activate
./exps/small_model_exps/rl_gsm8k.sh