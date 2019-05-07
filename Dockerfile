FROM ubuntu:18.04
LABEL maintainer="mika.puhakka@geniem.com"

ENV METEOR_ALLOW_SUPERUSER true

RUN apt-get update && apt-get install -y bsdtar curl g++ bzip2 git python build-essential && ln -sf $(which bsdtar) $(which tar)

RUN curl https://install.meteor.com | /bin/sh

RUN mkdir /build
VOLUME /build