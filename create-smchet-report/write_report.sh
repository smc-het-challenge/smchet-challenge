#!/bin/bash
# write_report.sh
#SBATCH --partition=exacloud
#SBATCH --output=report-%j.out
#SBATCH --error=report-%j.err
#SBATCH --job-name=run_smchet_report
#SBATCH --gres disk:1024
#SBATCH --mincpus=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:45:00

source /home/groups/EllrottLab/activate_conda
ABS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sbatch cwltool $ABS_PATH/write_report.cwl $ABS_PATH/write_report.json
