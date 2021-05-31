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
        -DTHIRD_PARTY_MIRROR=aliyun
    ```
    其中 `-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda` 和 `-DCUDNN_ROOT_DIR=/usr/local/cudnn` 可以根据实际需要调整，**一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**
    **一定要确保这两个目录真实存在**

## MISC
### 基于已有环境自定义
- oneflow-dev-gcc7 是用 root 权限创建的，普通用户不能够修改，但是有时候要做一些实验，希望能更新 conda 环境
- 可以基于系统里提供的 oneflow-dev-gcc7 克隆一个，参考 https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#cloning-an-environment

### 显示所有可用环境
运行 `conda env list` 可显示所有可用的 conda 环境以及安装路径
```
(base) [caishenghang@oneflow-15 ~]$ conda env list
# conda environments:
#
                         /home/caishenghang/miniconda2/envs/swig
base                  *  /usr/local/anaconda3
oneflow-dev-gcc7         /usr/local/anaconda3/envs/oneflow-dev-gcc7
```

## Advanced
### 可以加速编译的一些 CMake 参数
(如果知道这些参数是做什么的并且知道如何解决可能带来的错误，可以使用这些参数，否则请不要使用)
- `-DBUILD_GIT_VERSION=OFF -DBUILD_SHARED_LIBS=ON -DCUDA_NVCC_GENCODES="arch=compute_75,code=sm_75"`
