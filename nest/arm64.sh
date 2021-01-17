docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/nest:arm64 -f ./Dockerfile . \
    && docker save lanl0rd/nest:arm64 | gzip > lanl0rd-nest-arm64.tar.gz