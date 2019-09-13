#!/bin/bash
read -p "type the name of the folder you would like:" folderName   #line prompts for the input of then Folder name
read -p "type in a secret Password:" Password  # line prompts for an entry of the Password 
echo "$Password" > secret.txt  #line passes the output to a text file