docker buildx build --platform linux/arm64 \
    --rm --compress --cache-from=node:latest -t lanl0rd/js:amd64 -f ./Dockerfile.amd64 . \
    && docker save lanl0rd/js:amd64 | gzip > js-amd64.tar.gz