docker build \
    --rm --compress --cache-from=python:latest -t lanl0rd/earthpy:amd64 -f ./Dockerfile . \
    && docker save lanl0rd/earthpy:amd64 | gzip > earthpy-amd64.tar.gz