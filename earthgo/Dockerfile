FROM--platform=$BUILDPLATFORM golang:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl git sshfs mergerfs rsync openssl zip python3-pip dnsutils && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
    go get -u github.com/gin-gonic/gin && \
    go get github.com/beego/beego/v2@v2.0.0