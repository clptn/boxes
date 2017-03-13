#!/bin/sh -eux

curl -o nomad.zip https://releases.hashicorp.com/nomad/0.5.2/nomad_0.5.2_linux_amd64.zip
sudo unzip nomad.zip -d /usr/bin
sudo mv nomad.service /lib/systemd/system/
sudo mkdir /etc/nomad
sudo mv nomad.conf /etc/nomad/
sudo systemctl enable nomad