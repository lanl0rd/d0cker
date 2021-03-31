frp_download="https://github.com/fatedier/frp/releases/download/v0.36.2/frp_0.36.2_linux_amd64.tar.gz"
frp="frp_0.36.2_linux_amd64"

if [[ "$TARGETPLATFORM" == *"arm"* ]] ; then frp_download="https://github.com/fatedier/frp/releases/download/v0.36.2/frp_0.36.2_linux_arm64.tar.gz"; frp="frp_0.36.2_linux_arm64"; fi ;

echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

wget -P /tmp/docker $frp_download
cd /tmp/docker
tar -xf ${frp}.tar.gz
pwd
ls -la
mv ${frp} /etc/frp
rm -rf /tmp/docker
