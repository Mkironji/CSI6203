#!/bin/bash
read -p "Type the name of  folde your would like to copy:" folderName
#if the name is a valid dicrectory
if [ -d "$folderName" ]; then
    #copy it to new location
    read -p "enter name of the new folder:" newFolderName
    cp -r "$folderName" "$newFolderName"
else 
#otherwise print an error
echo "Error!! No foulder found"
fi