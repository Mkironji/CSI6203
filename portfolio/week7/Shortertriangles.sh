#!/bin/bash
Log=/home/student/CSI6203/portfolio/week6/triangles.log
Scriptlocation=/home/student/CSI6203/portfolio/week6

$Scriptlocation/triangles.sh >> /dev/null

Base=$(cat $Log | sed -e 's/.*with\(.*\)and.*/\1/')
Height=$(cat $Log| sed -e 's/.*and\(.*\)is.*/\1/')
Area=$(cat $Log | sed -e 's/.*is\(.*\).*/Area\1/')

pr -3 -t << eof
$Base
$Height
$Area
eof