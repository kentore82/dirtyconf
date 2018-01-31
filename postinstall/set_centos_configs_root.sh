#!/bin/bash

# Deploy usefull linux configs
B1='set bell-style none'
B2='"\e[B": history-search-forward'
B3='"\e[A": history-search-backward'

echo $B1 >> /root/.inputrc
echo $B2 >> /root/.inputrc
echo $B3 >> /root/.inputrc

# User specific aliases and functions
BASHINIT="PS1='"
BASHINIT+='''${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$'''
BASHINIT+="'"
SUDOAUTO+="complete -cf sudo"

sudo -u $USER echo $BASHINIT >> /home/$USER/.bashrc
sudo -u $USER echo $SUDOAUTO >> /home/$USER/.bashrc
echo $BASHINIT >> /root/.bashrc
source /root/.bashrc
source /root/.inputrc
