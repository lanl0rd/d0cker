#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

command="add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable'"
if [[ "$TARGETPLATFORM" == *"'arm'"* ]] ; then command='add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"'; fi

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
echo "this is command: $command" && \
    apt-get update && \
    apt-get install -y curl git wget rsync openssl mergerfs sshfs zip unzip python3-pip dnsutils dialog apt-utils apt-transport-https ca-certificates  gnupg-agent software-properties-common && \
    apt-get update && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    eval "$command" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io  && \
    pip3 install docker-compose && \
    pip3 install crossplane && \
    npm i -g yarn || true && \
    npm i -g typescript && \
    npm i -g rimraf && \
    npm i -g @nestjs/cli && \
    npm i -g @angular/cli && \
    npm i -g nx && \
    npm i -g @vue/cli && \
    npm i -g create-react-app && \
    npm i -g express-generator && \
    npm i -g svelte-cli