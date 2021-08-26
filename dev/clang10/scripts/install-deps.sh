conda create --no-default-packages -n oneflow-dev-clang10-v2 -c defaults -c conda-forge python=3.8 clang=10.0.1 clangxx=10.0.1 lld=10.0.1 cmake=3.18.2 nasm autoconf libtool ninja libopenblas-static sccache
conda env config vars set CC=clang CXX=clang++
