#!/bin/bash
#get info about networking from the ifconfig command
net_add= sh /home/mkironji/CSI6203/Portfolio/week7/Ipinfo.sh
#parse out the ip address lines using sed
Addaddresses=$(echo "$net_add" | sed '7,8d' Ipinfo.sh)
#format output
echo -e "IP addresses on this computer are:\n$Addaddresses