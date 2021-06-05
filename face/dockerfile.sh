#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

#base packages
apt-get update 
apt-get install -y apt-transport-https ca-certificates  gnupg-agent software-properties-common
apt-get update

apt-get install -y curl git wget rsync openssl openssh-client openssh-server mergerfs sshfs zip unzip python3-pip dnsutils dialog apt-utils nano docker.io
apt-get update 

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
apt-get update
apt-get install -y code
code --install-extension lanl0rd.celeste --user-data-dir /root/.vscode

# docker compose
pip3 install docker-compose

# nginx
pip3 install crossplane

# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
nvm install --lts
nvm use --lts
npm i -g npm
npm i -g yarn --force
npm i -g typescript
npm i -g rimraf
npm i -g @nestjs/cli
npm i -g @angular/cli
npm i -g nx
npm i -g http-server
npm i -g create-react-app
npm i -g express-generator
npm i -g svelte-cli

#java

#go

#python