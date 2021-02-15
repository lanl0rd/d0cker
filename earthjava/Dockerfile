FROM--platform=$BUILDPLATFORM java:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl git mergerfs sshfs rsync openssl zip python3-pip dnsutils && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
