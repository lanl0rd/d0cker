FROM --platform=$BUILDPLATFORM python:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git sshfs mergerfs rsync openssl zip unzip python3-pip dnsutils && \

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