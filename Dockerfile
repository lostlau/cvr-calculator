FROM python:3.9.13

RUN apt-get update && apt-get install -y openssh-server apache2 supervisor

COPY . /app

WORKDIR /app

ENV PIP3_INSTALL="pip3 install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com"

RUN mkdir /temp

COPY ./requirements.txt /temp/requirements.txt

RUN $PIP3_INSTALL -r /temp/requirements.txt

RUN chmod +x /app/run/start.sh

EXPOSE 8069

CMD ["sh", "/app/run/start.sh"]