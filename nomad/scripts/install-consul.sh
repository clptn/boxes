#!/bin/sh -eux

curl -o consul.zip https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_linux_amd64.zip
unzip consul.zip -d /usr/bin
mv consul.service /lib/systemd/system/
mkdir /etc/consul
mv consul.json /etc/consul/
systemctl enable consul
rm consul.zip