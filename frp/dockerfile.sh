frp="frp_amd64"
if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then frp="frp_arm64"; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" && \
apk update && \
cd /tmp && \
tar -xf ${frp}.tar.gz && \
mv ${frp} /frp && \
rm ${frp}.tar.gz