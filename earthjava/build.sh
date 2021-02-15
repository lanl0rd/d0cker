docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --push --compress -t lanl0rd/earthjava:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthjava:latest | gzip > earthjava.tar.gz