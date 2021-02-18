docker buildx build --platform linux/amd64 \
   --rm --load --compress -t lanl0rd/perl:latest -f ./Dockerfile . \
    && docker save lanl0rd/perl:latest | gzip > perl-amd.tar.gz