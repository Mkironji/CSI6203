#!/bin/bash
file=$(pwd)

echo "Displaying Sed Statements"
grep -r sed $file

echo "Displaying Lines starting with m"
grep -r ^m $file

echo "Displaying Lines containing 3 digits"
grep -rE '[0-9]{3}$' $file

echo "Displaying Lines starting with vowel"
egrep -r "^a|^e|^i|^o|^u" $file

echo "Displaying Lines that contain loops"
egrep -r "loop|for|if" $file