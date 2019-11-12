#!/bin/bash
> file
/bin/cp /home/student/CSI6203/portfolio/week9/shopping.csv data
/bin/cp tabletotal.sh_bak tabletotal.sh
sed -i 's/,/ /g' data
#sed -i 's,$, ,g' data
cat data | cut -d ' ' -f1 >> file
for spec in $(cat file)
do
test=$(cat data | grep $spec)
Quant=$(cat data | grep $spec | cut -d ' ' -f2) 
last=$(cat data | grep $spec | awk '{ print $NF }')
total=$(expr $Quant*$last| bc)
echo $test > out
sed -i "s,$last,'$"$last"',g" out
sed -i 's,$, ,g' out
sed -i "s,$,'$"$total"',g" out
sed -i 's,$, ,g' out
test=$(cat out | grep $spec)
echo $test '\' >> tabletotal.sh
done

sh tabletotal.sh