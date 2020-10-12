FROM python:3.10.0a1-slim
RUN pip install Sphinx -i https://pypi.tuna.tsinghua.edu.cn/simple
ADD sources.list /etc/apt/
RUN apt-get update -y && apt-get install build-essential -y
