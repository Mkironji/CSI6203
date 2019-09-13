#!/bin/bash
export GREEN='\033[0;32m'
export RED='\033[0;31m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
​echo "Enter Your Choise : "
echo "1.Addition"
echo "2.Substtaction"
echo "3.Multiplication"
echo "4.Division"
read opr
echo "Enter first Number : "
read n1
echo "Enter second Number : "
read n2
if [ $opr == 1 ]; then
 echo -e $BLUE "expr ans=$((n1+n2))"
elif [ $opr == 2 ]; then
 echo -e $GREEN "expr ans=$((n1-n2))"
elif [ $opr == 3 ]; then
 echo -e $RED "expr ans=$((n1*n2))"
elif [ $opr == 4 ]; then
 echo -e $PURPLE "expr ans=$((n1/n2))"
else
   echo "Invalid Choice"
fi