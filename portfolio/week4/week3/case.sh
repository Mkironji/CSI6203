#!/bin/bash
case $1 in
    "1")
        echo "Create a folder"
        sh /home/student/CSI6203/portfolio/week3/foldermaker.sh ;;
    "2")
        echo "List files in the folder"
        sh /home/student/CSI6203/portfolio/week3/listfolder.sh ;; 
    "3")
        echo "copy a folder"
        sh /home/student/CSI6203/portfolio/week3/foldercopier.sh ;;
    "4")
        echo "save a password"
        sh /home/student/CSI6203/portfolio/week3/password.sh ;;
    "5")
        echo "Read a password"
        sh /home/student/CSI6203/portfolio/week3/secret.sh ;;
    "6")
        echo "Print newest file"
        sh /home/student/CSI6203/portfolio/week3/input.sh ;;
    
esac