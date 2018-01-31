#!/bin/bash
echo "deb http://archive.canonical.com/ubuntu xenial partner" >> /etc/apt/sources.list
echo "deb-src http://archive.canonical.com/ubuntu xenial partner" >> /etc/apt/sources.list
apt-get update
apt-get upgrade -y
apt-get install -y python-minimal
