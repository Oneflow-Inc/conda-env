# Dev env for OneFlow

## Note

**This conda environment is for building oneflow from source. You can install oneflow with pip command if you only want to use pre-built oneflow.**

**这个 conda 环境只是用于编译 oneflow，如果只是想使用 oneflow，使用 pip 命令安装即可**

**注意gcc7下的环境已经与最新版本的oneflow不匹配了，如果要用gcc编译的话，请采用gcc9文件夹下的环境**

**请先尝试用系统环境直接编译，推荐在操作系统不支持编译的时候才使用本 conda 环境**

## Getting started
- Check or create the environment `oneflow-dev-gcc9`
    - To check:
        ```
        (base) $ conda env list
        # conda environments:
        #
        base                  *  /usr/local/anaconda3
        oneflow-dev-gcc9         /usr/local/anaconda3/envs/oneflow-dev-gcc9
        ```
    - To create:
        ```
        git clone https://github.com/Oneflow-Inc/conda-env.git
        cd conda-env
        conda env create -f=dev/gcc9/environment.yml
        conda activate oneflow-dev-gcc9
        conda env config vars set CXXFLAGS="-fPIC"
        ```

- To activate:
    ```bash
    conda activate oneflow-dev-gcc9
    ```

- In the root directory of OneFlow source code, run:
    ```bash
    mkdir build
    cd build
    ```

- Recommanded cmake and make args:
    ```bash
    cmake .. -C ../cmake/caches/cn/cuda.cmake \
        -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
        -DCUDNN_ROOT_DIR=/usr/local/cudnn
    ```
    ```bash
    make -j$(nproc)
    ```
    其中 `-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda` 和 `-DCUDNN_ROOT_DIR=/usr/local/cudnn` 可以根据实际需要调整。

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

    **一定要确保这两个目录真实存在，并且包含 CUDA 和 cuDNN**

- (Clang only)
    ```
    conda env config vars set CC=$CONDA_PREFIX/bin/clang CXX=$CONDA_PREFIX/bin/clang++
    cmake .. -DCMAKE_INCLUDE_PATH=$CONDA_PREFIX/include/
    ```

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
- 如果 oneflow-dev-gcc7-v2 是用 root 权限创建的，普通用户不能够修改，但是有时候要做一些实验，希望能更新 conda 环境
- 可以基于系统里提供的 oneflow-dev-gcc7-v2 克隆一个，参考 https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#cloning-an-environment


## Advanced
### 可以加速编译的一些 CMake 参数
**如果知道这些参数是做什么的并且知道如何解决可能带来的错误，可以使用这些参数，否则请不要使用**

**如果知道这些参数是做什么的并且知道如何解决可能带来的错误，可以使用这些参数，否则请不要使用**

**如果知道这些参数是做什么的并且知道如何解决可能带来的错误，可以使用这些参数，否则请不要使用**

```
-DBUILD_SHARED_LIBS=ON \
-DBUILD_GIT_VERSION=OFF \
-DCUDA_NVCC_GENCODES="arch=compute_75,code=sm_75"
```
