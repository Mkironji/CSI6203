#!/bin/bash
#prompt user to enter the name of folder.
read -p "type the name of the folder you would like to create:" folderName
#create the folder.
mkdir "$folderName"