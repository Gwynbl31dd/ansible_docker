FROM ubuntu:22.04

WORKDIR /data
VOLUME [ "/data" ]

# Disable interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y gcc libkrb5-dev && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt install krb5-user -y && \ 
  pip3 install pywinrm && \
  pip3 install ansible && \
  pip3 install ansible-pylibssh