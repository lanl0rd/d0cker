#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# command="add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable\""
# if [[ "$TARGETPLATFORM" == *"'arm'"* ]] ; then command="add-apt-repository \"deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable\""; fi;
command="add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/debian buster stable\""
if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then command="add-apt-repository \"deb [arch=arm64] https://download.docker.com/linux/debian buster stable\"" ; apt-get update ; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y curl git wget rsync openssl openssh-client openssh-server mergerfs sshfs zip unzip python3-pip dnsutils maven dialog apt-utils apt-transport-https ca-certificates  gnupg-agent software-properties-common nano && \
    apt-get update && \
    eval "curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -" && \
    eval "$command" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io && \
    curl -s "https://get.sdkman.io" | bash && \
    bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && \
    yes | sdk install gradle 6.8.2 && \
    yes | sdk install springboot && \
    rm -rf $HOME/.sdkman/archives/* && \
    rm -rf $HOME/.sdkman/tmp/*"