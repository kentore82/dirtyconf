#!/bin/bash
update-locale LANGUAGE=en_US.UTF-8
update-locale	LC_ALL=en_US.UTF-8

echo "deb http://archive.canonical.com/ubuntu xenial partner" >> /etc/apt/sources.list
echo "deb-src http://archive.canonical.com/ubuntu xenial partner" >> /etc/apt/sources.list
apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y python-minimal
apt install -y python-setuptools python-pip
