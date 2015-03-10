FROM centos:7
MAINTAINER samuraitaiga

WORKDIR /root

RUN yum install -y wget unzip && \
    wget https://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip && \
    unzip 0.5.0_linux_amd64.zip && \
    chmod 755 consul && \
    cp consul /usr/local/bin && \
    rm -rf ./*
