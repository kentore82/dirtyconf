#!/bin/bash
USER=deployer

useradd $USER
mkdir /home/$USER
mkdir /home/$USER/.ssh
chmod 700 /home/$USER/.ssh
touch /home/$USER/.ssh/authorized_keys

# put public key
PUBKEY=""

echo $PUBKEY > /home/$USER/.ssh/authorized_keys
chmod 600 /home/$USER/.ssh/authorized_keys

chown $USER:$USER /home/$USER -R

# make sudo
usermod -aG sudo $USER
