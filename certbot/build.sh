docker buildx build --platform linux/arm64,linux/amd64 \
    --rm --push --compress -t lanl0rd/certbot:latest -f ./Dockerfile . \
    && docker save lanl0rd/certbot:latest | gzip > certbot.tar.gz