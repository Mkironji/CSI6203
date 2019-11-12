#!/bin/bash
home=/student/CSI6203/portfolio/week6/triangles
Log=/home/student/CSI6203/portfolio/week6/triangles.log
date=$(date '+%d:%m:%Y_%H:%M:%S')
backup=/home/student/CSI6203/portfolio/week6/backup

#mkdir $backup
mv $Log $backup/triangles.log_"$date" 
base=1
while [ $base -le 5 ]
do
  height=1
  while [ $height -le 5 ]
  do
	Multiply=$(( $base * $height ))
	Area=$(expr $Multiply / 2)
	echo "The Area of Triangle with Base:$base and Height:$height is :$Area"
	echo "The Area of Triangle with Base:$base and Height:$height is:$Area" >> $Log
  height=`expr $height + 1`
  done
  base=`expr $base + 1`
done