FROM debian:stable

LABEL maintainer="zsx <thinkernel@gmail.com>"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
        ldap-utils \
       	net-tools \
       	vim \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
