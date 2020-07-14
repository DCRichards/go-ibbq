#!/usr/bin/env bash
set -e

GO_VERSION=1.13.12

apt-get update && apt-get install -y git

GO_TAR=go$GO_VERSION.linux-amd64.tar.gz
curl -O https://dl.google.com/go/$GO_TAR
tar -xvf $GO_TAR
mv go /usr/local
rm -rf $GO_TAR

echo "export PATH=$PATH:/usr/local/go/bin" > /home/vagrant/.bash_profile
echo "export GOPATH=/home/vagrant/workspace" >> /home/vagrant/.bash_profile

source /home/vagrant/.bash_profile

chown -R vagrant /home/vagrant/workspace
