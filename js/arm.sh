docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/js:latest -f ./Dockerfile . \
    && docker save lanl0rd/js:latest | gzip > js-arm.tar.gz