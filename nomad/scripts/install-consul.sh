#!/bin/sh -eux

curl -o consul.zip https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_linux_amd64.zip
sudo unzip consul.zip -d /usr/bin
sudo mv consul.service /lib/systemd/system/
sudo mkdir /etc/consul
sudo mv consul.json /etc/consul/
sudo systemctl enable consul