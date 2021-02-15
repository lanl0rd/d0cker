FROM --platform=$BUILDPLATFORM golang:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
RUN apt-get update && \
    apt-get install -y curl wget git sshfs mergerfs rsync openssl zip unzip python3-pip dnsutils && \
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