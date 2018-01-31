#!/bin/bash
#Add internet gateway
route add default gw 10.180.37.169;

yum install -y epel-release;
yum -y update;
yum install -y wget python-pip net-tools

mkdir /tmp/python2.7.12;
cd /tmp/python2.7.12;
wget https://big.sherpaconsulting.no/downloads/python-2.7.12-centos7-x86_64.tar.gz;
tar -xvf python-2.7.12-centos7-x86_64.tar.gz;
yum localinstall -y --nogpgcheck python-libs-2.7.12-8.el7.centos.x86_64.rpm python-2.7.12-8.el7.centos.x86_64.rpm python-devel-2.7.12-8.el7.centos.x86_64.rpm tkinter-2.7.12-8.el7.centos.x86_64.rpm python-tools-2.7.12-8.el7.centos.x86_64.rpm;
cd /;
rm -rf /tmp/python2.7.12;

