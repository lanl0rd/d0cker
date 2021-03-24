#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# command="add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/debian buster stable\""
# if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then command="add-apt-repository \"deb [arch=arm64] https://download.docker.com/linux/debian buster stable\""; apt-get update ; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
apt-get update && \
apt-get upgrade && \
apt-get install -y curl git wget rsync openssl mergerfs sshfs zip unzip python3-pip dnsutils dialog apt-utils apt-transport-https ca-certificates  gnupg-agent software-properties-common apache2-utils  && \
apt-get update && \
apt-get upgrade && \

if [[ "$TARGETPLATFORM" == *"arm"* ]]
then
    chmod u+x /tmp/arm.sh && /tmp/arm.sh
else
    chmod u+x /tmp/amd.sh && /tmp/amd.sh
fi