
if ! command -v conda &> /dev/null
then
    echo "conda could not be found, continue to install conda."
    prepared_conda_installer=/nfs/git-repos/Miniconda3-py39_4.10.3-Linux-x86_64.sh
    of_conda_installer_url=http://oneflow-static.oss-cn-beijing.aliyuncs.com/downloads/conda-installers/Miniconda3-py39_4.10.3-Linux-x86_64.sh
    
    if [[ -f "${prepared_conda_installer}" ]]; then
      bash ${prepared_conda_installer} -b
    else
      wget ${of_conda_installer_url}  
      bash Miniconda3-py39_4.10.3-Linux-x86_64.sh -b
    fi
else
    echo "conda is found, escape installation."
fi

conda config --set auto_activate_base false
cp install/condarc ~/.condarc 
conda_bin=`which conda`
echo $conda_bin

