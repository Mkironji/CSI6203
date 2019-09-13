#!/bin/bash
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null && [ $? -gt 0 ]; then
    exit 1
fi
while true
do
    read -p "please type a website URL to download or type exit to quit: " URL
    if [[ $URL == "exit" ]]
    then
        exit 1
    fi
    wget -m $URL
done