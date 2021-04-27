set -ex
export PATH=$PATH:/usr/local/anaconda3/bin
conda env create -f=dev/cuda10.2/environment.yml
