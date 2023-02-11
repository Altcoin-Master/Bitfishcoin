FROM debian:stretch
LABEL maintainer="Bitfishcoin Developers <dev@bitfishcoin.org>"
LABEL description="Dockerised BitfishcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
