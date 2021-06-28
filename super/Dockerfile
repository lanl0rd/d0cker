FROM --platform=$TARGETPLATFORM ubuntu AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

WORKDIR /app
COPY dockerfile.sh /tmp/  
RUN chmod u+x /tmp/dockerfile.sh && TARGETPLATFORM=$TARGETPLATFORM BUILDPLATFORM=$BUILDPLATFORM /tmp/dockerfile.sh
USER super
RUN export PATH=$PATH:/usr/local/go/bin
WORKDIR /home/super
ENTRYPOINT ["/bin/bash"]