#!/bin/bash

# echo "请输入tar、环境、镜像、容器名(统一名称)":
# read NAME
NAME=$(ls *.tar.gz | sed 's/\.tar\.gz//')
# 例如NAME="three-cloud-upload"

# 构建 Docker 镜像
docker build --build-arg ENV_NAME=$NAME -t $NAME .

# 运行 Docker 容器并启动 Conda 环境
docker run --name $NAME -d $NAME /bin/bash -c "source activate $NAME && cd /home/ && python main.py"
