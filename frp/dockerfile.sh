frp="frp_amd64"
if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then frp="frp_arm64"; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \

cd /tmp/docker && \
pwd && \
ls -la && \
tar -xf ${frp}.tar.gz && \
mv ${frp} /etc/frp && \
rm -rf /tmp/docker
