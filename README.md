# Dev env for OneFlow

- To setup conda (if already install as root)
    ```
    /usr/local/anaconda3/bin/conda init
    ```
- To activate:
    ```bash
    conda activate oneflow-dev-gcc-7
    ```

- Recommand cmake args:
    ```bash
    cmake .. \
        -DCUDNN_STATIC=OFF \
        -DPython3_EXECUTABLE=$CONDA_PREFIX/bin/python3 \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_GIT_VERSION=OFF
    ```
