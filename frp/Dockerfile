FROM --platform=$TARGETPLATFORM alpine:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
COPY dockerfile.sh /tmp/
RUN chmod u+x /tmp/dockerfile.sh && TARGETPLATFORM=$TARGETPLATFORM BUILDPLATFORM=$BUILDPLATFORM /tmp/dockerfile.sh
WORKDIR /frp