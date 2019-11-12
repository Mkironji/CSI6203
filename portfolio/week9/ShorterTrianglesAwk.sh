#!/bin/bash
Log=/home/student/CSI6203/portfolio/week6/triangles.log
Scriptlocation=/home/student/CSI6203/portfolio/week6

$Scriptlocation/triangles.sh >> /dev/null

Base=$(cat $Log | awk '{print $6}')
Height=$(cat $Log | awk '{print $8}')
Area=$(cat $Log | awk '{print $9}' | sed 's/is/Area/')

pr -3 -t << eof
$Base
$Height
$Area
eof

Total=$(cat $Log  | cut -d ":" -f4 |awk '{ SUM += $1} END { print SUM }')
echo "Total Area:$Total"