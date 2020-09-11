#!/bin/bash

sudo apt update
sudo apt -y install sysstat

sudo curl --output /opt/telegraf.tar.gz https://dl.influxdata.com/telegraf/nightlies/telegraf-nightly_linux_amd64.tar.gz

cd /opt
sudo tar -zxvf telegraf.tar.gz
sudo mv /opt/telegraf-* /opt/telegraf

sudo mkdir /etc/telegraf
sudo mv ~/mint-bootcamp/telegraf.conf /etc/telegraf/
