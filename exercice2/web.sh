#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemsctl enable httpd
wget https://www.tooplate.com/download/2136_kool_form_pack
unzip -o 2136_kool_form_pack.zip
cp -r 2136_kool_form_pack/* /var/www/html/
systemctl stop httpd
systemctl start httpd