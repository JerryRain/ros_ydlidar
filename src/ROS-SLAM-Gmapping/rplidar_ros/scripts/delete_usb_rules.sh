#!/bin/bash

echo "delete remap the device serial port(ttyUSBX) to  communication"
echo "sudo rm   /etc/udev/rules.d/usb.rules"
sudo rm   /etc/udev/rules.d/usb.rules
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish  delete"
