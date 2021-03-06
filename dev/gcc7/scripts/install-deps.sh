conda create python=3.7 --name oneflow-dev-gcc7-v2
conda install -y -c defaults -c conda-forge nasm gxx_linux-64=7.3.0 libstdcxx-ng=7.3.0 libgcc-ng=7.3.0 libgomp=7.3.0 cmake=3.18.2 autoconf libtool automake ninja libopenblas-static compilers sccache
conda activate oneflow-dev-gcc7-v2
conda env config vars set CXXFLAGS="-fPIC"
conda env config vars set CFLAGS="-fPIC"
