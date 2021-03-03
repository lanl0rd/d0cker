#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
    apt-get update && \
    apt-get install -y snapd && \
    apt-get update && \
    apt-get install -y certbot && \
    apt-get update && \
    snap install --classic certbot && \
    ln -s /snap/bin/certbot /usr/bin/certbot && \
    snap install certbot-dns-cloudflare