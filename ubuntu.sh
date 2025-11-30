#!/bin/bash
apt update;
apt upgrade -y;
apt install git -y;
apt install default-jre -y;
apt install hunspell hunspell-de-de -y; 
apt install libreoffice libreoffice-l10n-de libreoffice-help-de -y; 
apt install libreoffice-impress libreoffice-draw libreoffice-base -y;


apt install dnsmasq -y;
systemctl disable systemd-resolved;
systemctl stop systemd-resolved;
systemctl enable dnsmasq;
systemctl start dnsmasq;


#I found that I had to edit the file /etc/default/dnsmasq and uncomment the following lines:
#IGNORE_RESOLVCONF=yes
#DNSMASQ_EXCEPT="lo"


#locale-gen de_DE.UTF-8
#locale-gen de_DE
#update-locale LANG=de_DE.UTF-8
#dpkg-reconfigure locales
