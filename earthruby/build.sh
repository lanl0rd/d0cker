docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --load --compress -t lanl0rd/earthruby:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthruby:latest | gzip > earthruby.tar.gz