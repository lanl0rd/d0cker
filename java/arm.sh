docker buildx build --platform linux/arm64 \
   --rm --push --compress -t lanl0rd/java:latest -f ./Dockerfile . \
    && docker save lanl0rd/java:latest | gzip > java-arm.tar.gz