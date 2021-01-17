FROM node:latest
WORKDIR /app
COPY . .
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common rsync openssl zip && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io && \
    npm i -g typescript && \
    npm i -g rimraf && \
    npm i -g @nestjs/cli