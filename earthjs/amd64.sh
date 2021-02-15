docker buildx build --platform linux/arm64 \
    --rm --compress --cache-from=node:latest -t lanl0rd/earthjs:amd64 -f ./Dockerfile.amd64 . \
    && docker save lanl0rd/earthjs:amd64 | gzip > earthjs-amd64.tar.gz