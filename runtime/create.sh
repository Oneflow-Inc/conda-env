set -x

# install conda if not available
if ! command -v conda &> /dev/null
then
    echo "conda could not be found, continue to install conda."
    prepared_conda_installer=/nfs/tools/Miniconda3-py39_4.10.3-Linux-x86_64.sh
    of_conda_installer_url=http://oneflow-static.oss-cn-beijing.aliyuncs.com/downloads/conda-installers/Miniconda3-py39_4.10.3-Linux-x86_64.sh

    PREFIX=$HOME/miniconda3
    OPTIONS="-b -f -p $PREFIX"

    # use pre downloaded package to install, otherwise download one
    if [[ -f "${prepared_conda_installer}" ]]; then
      bash ${prepared_conda_installer} $OPTIONS
    else
      wget ${of_conda_installer_url}
      bash Miniconda3-py39_4.10.3-Linux-x86_64.sh $OPTIONS
    fi
    $PREFIX/bin/conda init
    export PATH="$PREFIX/bin:$PATH"
else
    echo "conda is found, escape installation."
fi

cp install/condarc ~/.condarc
# conda config --set auto_activate_base false

conda_envs=`conda env list`
oneflow_env="oneflow-runtime"
echo $conda_envs
if [[ "$conda_envs" == *"$oneflow_env"* ]]; then
    echo "$oneflow_env has been created."
else
    echo "$oneflow_env will be created ..."
    conda env create -f=./runtime/environment.yml
fi

conda activate $oneflow_env
which python3
python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
set +x

