#!/bin/bash
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
    apt update && apt install -y snapd && \
    systemctl restart snapd.service && \
    apt update && \
    snap install --classic certbot && \
    ln -s /snap/bin/certbot /usr/bin/certbot && \
    snap install certbot-dns-cloudflare