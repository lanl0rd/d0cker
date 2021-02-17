docker buildx build --platform linux/arm64,linux/amd64 \
   --rm --push --compress -t lanl0rd/earthperl:latest -f ./Dockerfile . \
    && docker save lanl0rd/earthperl:latest | gzip > earthperl.tar.gz