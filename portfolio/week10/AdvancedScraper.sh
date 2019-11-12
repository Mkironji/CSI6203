#!/bin/bash
Location=/home/student/CSI6203/portfolio/week10
> $Location/file.html
> $Location/TopicsWithBlank
> $Location/Topics
> $Location/Disciplines
> $Location/ScienceDisciplines

cd $Location
wget http://www.ecu.edu.au/degrees/study-areas/science --quiet -o $Location/file.html

cat $Location/science | grep study-areas | grep -w science | grep href >> $Location/TopicsWithBlank

cat $Location/TopicsWithBlank | grep https://www.ecu.edu.au/degrees/study-areas/science | awk '{print $2}' | cut -d "/" -f7 | cut -d '"' -f1 >> $Location/Topics

sed '/^[[:space:]]*$/d' $Location/Topics >> $Location/Disciplines

for host in $(cat $Location/Disciplines);
do
Present=$(cat $Location/ScienceDisciplines | grep -i $host | wc -l)
if [[ $Present -ge 1 ]];then
echo $host >> /dev/null
else
echo $host >> $Location/ScienceDisciplines
fi
done

echo "Disciplines in School of Science are as follows:"
cat $Location/ScienceDisciplines