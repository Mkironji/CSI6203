#!/bin/bash

date=$(date)
CurMonth=$(echo $date | cut -d " " -f2)

> file
> data
> out

cp /var/log/auth.log file
cat file | awk '{print $1,$2}' |  tr -d ' ' >> data

for date in $(cat data);
do
Num=$(echo "$date" | tr -dc '0-9' )
Month=$(echo "$date" | tr -dc 'a-zA-Z')
cat file | grep -i "$Month  $Num" >> out
Total=$(cat out | wc -l)
Count=1
while [ $Count -le $Total ]
do
Date=$(cat out | awk "NR=="$Count"{print}" | awk '{print $1,$2}')
Time=$(cat out | awk "NR==$Count{print}" | awk '{print $3}')
Source=$(cat out | awk "NR==$Count{print}" | awk '{print $5}')
Message=$(cat out | awk "NR==$Count{print}" | awk '{$1=$2=$3=$4=$5=""; print $0}' )
sed -i "/$date/d" data
root=$(echo $Message | grep root | wc -l)
if [[ $Month == $CurMonth ]] && [[ $root -ge 1 ]];then
echo "$Date - $Time:"
echo "$Source"
echo "$Message"
else
echo "No logs to display"
fi
Count=`expr $count + 1`
done
done