docker buildx build --platform linux/arm64,linux/amd64 \
    --rm --compress --cache-from=node:latest -t lanl0rd/earthjs:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthjs:latest | gzip > earthjs.tar.gz