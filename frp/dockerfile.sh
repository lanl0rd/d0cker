frp="frp_amd64"
if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then frp="frp_arm64"; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
echo "okayyyy"

cd /tmp/docker && \
pwd && \
ls -la && \
tar -xf ${frp}.tar.gz && \
mv ${frp} /frp && \
rm -rf /tmp/docker
