FROM --platform=$BUILDPLATFORM python:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG amd="amd"

WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git sshfs mergerfs rsync openssl zip unzip python3-pip dnsutils && \
    apt-get install -y apt-transport-https ca-certificates  gnupg-agent software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    if [[ "$TARGETPLATFORM" == *"$amd"* ]]; then add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; else add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; fi && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io  && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
    pip3 install virtualenv && \
    pip3 install requests && \
    pip3 install cherrypy && \
    pip3 install sanic && \
    pip3 install flask && \
    pip3 install django && \
    pip3 install aiohttp[speedups] && \
    pip3 install tornado && \
    pip3 install dash && \
    pip3 install falcon && \
    pip3 install bottle && \
    pip3 install hug -U