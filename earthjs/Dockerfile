FROM --platform=$BUILDPLATFORM node:latest AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

WORKDIR /app
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
    apt-get update && \
    apt-get install -y rsync openssl mergerfs sshfs zip python3-pip dnsutils && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
    
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=${BUILDPLATFORM//linux\//}] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io  && \

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