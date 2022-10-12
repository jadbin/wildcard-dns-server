FROM python:3.7

EXPOSE 10053

ADD ./ /opt/app
WORKDIR /opt/app

RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple \
  && rm -rf ~/.cache

ENTRYPOINT ["python", "server.py"]
