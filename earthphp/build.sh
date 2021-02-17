docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --push --compress -t lanl0rd/earthphp:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthphp:latest | gzip > earthphp.tar.gz