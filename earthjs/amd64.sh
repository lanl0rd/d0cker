docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/earthjs:amd64 -f ./Dockerfile . \
    && docker save lanl0rd/earthjs:amd64 | gzip > earthjs-amd64.tar.gz