docker buildx build --platform linux/amd64 \
   --rm --load --compress -t lanl0rd/go:latest -f ./Dockerfile . \
    && docker save lanl0rd/go:latest | gzip > go-amd.tar.gz