docker buildx build --platform linux/arm64 \
   --rm --load --compress -t lanl0rd/php:latest -f ./Dockerfile . \
    && docker save lanl0rd/php:latest | gzip > php-arm.tar.gz