# -Anaconda-Docker-
仅适用Linux的sh脚本

前置条件  
1.已通过conda-pack打包好tar.gz文件并拷到目标环境  
2.Docker服务启用中, 如是离线环境请先装个miniconda

说明:  
这是个将anaconda环境打包到镜像里并运行的demo  
将打包好的tar.gz文件放在当前目录下, 执行脚本就行  
环境、镜像、容器名称将统一默认使用tar文件名称  
打包成镜像后会直接载入docker服务  
**命令默认仅拷贝py文件进去,默认运行main.py**  
