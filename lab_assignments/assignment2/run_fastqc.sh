#!/bin/bash --login
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10GB
#SBATCH --job-name=fastqc
#SBATCH --output=%x-%j.SLURMout

#Change to current working directory
cd ${PBS_O_WORKDIR}

#Add conda environment to the path
export PATH="${HOME}/miniconda3/envs/plb812/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/miniconda3/envs/plb812/lib:${LD_LIBRARY_PATH}"

#List fastq files to be analyzed, separated by single spaces.
file_list="SRR8618217_1.fastq SRR8618217_2.fastq SRR8618218_1.fastq SRR8618218_2.fastq SRR8618219_1.fastq SRR8618219_2.fastq SRR8618220_1.fastq SRR8618220_2.fastq SRR8618221_1.fastq SRR8618221_2.fastq SRR8618222_1.fastq SRR8618222_2.fastq SRR8618232_1.fastq SRR8618232_2.fastq SRR8618233_1.fastq SRR8618233_2.fastq SRR8618234_1.fastq SRR8618234_2.fastq SRR8618235_1.fastq SRR8618235_2.fastq SRR8618236_1.fastq SRR8618236_2.fastq SRR8618237_1.fastq SRR8618237_2.fastq SRR8618247_1.fastq SRR8618247_2.fastq SRR8618248_1.fastq SRR8618248_2.fastq SRR8618249_1.fastq SRR8618249_2.fastq SRR8618250_1.fastq SRR8618250_2.fastq SRR8618251_1.fastq SRR8618251_2.fastq SRR8618252_1.fastq SRR8618252_2.fastq"

#fastqc command
fastqc ${file_list}

done
