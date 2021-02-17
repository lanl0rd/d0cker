docker buildx build --platform linux/arm64,linux/amd64 \
    --rm --push --compress --cache-from=node:latest -t lanl0rd/js:latest -f ./Dockerfile . \
    && docker save lanl0rd/js:latest | gzip > js.tar.gz