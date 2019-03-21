#!/bin/bash

echo "remap the device serial port(ttyUSBX) to  communication"
echo "serial usb connection as /dev/communication , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy usb.rules to  /etc/udev/rules.d/"
echo "`rospack find rplidar_ros`/scripts/usb.rules"
sudo cp `rospack find rplidar_ros`/scripts/usb.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
