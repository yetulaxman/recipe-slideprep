#!/bin/bash
#SBATCH --time=00:15:00
#SBATCH --partition=test
#SBATCH --account=project_xxxx


# download singularity image 
wget https://a3s.fi/general/slidefactory.simg
export TMPDIR=$PWD
# convert .md file to corresponding .html file
#singularity -s run -B $PWD:$PWD  slidefactory.simg  demo.md
echo "creating html file from markdown  file" 
singularity -s exec -B $PWD:$PWD  slidefactory.simg  python convert.py demo.md
