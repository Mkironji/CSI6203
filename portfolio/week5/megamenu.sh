#!/bin/bash
echo "1.Create a folder"
echo "2.List files in the folder"
echo "3.copy a folder"
echo "4.save a password"
echo "5.read a password"
echo "6.print newset file"
echo "7.The Calculator"
echo "8.the Loop"
echo "9.Read file line by line"
echo "10.Ping google and download website"
echo "Enter Choice Number : "
read choice
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
/home/student/CSI6203/portfolio/week3/input2.sh
elif [ $choice == 7 ]; then
/home/student/CSI6203/portfolio/week4/Calc.sh
elif [ $choice == 8 ]; then
/home/student/CSI6203/portfolio/week5/loop.sh
elif [ $choice == 9 ]; then
/home/student/CSI6203/portfolio/week5/filenames.sh
elif [ $choice == 10 ]; then
/home/student/CSI6203/portfolio/week5/downloader.sh
else
   echo "Invalid ChoiceMain"
fi