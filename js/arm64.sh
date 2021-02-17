docker buildx build --platform linux/arm64 \
    --rm --compress --cache-from=node:latest -t lanl0rd/js:arm64 -f ./Dockerfile.arm64 . \
    && docker save lanl0rd/js:arm64 | gzip > js-arm64.tar.gz