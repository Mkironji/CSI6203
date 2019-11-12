#!/bin/bash
read -p "Type the URL of a file to download:" URL
read -p "Type the location of where you would like to download the file to:" Location

cd $Location
wget $URL

Title=$(cat $Location/index.html | grep -i '<title>' | sed -e 's,.*>\(.*\)<.*,\1,')

echo "Title of the Web page is $Title"