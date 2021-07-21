FROM --platform=$TARGETPLATFORM lanl0rd/certbot AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

RUN apk add ca-certificates && update-ca-certificates