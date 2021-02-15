FROM --platform=$BUILDPLATFORM openjdk:17-jdk-buster AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG amd="amd"

WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git mergerfs sshfs rsync openssl zip unzip python3-pip dnsutils maven && \
    apt-get install -y apt-transport-https ca-certificates  gnupg-agent software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    if [[ "$TARGETPLATFORM" == *"$amd"* ]]; then add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; else add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; fi && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io  && \
    curl -s "https://get.sdkman.io" | bash
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && \
    yes | sdk install gradle 6.8.2 && \
    yes | sdk install springboot && \
    rm -rf $HOME/.sdkman/archives/* && \
    rm -rf $HOME/.sdkman/tmp/*"