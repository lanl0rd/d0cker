FROM --platform=$BUILDPLATFORM openjdk:17-jdk-buster AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git mergerfs sshfs rsync openssl zip unzip python3-pip dnsutils maven && \
    curl -s "https://get.sdkman.io" | bash
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && \
    yes | sdk install gradle 6.8.2 && \
    yes | sdk install springboot && \
    rm -rf $HOME/.sdkman/archives/* && \
    rm -rf $HOME/.sdkman/tmp/*"