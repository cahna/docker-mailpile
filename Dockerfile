
FROM debian:jessie
MAINTAINER Conor Heine <conor.heine@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV export LANGUAGE=en_US.UTF-8
ENV export LC_ALL=en_US.UTF-8
ENV export LANG=en_US.UTF-8
ENV export LC_TYPE=en_US.UTF-8

RUN apt-get update
RUN apt-get -y install git python-dev libxml2-dev libxslt-dev libz-dev python-pip
RUN git clone --recursive https://github.com/mailpile/Mailpile.git /mailpile
RUN cd /mailpile && pip install -r requirements.txt

EXPOSE 33411
WORKDIR /mailpile
CMD ./mp

