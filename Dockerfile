# 基于 Python 3.9 镜像构建（和之前的 Python 版本保持一致）
FROM python:3.9-slim

# 设置工作目录（容器内的文件夹）
WORKDIR /app

# 把本地文件复制到容器内的 /app 目录
COPY . /app

# 安装依赖（这里其实没什么依赖，只是保持规范）
RUN pip install --no-cache-dir -r requirements.txt

# 暴露端口（和 Python 服务的端口一致，之前是 8080）
EXPOSE 8080

# 启动命令（运行 Python 服务器）
CMD ["python", "app.py"]