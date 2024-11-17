FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/cdn.tar.gz; \
    tar xf cdn.tar.gz; \
    cd cdn; \
    cp cdn.sh /usr/local/bin/cdn.sh; \
    cp cdn /usr/local/bin/cdn; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 cdn.sh;

RUN chmod 744 cdn;

CMD cdn.sh
