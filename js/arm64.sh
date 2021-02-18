docker buildx build --platform linux/arm64 \
    --rm --compress -t lanl0rd/js:arm64 -f ./Dockerfile . \
    && docker save lanl0rd/js:arm64 | gzip > js-arm64.tar.gz