FROM --platform=$BUILDPLATFORM golang:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git sshfs mergerfs rsync openssl zip unzip python3-pip dnsutils && \
    apt-get install -y apt-transport-https ca-certificates  gnupg-agent software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    if [[ "$TARGETPLATFORM" == *"amd"* ]]; then add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; else add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; fi; && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io  && \
    go get -u github.com/gin-gonic/gin && \
    go get github.com/beego/beego/v2@v2.0.0 && \
    go get github.com/revel/revel && \
    go get -u github.com/valyala/fasthttp && \
    go get goji.io && \
    go get github.com/go-martini/martini && \
    go get github.com/gorilla/mux && \
    go get github.com/labstack/echo/v4 && \
    go get github.com/urfave/negroni && \
    go get github.com/go-kit/kit && go get github.com/kujtimiihoxha/kit && \
    wget https://github.com/gobuffalo/buffalo/releases/download/v0.16.21/buffalo_0.16.21_Linux_x86_64.tar.gz && tar -xvzf buffalo_0.16.21_Linux_x86_64.tar.gz && mv buffalo /usr/local/bin/buffalo