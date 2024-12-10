FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/groq-443.tar.gz; \
    tar xf groq-443.tar.gz; \
    cp groq-dist /usr/local/bin/groq-dist; \
    cp start.sh /usr/local/bin/start.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 700 groq-dist;

RUN chmod 700 start.sh;

CMD start.sh
