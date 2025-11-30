#!/bin/bash
apt update;
apt install -y git;
apt -y upgrade;
locale-gen de_DE.UTF-8
locale-gen de_DE
update-locale LANG=de_DE.UTF-8
dpkg-reconfigure locales
