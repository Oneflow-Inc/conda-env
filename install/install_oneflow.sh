#!/bin/bash
set -x

python_bin=${1:-python3}

$python_bin -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

downloaded_oneflow_whl=/nfs/tools/oneflow-0.6.0.dev20211028+cu112-cp39-cp39-manylinux2014_x86_64.whl
oneflow_whl_url=http://oneflow-static.oss-cn-beijing.aliyuncs.com/downloads/conda-installers/Miniconda3-py39_4.10.3-Linux-x86_64.sh

# use pre downloaded package to install, otherwise download one
if [[ -f "${downloaded_oneflow_whl}" ]]; then
  echo "use pre downloaded oneflow wheel ${downloaded_oneflow_whl}"
else
  wget ${oneflow_whl_url} -o ${downloaded_oneflow_whl}
fi

$python_bin -m pip install -U ${downloaded_oneflow_whl}

set +x
