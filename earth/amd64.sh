docker build \
    --rm --compress --cache-from=node:latest -t lanl0rd/earth:node15--ng11-ns7-nx10-vu4-sv3-re17--java16--python3--golang---amd64 -f ./Dockerfile . \
    && docker save lanl0rd/earth:node15--ng11-ns7-nx10-vu4-sv3-re17--java16--python3--golang---amd64 | gzip > lanl0rd-earth-node15--ng11-ns7-nx10-vu4-sv3-re17--java16--python3--golang---amd64.tar.gz