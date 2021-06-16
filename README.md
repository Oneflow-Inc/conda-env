# Dev env for OneFlow

- Create the environment
    ```
    git clone https://github.com/Oneflow-Inc/conda-env.git
    cd conda-env
    conda env create -f=dev/gcc7/environment.yml
    ```

- To activate:
    ```bash
    conda activate oneflow-dev-gcc7
    ```

- Recommanded cmake and make args:
    ```bash
    cmake .. \
        -DTHIRD_PARTY_MIRROR=aliyun \
        -DPIP_INDEX_MIRROR=https://pypi.tuna.tsinghua.edu.cn/simple \
        -DCMAKE_BUILD_TYPE=RelWithDebInfo \
        -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
        -DCUDNN_ROOT_DIR=/usr/local/cudnn
    make -j$(nproc)
    ```
    其中 `-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda` 和 `-DCUDNN_ROOT_DIR=/usr/local/cudnn` 可以根据实际需要调整。

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

- Add oneflow to your PYTHONPATH

    ```
    source build/source.sh
    ```

    Please note that this change is not permanent.

- Simple validation

    ```
    python3 -m oneflow --doctor
    ```
## MISC
### 基于已有环境自定义
- oneflow-dev-gcc7 是用 root 权限创建的，普通用户不能够修改，但是有时候要做一些实验，希望能更新 conda 环境
- 可以基于系统里提供的 oneflow-dev-gcc7 克隆一个，参考 https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#cloning-an-environment

### 显示所有可用环境
运行 `conda env list` 可显示所有可用的 conda 环境以及安装路径

```
(base) $ conda env list
# conda environments:
#
base                  *  /usr/local/anaconda3
oneflow-dev-gcc7         /usr/local/anaconda3/envs/oneflow-dev-gcc7
```

## Advanced
### 可以加速编译的一些 CMake 参数
(如果知道这些参数是做什么的并且知道如何解决可能带来的错误，可以使用这些参数，否则请不要使用)

```
-DBUILD_SHARED_LIBS=ON \
-DBUILD_GIT_VERSION=OFF \
-DCUDA_NVCC_GENCODES="arch=compute_75,code=sm_75"
```
