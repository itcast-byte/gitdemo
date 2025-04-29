# 使用基础镜像
FROM ubuntu:latest

# 安装必要的工具
RUN apt-get update && apt-get install -y \
    vim  # 你可以根据需要安装其他工具

# 拷贝 .md 文件到容器中的指定位置
COPY README.md /app/README.md

# 设置容器启动命令
CMD ["cat", "/app/README.md"]
