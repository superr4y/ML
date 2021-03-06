FROM ubuntu:latest
MAINTAINER superr4y

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y ranger python3 ipython3 python3-matplotlib python3-pandas python3-sklearn
RUN apt-get install -y python3-pip mlocate
RUN pip3 install statsmodels jupyter

EXPOSE 8888
VOLUME /share