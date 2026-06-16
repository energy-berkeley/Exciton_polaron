#!/usr/bin/env bash

#SBATCH -J dask-worker
#SBATCH -p nodes
#SBATCH -A theory
#SBATCH -n 1
#SBATCH --cpus-per-task=5
#SBATCH --mem=30G
#SBATCH -t 02:00:00
export OMP_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export MKL_NUM_THREADS=1
export VECLIB_MAXIMUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
/home/mchu03/venvs/specmap/bin/python3 -m distributed.cli.dask_worker tcp://10.1.1.161:45392 --nthreads 1 --nprocs 5 --memory-limit 6.40GB --name dummy-name --nanny --death-timeout 60 --protocol tcp://
