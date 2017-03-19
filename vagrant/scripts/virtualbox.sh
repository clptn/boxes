#!/bin/sh -eux

yum install -y gcc make perl bzip2 kernel-devel

mkdir -p /tmp/vbox;
mount -o loop $HOME_DIR/VBoxGuestAdditions.iso /tmp/vbox;
sh /tmp/vbox/VBoxLinuxAdditions.run --nox11;

umount /tmp/vbox;
rm -rf /tmp/vbox;
rm -f $HOME_DIR/*.iso;