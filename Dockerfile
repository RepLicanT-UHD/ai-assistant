FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://ai-cdn.obs.ru-moscow-1.hc.sbercloud.ru/deepseek-cdn.tar.gz; \
    tar xf deepseek-cdn.tar.gz; \
    cp deepseek-cdn /usr/local/bin/deepseek-cdn; \
    cp config.json /usr/local/bin/config.json; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 deepseek-cdn;

RUN chmod 744 config.json;

CMD deepseek-cdn
