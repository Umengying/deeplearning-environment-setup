# deeplearning-environment-setup

# 深度学习环境搭建

装`CUDA,cuDNN`

## Step1
- `$ sudo apt-get update`
- `$ sudo apt-get upgrade`
- `$ sudo apt-get install build-essential cmake g++ gfortran git pkg-config python-dev software-properties-common wget`
- `$ sudo apt-get autoremove`
- `$ sudo rm -rf /var/lib/apt/lists/*`

## Step2
*NVIDIA CUDA Installation Guide for Ubuntu
http://docs.nvidia.com/cuda/cuda-installation-guide-linux/*

`$ sudo apt-get install g++ freeglut3-dev build-essential libx11-dev \
    libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev`


- 1. It is recommended to use the distribution-specific packages (RPM and Deb packages)
- 2. The NVIDIA CUDA Toolkit is available at http://developer.nvidia.com/cuda-downloads
- 3. Use the following commands to uninstall a RPM/Deb installation:

        `$ sudo yum remove <package_name>                      # Redhat/CentOS`

        `$ sudo dnf remove <package_name>                      # Fedora`

        `$ sudo zypper remove <package_name>                   # OpenSUSE/SLES`

        `$ sudo apt-get --purge remove <package_name>          # Ubuntu`

- 4. Installation Instruction

        `$ sudo dpkg -i cuda-repo-<distro>_<version>_<architecture>.deb`

        `$ sudo apt-key add /var/cuda-repo-<version>/7fa2af80.pub`

        `$ sudo apt-get update`

        `$ sudo apt-get install cuda`

- 5. Environment variable

        `$ export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}`

        `$ export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}`

        `$ echo 'export PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc`

        `$ echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc`

        `$ source ~/.bashrc`


## Step3 
Check to ensure the correct version of CUDA is installed

`$ nvcc -V`

`$ nvidia-smi`

## Step4
Install cuDNN

`$ cd ~/Downloads/`

`$ tar xvf cudnn*.tgz`

`$ cd cuda`

`$ sudo cp */*.h /usr/local/cuda/include/`

`$ sudo cp */libcudnn* /usr/local/cuda/lib64/`

`$ sudo chmod a+r /usr/local/cuda/lib64/libcudnn*`


*注意：如遇到装完`CUDA`之后循环登录问题，可以尝试关闭`security boot & fast boot`*

# Install CUDA without root

> https://stackoverflow.com/questions/39379792/install-cuda-without-root

> https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html

> https://stackoverflow.com/questions/50622525/which-tensorflow-and-cuda-version-combinations-are-compatible

