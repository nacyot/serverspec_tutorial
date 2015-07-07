FROM ubuntu:14.04

RUN sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list

RUN \
  apt-get update &&\
  apt-get install -y redis-server

RUN apt-get install -y nginx 

CMD redis-server
