#!/bin/bash

sudo apt update
sudo apt -y install sysstat

curl --output /opt/telegraf.tar.gz https://dl.influxdata.com/telegraf/nightlies/telegraf-nightly_linux_amd64.tar.gz

cd /opt
tar -zxvf telegraf.tar.gz