#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install -y certbot