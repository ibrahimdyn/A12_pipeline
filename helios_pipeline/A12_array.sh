#!/bin/bash

#SBATCH -N 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 12
#SBATCH --mem 20G
#SBATCH --time 240:00:00
#SBATCH --array=1-128%32

OBSSLICEFILE=$1

/home/mkuiack1/A12_pipeline/helios_pipeline/A12_pipelinearray.sh `sed $SLURM_ARRAY_TASK_ID'q;d' $OBSSLICEFILE` 


