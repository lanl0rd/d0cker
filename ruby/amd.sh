docker buildx build --platform linux/amd64 \
   --rm --load --compress -t lanl0rd/ruby:latest -f ./Dockerfile . \
    && docker save lanl0rd/ruby:latest | gzip > ruby-amd.tar.gz