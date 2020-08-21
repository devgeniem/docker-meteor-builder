FROM ubuntu:18.04
LABEL maintainer="jukka.halikka@geniem.com"

ENV METEOR_ALLOW_SUPERUSER true

RUN apt-get update && apt-get install -y bsdtar curl g++ bzip2 git python build-essential && ln -sf $(which bsdtar) $(which tar)

RUN curl "https://install.meteor.com?release=1.10.2" | /bin/sh

RUN mkdir /build
VOLUME /build
