#/bin/bash
Log=/home/student/CSI6203/portfolio/week8/Shorttriangle.log
Scriptlocation=/home/student/CSI6203/portfolio/week7

rm -rf $Scriptlocation/Shorttriangle.Log

sh $Scriptlocation/Shortertriangles.sh >> $Log
cat $Log | grep -E '[0-9]{2}$'