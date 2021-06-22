#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
# command="add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/debian buster stable\""
# if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then command="add-apt-repository \"deb [arch=arm64] https://download.docker.com/linux/debian buster stable\""; apt-get update ; fi ;
# can replace the above with apt-get -y docker.io ?? consider jsut starting from debian or ubuntu image and freakin using nvm and installing a few versions of node, dammmmn
echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"
apt-get update
apt-get install -y curl git wget rsync openssl openssh-client openssh-server mergerfs sshfs zip unzip python3-pip dnsutils dialog apt-utils apt-transport-https ca-certificates  gnupg-agent software-properties-common nano docker.io sudo tmux git zsh ksh gcc g++ bash-completion build-essential file locales htop dstat vim
apt-get update
# eval "curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -"
# eval "$command"
# apt-get update
# apt-get install -y docker-ce docker-ce-cli containerd.io
pip3 install docker-compose
pip3 install crossplane
useradd -ms /bin/bash nvm
usermod -aG docker nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
chown nvm:nvm -R "home/nvm/.nvm"
echo 'nvm ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
echo 'export NVM_DIR="home/nvm/.nvm"'                                       >> "home/nvm/.bashrc"
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"
source $HOME/.nvm/nvm.sh
nvm install node 
nvm use node
nvm install v14.17.0
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