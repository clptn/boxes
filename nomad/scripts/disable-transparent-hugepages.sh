#!/bin/sh -eux

mv disable-transparent-hugepages /etc/init.d/
chmod 755 /etc/init.d/disable-transparent-hugepages
chkconfig --add disable-transparent-hugepages
mkdir /etc/tuned/no-thp/
mv tuned.conf /etc/tuned/no-thp/
tuned-adm profile no-thp