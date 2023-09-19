#!/usr/bin/bash

sudo systemctl stop startup.service
sudo systemctl disable startup.service
sudo systemctl daemon-reload

sudo rm -f /usr/sbin/cripto_service.py
sudo rm -f /lib/systemd/system/startup.service

sudo cp -f cripto_service.py /usr/sbin/
sudo cp -f startup.service /lib/systemd/system/

sudo chmod +x /usr/sbin/cripto_service.py

systemctl enable startup.service
sudo systemctl daemon-reload
systemctl restart startup.service