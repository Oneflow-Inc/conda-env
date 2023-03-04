set -ex
export PATH=$PATH:/usr/local/anaconda3/bin
conda env create -f=dev/gcc9/environment.yml
