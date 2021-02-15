docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --compress --cache-from=python:latest -t lanl0rd/earthpy:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthpy:latest | gzip > earthpy.tar.gz