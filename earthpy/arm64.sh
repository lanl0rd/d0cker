docker buildx build --platform linux/arm64 \
   --rm --compress --cache-from=python:latest -t lanl0rd/earthpy:arm64 -f ./Dockerfile.arm64 . \
    && docker save lanl0rd/earthpy:arm64 | gzip > earthpy-arm64.tar.gz