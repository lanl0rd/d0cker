docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --load --compress -t lanl0rd/earthswift:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthswift:latest | gzip > earthswift.tar.gz