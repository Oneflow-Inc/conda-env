set -ex
export PATH=$PATH:/usr/local/anaconda3/bin
conda env create -f=dev/gcc7/environment.yml
