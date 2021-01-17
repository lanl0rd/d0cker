FROM node:latest
WORKDIR /app
COPY . .
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
    npm i -g typescript && \
    npm i -g rimraf && \
    npm i -g @angular/cli