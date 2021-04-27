# Conda env for OneFlow

- To setup conda (if already install as root)
```
/usr/local/anaconda3/bin/conda init
```
- To activate:
```bash
conda activate oneflow-dev-cuda-10.2
```

- Recommand cmake args:
    ```bash
    cmake .. -DBUILD_CUDA=OFF \
        -DCUDNN_STATIC=OFF \
        -DPython3_EXECUTABLE=$CONDA_PREFIX/bin/python3 \
        -DBUILD_SHARED_LIBS=ON
    ```
