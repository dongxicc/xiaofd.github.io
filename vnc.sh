#!/bin/bash
apt-get update && apt-get install -y sudo
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get update
sudo apt-get install -y wget xorg lxde-core tightvncserver flashplugin-installer

mkdir -p ~/.vnc
wget xiaofd.github.io/others/passwd -P ~/.vnc/
chmod 0400 ~/.vnc/passwd
wget xiaofd.github.io/others/xstartup -P ~/.vnc/
chmod +x ~/.vnc/xstartup

export USER=~
tightvncserver :1
