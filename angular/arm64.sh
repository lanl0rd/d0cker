docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/angular:arm64 -f ./Dockerfile . \
    && docker save lanl0rd/angular:arm64 | gzip > lanl0rd-angular-arm64.tar.gz