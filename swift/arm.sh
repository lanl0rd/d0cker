docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/swift:latest -f ./Dockerfile . \
    && docker save lanl0rd/swift:latest | gzip > swift-arm.tar.gz