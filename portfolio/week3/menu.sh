#!/bin/bash
echo "Enter Your Choice : "
echo "1.Create a folder"
echo "2.List files in the folder"
echo "3.copy a folder"
echo "4.save a password"
echo "5.read a password"
echo "6.print newset file"
read choice
echo "Enter Choice Number : "
if [ $choice == 1 ]; then
/home/student/CSI6203/portfolio/week3/foldermaker.sh
elif [ $choice == 2 ]; then
/home/student/CSI6203/portfolio/week3/listfolder.sh
elif [ $choice == 3 ]; then
/home/student/CSI6203/portfolio/week3/foldercopier.sh
elif [ $choice == 4 ]; then
/home/student/CSI6203/portfolio/week3/password.sh
elif [ $choice == 5 ]; then
/home/student/CSI6203/portfolio/week3/secret.sh
elif [ $choice == 6 ]; then
/home/student/CSI6203/portfolio/week3/input.sh
else
   echo "Invalid Choice"
fi