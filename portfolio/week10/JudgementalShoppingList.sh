#!/bin/bash
> file
/bin/cp /home/student/CSI6203/portfolio/week9/shopping.csv /home/student/CSI6203/portfolio/week10/data
/bin/cp /home/student/CSI6203/portfolio/week10/tabletotalcomment.sh_bak /home/student/CSI6203/portfolio/week10/tabletotalcomment.sh
sed -i 's/,/ /g'  /home/student/CSI6203/portfolio/week10/data
#sed -i 's,$, ,g' /home/student/CSI6203/portfolio/week10/data
cat /home/student/CSI6203/portfolio/week10/data | cut -d ' ' -f1 >> file
for spec in $(cat file)
do
test=$(cat /home/student/CSI6203/portfolio/week10/data | grep $spec)
Quant=$(cat /home/student/CSI6203/portfolio/week10/data | grep $spec | cut -d ' ' -f2) 
last=$(cat /home/student/CSI6203/portfolio/week10/data | grep $spec | awk '{ print $NF }')
total=$(expr $Quant*$last| bc)
echo $test > out
sed -i "s,$last,'$"$last"',g" out
sed -i 's,$, ,g' out
sed -i "s,$,'$"$total"',g" out
sed -i 's,$, ,g' out
test=$(cat out | grep $spec)
Quant=$(echo $Quant |  cut -d '.' -f1 | grep -E ^\-?[0-9]*\.?[0-9]+$ )
last=$(echo $last |  cut -d '.' -f1 | grep -E ^\-?[0-9]*\.?[0-9]+$ )
total=$(echo $total | cut -d '.' -f1 | grep -E ^\-?[0-9]*\.?[0-9]+$ )
if [[ $Quant -gt 5 ]];then
    Comment=$(echo "'Do you really need that many?'")
     sed -i s,$,"$Comment",g out
else
if [[ $total -gt 5 ]];then
    Comment=$(echo "'That is a bit Expensive! Are you sure?'")
    sed -i s,$,"$Comment",g out
else
if [[ $total -lt 3 ]];then
    Comment=$(echo "'Such a cheapstake!'")
    sed -i s,$,"$Comment",g out
else
    echo "Nothing to do" >> /dev/null
    Comment=$(echo "'Good Purchase'")
    sed -i s,$,"$Comment",g out
fi
fi
fi
final=$(cat out)
echo $final '\' >> /home/student/CSI6203/portfolio/week10/tabletotalcomment.sh
done

sh /home/student/CSI6203/portfolio/week10/tabletotalcomment.sh