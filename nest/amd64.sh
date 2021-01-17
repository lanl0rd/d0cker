docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/nest:amd64 -f ./Dockerfile . \
    && docker save lanl0rd/nest:amd64 | gzip > lanl0rd-nest-amd64.tar.gz