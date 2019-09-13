#!/bin/bash
for filename in /home/mkironji/CSI6203/Portfolio/week3/secret.txt #file name/path to be checked
do
  echo "${filename##*/} exist" #output after checking if file exist
done;