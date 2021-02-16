FROM --platform=$BUILDPLATFORM node:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG amd="amd"

WORKDIR /app
COPY bash.sh /tmp/  
RUN chmod u+x /tmp/bash.sh && /tmp/bash.sh $arg