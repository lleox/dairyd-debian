FROM debian:stretch

LABEL maintainer="devops@yungas.co"

ENV REFRESHED_AT 2019-01-01

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/server
ENV HOME /opt/server
WORKDIR /opt/server
VOLUME ["/etc", "/var/log", "/home", "/root"]
