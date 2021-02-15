docker buildx build --platform linux/arm64 \
    --rm --compress --cache-from=node:latest -t lanl0rd/earthjs:arm64 -f ./Dockerfile.arm64 . \
    && docker save lanl0rd/earthjs:arm64 | gzip > earthjs-arm64.tar.gz