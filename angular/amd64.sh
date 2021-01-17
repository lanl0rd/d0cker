docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/angular:amd64 -f ./Dockerfile . \
    && docker save lanl0rd/angular:amd64 | gzip > lanl0rd-angular-amd64.tar.gz