FROM --platform=$BUILDPLATFORM node:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

WORKDIR /app
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
    apt-get update && \
    apt-get install -y curl git wget rsync openssl mergerfs sshfs zip python3-pip dnsutils && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
    npm i -g typescript && \
    npm i -g rimraf && \
    npm i -g @nestjs/cli && \
    npm i -g @angular/cli && \
    npm i -g nx && \
    npm i -g @vue/cli && \
    npm i -g create-react-app && \
    npm i -g express-generator && \
    npm i -g svelte-cli