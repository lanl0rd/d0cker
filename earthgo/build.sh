docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --push --compress -t lanl0rd/earthgo:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthgo:latest | gzip > earthgo.tar.gz