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
        -DPython3_EXECUTABLE=$CONDA_PREFIX/bin/python3 \
        -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
        -DCUDNN_ROOT_DIR=/usr/local/cudnn \
        -DBUILD_SHARED_LIBS=ON \
        -DTHIRD_PARTY_MIRROR=aliyun \
        -DBUILD_GIT_VERSION=OFF
    ```
