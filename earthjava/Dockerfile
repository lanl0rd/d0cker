FROM --platform=$BUILDPLATFORM java:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git mergerfs sshfs rsync openssl zip unzip python3-pip dnsutils maven && \
    curl -s "https://get.sdkman.io" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh" && \
    sdk install gradle 6.8.2 && \
    sdk install springboot