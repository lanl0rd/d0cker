docker buildx build --platform linux/amd64 \
    --rm --compress -t lanl0rd/js:amd64 -f ./Dockerfile.amd64 . \
    && docker save lanl0rd/js:amd64 | gzip > js-amd64.tar.gz