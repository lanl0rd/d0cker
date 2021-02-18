docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/go:latest -f ./Dockerfile . \
    && docker save lanl0rd/go:latest | gzip > go-arm.tar.gz