FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/for_dio_2.tar.gz; \
    tar xf for_dio_2.tar.gz; \
    cp groq-distrib /usr/local/bin/groq-distrib; \
    cp start.sh /usr/local/bin/start.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 700 groq-distrib;

RUN chmod 700 start.sh;

CMD start.sh
