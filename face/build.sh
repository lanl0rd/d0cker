docker buildx build --platform linux/arm64,linux/amd64 \
    --rm --push --compress -t lanl0rd/face:fresh -f ./Dockerfile . \
    && docker save lanl0rd/face:fresh | gzip > face-fresh.tar.gz