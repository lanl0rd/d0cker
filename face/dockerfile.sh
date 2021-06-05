#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
command="add-apt-repository \"deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main\""
if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then command="add-apt-repository \"deb [arch=arm64] https://packages.microsoft.com/repos/vscode stable main\""; apt-get update ; fi ;

# can replace the above with apt-get -y docker.io ??

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

apt-get update 
apt-get install -y curl git wget rsync openssl openssh-client openssh-server mergerfs sshfs zip unzip python3-pip dnsutils dialog apt-utils apt-transport-https ca-certificates  gnupg-agent software-properties-common nano docker.io 
apt-get update 
eval "wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -" 
eval "$command" 
