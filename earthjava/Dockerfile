FROM --platform=$BUILDPLATFORM java:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git mergerfs sshfs rsync openssl zip unzip python3-pip dnsutils maven && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
    wget https://services.gradle.org/distributions/gradle-6.3-bin.zip -P /tmp && unzip -d /opt/gradle /tmp/gradle-*.zip

    mkdir /opt/gradle unzip -d /opt/gradle gradle-6.8.2-bin.zip