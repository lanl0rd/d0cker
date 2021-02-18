docker buildx build --platform linux/amd64 \
   --rm --load --compress -t lanl0rd/swift:latest -f ./Dockerfile . \
    && docker save lanl0rd/swift:latest | gzip > swift-amd.tar.gz