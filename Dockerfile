FROM openjdk:8-jre

ARG CHUNKYLAUNCHER_URL=http://chunkyupdate.llbit.se/ChunkyLauncher.jar
ENV JAVA_ARGS ""
ENV MINECRAFT_VERSION "1.11.2"

WORKDIR /data
COPY chunky.sh /usr/local/bin/chunky

RUN apt-get update \
    && apt-get install -y wget unzip \
    && mkdir /srv \
    && cd /srv \
    && wget $CHUNKYLAUNCHER_URL  \
    && chmod +x /usr/local/bin/chunky \
    && cd /data \
    && chunky --update \
    && chunky -download-mc $MINECRAFT_VERSION

VOLUME ["/data"]

ENTRYPOINT ["chunky"]

CMD ["--version"]