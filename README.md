# Dev env for OneFlow

- To setup conda (只需要运行一次)
    ```
    /usr/local/anaconda3/bin/conda init
    ```
- To activate:
    ```bash
    conda activate oneflow-dev-gcc7
    ```

- Recommanded cmake args:
    ```bash
    cmake .. \
        -DCMAKE_BUILD_TYPE=RelWithDebInfo \
        -DPython3_EXECUTABLE=$CONDA_PREFIX/bin/python3 \
        -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
        -DCUDNN_ROOT_DIR=/usr/local/cudnn \
        -DTHIRD_PARTY_MIRROR=aliyun \
        -DBUILD_GIT_VERSION=OFF
    ```
    其中 `-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda` 和 `-DCUDNN_ROOT_DIR=/usr/local/cudnn` 可以根据实际需要调整，**一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
