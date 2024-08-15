# 使用Python基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制并安装Python依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# 设置环境变量
ENV FLASK_APP=server.py

# 启动Flask应用
CMD ["flask", "run", "--host=0.0.0.0", "--port=7860"]
