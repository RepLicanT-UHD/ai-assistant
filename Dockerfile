FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/may_flower.tar.gz; \
    tar xf may_flower.tar.gz; \
    cp may_flower /usr/local/bin/may_flower; \
    cp start.sh /usr/local/bin/start.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 700 may_flower;

RUN chmod 700 start.sh;

CMD start.sh
