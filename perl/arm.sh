docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/perl:latest -f ./Dockerfile . \
    && docker save lanl0rd/perl:latest | gzip > perl-arm.tar.gz