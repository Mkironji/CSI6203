#!/bin/bash
Download()
{
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null && [ $? -gt 0 ]; then
    exit 1
fi
while true
do
    read -p "specify where to safe the file:" file
    read -p "please type a website URL to download or type exit to quit: " URL
    if [[ $URL == "exit" ]]
    then
        exit 1
    fi
    wget -o $file $URL
done
}
Download