FROM --platform=$BUILDPLATFORM node:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG amd="amd"

WORKDIR /app
COPY dockerfile.sh /tmp/  
RUN chmod u+x /tmp/dockerfile.sh && /tmp/dockerfile.sh $TARGETPLATFORM $BUILDPLATFORM $amd