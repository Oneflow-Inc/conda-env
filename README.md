# Conda env for OneFlow

Recommand cmake args:
```
cmake .. -DBUILD_CUDA=OFF -DCUDNN_STATIC=OFF -DPython3_EXECUTABLE=$CONDA_PREFIX/bin/python3 -DBUILD_SHARED_LIBS=ON
```
