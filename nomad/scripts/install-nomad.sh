#!/bin/sh -eux

curl -o nomad.zip https://releases.hashicorp.com/nomad/0.5.5/nomad_0.5.5_linux_amd64.zip
unzip nomad.zip -d /usr/bin
mv nomad.service /lib/systemd/system/
mkdir /etc/nomad
mv nomad.conf /etc/nomad/
systemctl enable nomad
rm nomad.zip