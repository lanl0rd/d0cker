docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/earthjava:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthjava:latest | gzip > earthjava.tar.gz